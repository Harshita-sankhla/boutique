<?php
session_start();
include("admin/config/connection.php");

$category = isset($_GET['category']) ? $_GET['category'] : null;
$product_id = isset($_GET['id']) ? $_GET['id'] : null;

if ($category && $product_id) {
    $category = mysqli_real_escape_string($conn, $category);
    $query = "SELECT image1, image2, image3, `name`, price, `desc`, shipping FROM $category WHERE sno = '$product_id'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $image1 = $row['image1'];
        $image2 = $row['image2'];
        $image3 = $row['image3'];
        $name = $row['name'];
        $price = $row['price'];
        $description = $row['desc'];
        $shipping = $row['shipping'];
    } else {
        echo "Product not found!";
        exit;
    }
} else {
    echo "Invalid category or product ID!";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $name; ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="page.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        .size-btn.selected {
            background-color: #444444 !important;
            color: white !important;
        }

        .alert {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
            display: none;
        }
    </style>
</head>

<body>
    <!-- Success Alert -->
    <div class="alert alert-success" role="alert" id="successAlert">
        Item added to cart successfully!
    </div>

    <div class="container-fluid outer">
        <?php include("header.php"); ?>
    </div>

    <div class="container-fluid" style="background-color: #f7f7f7;">
        <div class="row">
            <!-- Product Images -->
            <div class="col-md-6 col-12 px-5 pb-5">
                <img id="mainImage" src="admin/images/<?php echo $image1; ?>" class="img-fluid size" alt="Product Image">
                <div class="row mt-3">
                    <div class="col-4 col-md-3 text-center">
                        <img src="admin/images/<?php echo $image1; ?>" class="img-fluid thumbnail" alt="" onclick="changeImage('admin/images/<?php echo $image1; ?>')">
                    </div>
                    <div class="col-4 col-md-3 text-center">
                        <img src="admin/images/<?php echo $image2; ?>" class="img-fluid thumbnail" alt="" onclick="changeImage('admin/images/<?php echo $image2; ?>')">
                    </div>
                    <div class="col-4 col-md-3 text-center">
                        <img src="admin/images/<?php echo $image3; ?>" class="img-fluid thumbnail" alt="" onclick="changeImage('admin/images/<?php echo $image3; ?>')">
                    </div>
                </div>
            </div>

            <!-- Product Details -->
            <div class="col-md-6 col-12">
                <h2 style="padding-top: 8rem;"><?php echo $name; ?></h2>
                <p style="padding-top: 1rem; margin-bottom: 0; color:#444444;">Rs. <?php echo $price; ?></p>
                <small style="color: #444444;">Shipping calculated at checkout.</small>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">

                <form id="addToCartForm" action="add_to_cart.php" method="post">
                    <input type="hidden" name="prod_id" value="<?php echo $product_id; ?>">
                    <input type="hidden" name="prod_name" value="<?php echo $name; ?>">
                    <input type="hidden" name="prod_price" value="<?php echo $price; ?>">
                    <input type="hidden" name="prod_image" value="admin/images/<?php echo $image1; ?>">
                    <input type="hidden" name="quantity" id="quantity" value="1">
                    <input type="hidden" name="prod_size" id="selected_size" value="">

                    <!-- Size Selection -->
                    <div class="d-flex justify-content-center flex-wrap" style="padding-top: 1rem;">
                        <p style="padding-right: 3rem;">size</p>
                        <button type="button" class="btn btn-light btn-round mx-2 border-black custom-hover size-btn" data-size="S">S</button>
                        <button type="button" class="btn btn-light btn-round mx-2 border-black custom-hover size-btn" data-size="M">M</button>
                        <button type="button" class="btn btn-light btn-round mx-2 border-black custom-hover size-btn" data-size="L">L</button>
                        <button type="button" class="btn btn-light btn-round mx-2 border-black custom-hover size-btn" data-size="XL">XL</button>
                        <button type="button" class="btn btn-light btn-round mx-2 border-black custom-hover size-btn" data-size="XXL">XXL</button>
                        <button type="button" class="btn btn-light btn-round mx-2 border-black custom-hover size-btn" data-size="XXXL">XXXL</button>
                    </div>

                    <hr style="border: 1px solid #444444; margin: 1rem 0;">

                    <!-- Quantity and Add to Cart -->
                    <div class="d-flex flex-wrap">
                        <div class="counter-box">
                            <button type="button" id="decrement1">-</button>
                            <span id="counter1">1</span>
                            <button type="button" id="increment1">+</button>
                        </div>
                        <div class="counter-box" style="margin-left: 50px; width: 400px; padding-top:10px;">
                            <button type="submit" class="btn" style="width: 100%;">Add to Cart</button>
                        </div>
                    </div>
                </form>

                <!-- Buy Now Button -->
                <button type="button" onclick="handleBuyNow()" class="buy" style="border:none; width: 650px; background-color: #999; color: white; padding: 5px; text-align: center; margin-bottom: 50px;">
                    <p style="margin:8px 0">Buy it now</p>
                </button>

                <!-- Description and Shipping Tabs -->
                <div class="container mt-5">
                    <div>
                        <span class="tab active" id="descriptionTab">Description</span>
                        <span class="tab" id="shippingTab">Shipping</span>
                    </div>
                    <div class="content active" id="descriptionContent" style="font-size: 1rem;">
                        <p><?php echo $description; ?></p>
                    </div>
                    <div class="content" id="shippingContent" style="font-size: 1rem;">
                        <p><?php echo $shipping; ?></p>
                    </div>
                </div>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">
            </div>
        </div>
    </div>

    <?php include("footer.php"); ?>

    <script>
        // Handle size selection
        document.addEventListener('DOMContentLoaded', function() {
            const sizeButtons = document.querySelectorAll('.size-btn');

            sizeButtons.forEach(button => {
                button.addEventListener('click', function() {
                    // Remove selected class from all buttons
                    sizeButtons.forEach(btn => btn.classList.remove('selected'));
                    // Add selected class to clicked button
                    this.classList.add('selected');
                    // Update hidden size input
                    document.getElementById('selected_size').value = this.dataset.size;
                });
            });

            // Quantity counter functionality
            const decrementBtn = document.getElementById('decrement1');
            const incrementBtn = document.getElementById('increment1');
            const counterElem = document.getElementById('counter1');
            const quantityInput = document.getElementById('quantity');

            decrementBtn.addEventListener('click', function() {
                let count = parseInt(counterElem.innerText);
                if (count > 1) {
                    count--;
                    counterElem.innerText = count;
                    quantityInput.value = count;
                }
            });

            incrementBtn.addEventListener('click', function() {
                let count = parseInt(counterElem.innerText);
                count++;
                counterElem.innerText = count;
                quantityInput.value = count;
            });

            // Form validation
            document.getElementById('addToCartForm').addEventListener('submit', function(e) {
                if (!document.getElementById('selected_size').value) {
                    e.preventDefault();
                    alert('Please select a size before adding to cart');
                }
            });

            // Show success message if item was added
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.get('added') === '1') {
                const alert = document.getElementById('successAlert');
                alert.style.display = 'block';
                setTimeout(() => {
                    alert.style.display = 'none';
                }, 3000);
            }
        });

        // Image gallery functionality
        function changeImage(imageSrc) {
            document.getElementById('mainImage').src = imageSrc;
        }

        function showAlert(elementId) {
            const alert = document.getElementById(elementId);
            alert.style.display = 'block';
            setTimeout(() => {
                alert.style.display = 'none';
            }, 3000);
        }

        function handleBuyNow() {
            window.location.href = "buy_now.php";
        }
        //script for description and shipping
        // Get elements
        const descriptionTab = document.getElementById('descriptionTab');
        const shippingTab = document.getElementById('shippingTab');
        const descriptionContent = document.getElementById('descriptionContent');
        const shippingContent = document.getElementById('shippingContent');

        // Show description content on click
        descriptionTab.addEventListener('click', function() {
            descriptionTab.classList.add('active');
            shippingTab.classList.remove('active');
            descriptionContent.classList.add('active');
            shippingContent.classList.remove('active');
        });

        //show shipping content on click
        shippingTab.addEventListener('click', function() {
            shippingTab.classList.add('active');
            descriptionTab.classList.remove('active');
            shippingContent.classList.add('active');
            descriptionContent.classList.remove('active');
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>