<?php
// page.php
// --------------------------------------------------------
// This file displays the product details page. It fetches product
// information from the database based on the category and product ID
// passed via the URL. It also includes the "Add to Cart" form which
// submits data to add_to_cart.php.
// --------------------------------------------------------

// Include the database connection
include("admin/config/connection.php");

// Get the category and product ID from the URL
$category = isset($_GET['category']) ? $_GET['category'] : null;
$product_id = isset($_GET['id']) ? $_GET['id'] : null;

// Validate that both category and product ID are set
if ($category && $product_id) {
    // Sanitize category to prevent SQL injection
    $category = mysqli_real_escape_string($conn, $category);

    // Query to fetch the product details
    $query = "SELECT image1, image2, image3, `name`, price, `desc`, shipping FROM $category WHERE sno = '$product_id'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $image1 = $row['image1'];        // Main image
        $image2 = $row['image2'];        // Second image
        $image3 = $row['image3'];        // Third image
        $name = $row['name'];            // Product name
        $price = $row['price'];          // Product price
        $description = $row['desc'];     // Product description
        $shipping = $row['shipping'];    // Shipping details
    } else {
        echo "Product not found!";
        exit;
    }
} else {
    echo "Invalid category or product ID!";
    exit;
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $name; ?></title>
    <!-- Bootstrap CSS and other stylesheets -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="page.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <!-- Header Section -->
    <div class="container-fluid outer">
        <?php include("header.php"); ?>
    </div>

    <!-- Product Details Section -->
    <div class="container-fluid" style="background-color: #f7f7f7;">
        <div class="row">
            <!-- Product Images -->
            <div class="col-md-6 col-12 px-5 py-5">
                <img id="mainImage" src="admin/images/<?php echo $image1; ?>" class="img-fluid size" alt="Product Image">
                <div class="row mt-3">
                    <div class="col-4 col-md-3 text-center">
                        <img src="admin/images/<?php echo $image1; ?>" class="img-fluid thumbnail" alt=""
                            onclick="changeImage('admin/images/<?php echo $image1; ?>')">
                    </div>
                    <div class="col-4 col-md-3 text-center">
                        <img src="admin/images/<?php echo $image2; ?>" class="img-fluid thumbnail" alt=""
                            onclick="changeImage('admin/images/<?php echo $image2; ?>')">
                    </div>
                    <div class="col-4 col-md-3 text-center">
                        <img src="admin/images/<?php echo $image3; ?>" class="img-fluid thumbnail" alt=""
                            onclick="changeImage('admin/images/<?php echo $image3; ?>')">
                    </div>
                </div>
            </div>
            <!-- Product Details and Add-to-Cart Form -->
            <div class="col-md-6 col-12">
                <h2 style="padding-top: 8rem;"><?php echo $name; ?></h2>
                <p style="padding-top: 1rem; margin-bottom: 0; color:#444444;">Rs. <?php echo $price; ?></p>
                <small style="color: #444444;">Shipping calculated at checkout.</small>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">
                <div class="d-flex justify-content-center flex-wrap" style="padding-top: 1rem;">
                    <p style="padding-right: 3rem;">size</p>
                    <!-- Size selection buttons -->
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">S</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">M</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">L</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">XL</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">XXL</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">XXXL</button>
                    <!-- Custom size button -->
                    <button id="customSizeBtn" class="btn btn-light btn-large mx-2 border-black" style="width: 100px;">Custom</button>
                </div>
                <!-- Custom Size Input (hidden by default) -->
                <div id="customSizeInput" style="display: none; margin-top: 1rem; text-align: center;">
                    <input type="text" class="form-control custom-input-border" placeholder="Enter your custom size"
                        style="width: 650px; margin: 0 auto; margin-top: 2rem;">
                </div>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">
                <p class="size-chart">Size Chart</p>
                <!-- Size Chart Popup -->
                <div class="overlay" id="overlay"></div>
                <div class="popup" id="sizeChartPopup">
                    <h3>Size Chart for Women</h3>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Size</th>
                                <th>Chest (inches)</th>
                                <th>Waist (inches)</th>
                                <th>Hips (inches)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>S</td>
                                <td>34-35</td>
                                <td>26-27</td>
                                <td>36-37</td>
                            </tr>
                            <tr>
                                <td>M</td>
                                <td>36-37</td>
                                <td>28-29</td>
                                <td>38-39</td>
                            </tr>
                            <tr>
                                <td>L</td>
                                <td>38-40</td>
                                <td>30-32</td>
                                <td>40-42</td>
                            </tr>
                            <tr>
                                <td>XL</td>
                                <td>41-43</td>
                                <td>33-35</td>
                                <td>43-45</td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-secondary" id="closePopup">Close</button>
                </div>

                <!-- Add-to-Cart Form -->
                <!-- This form submits the product details to add_to_cart.php -->
                <form action="add_to_cart.php" method="post">
                    <!-- Hidden inputs passing product details -->
                    <!-- Use $product_id (from the URL) as the product ID -->
                    <input type="hidden" name="prod_id" value="<?php echo $product_id; ?>">
                    <input type="hidden" name="prod_name" value="<?php echo $name; ?>">
                    <input type="hidden" name="prod_price" value="<?php echo $price; ?>">
                    <!-- Hidden quantity field (updated by JavaScript) -->
                    <input type="hidden" name="quantity" id="quantity" value="1">

                    <!-- Quantity counter and Add-to-Cart button -->
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

                <button class="buy" style="border:none; width: 650px; background-color: #999; color: white; padding: 5px; text-align: center; margin-bottom: 50px;">
                    <p style="margin:8px 0">Buy it now</p>
                </button>
                <div class="container mt-5">
                    <div>
                        <span class="tab active" id="descriptionTab">Description</span>
                        <span class="tab" id="shippingTab">Shipping</span>
                    </div>
                    <div class="content active" id="descriptionContent">
                        <p><?php echo $description; ?></p>
                    </div>
                    <div class="content" id="shippingContent">
                        <p><?php echo $shipping; ?></p>
                    </div>
                </div>
                <br>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <?php include("footer.php"); ?>

    <!-- JavaScript Section -->
    <script>
        // Quantity counter functionality for the Add-to-Cart form
        document.addEventListener("DOMContentLoaded", function() {
            const decrementBtn = document.getElementById('decrement1');
            const incrementBtn = document.getElementById('increment1');
            const counterElem = document.getElementById('counter1');
            const quantityElem = document.getElementById('quantity');

            if (decrementBtn && incrementBtn && counterElem && quantityElem) {
                decrementBtn.addEventListener('click', function() {
                    let count = parseInt(counterElem.innerText);
                    if (count > 1) {
                        count--;
                        counterElem.innerText = count;
                        quantityElem.value = count;
                    }
                });

                incrementBtn.addEventListener('click', function() {
                    let count = parseInt(counterElem.innerText);
                    count++;
                    counterElem.innerText = count;
                    quantityElem.value = count;
                });
            }
        });

        // Function to change the main product image when a thumbnail is clicked
        function changeImage(imageSrc) {
            document.getElementById('mainImage').src = imageSrc;
        }

        // jQuery to highlight the selected size button
        $(document).ready(function() {
            $('.btn-light').click(function() {
                $('.btn-light').removeClass('clicked'); // Remove clicked class from all buttons
                $(this).addClass('clicked'); // Add clicked class to the clicked button
            });
        });

        // Toggle the custom size input box display
        document.getElementById('customSizeBtn').addEventListener('click', function() {
            var customSizeInput = document.getElementById('customSizeInput');
            customSizeInput.style.display = (customSizeInput.style.display === 'none') ? 'block' : 'none';
        });

        // Popup functionality for the Size Chart
        const sizeChart = document.querySelector('.size-chart');
        const sizeChartPopup = document.getElementById('sizeChartPopup');
        const overlay = document.getElementById('overlay');

        sizeChart.addEventListener('click', function() {
            sizeChartPopup.style.display = 'block';
            overlay.style.display = 'block';
        });

        // Close popup on right-click (prevent default context menu)
        document.addEventListener('contextmenu', function(event) {
            event.preventDefault();
            sizeChartPopup.style.display = 'none';
            overlay.style.display = 'none';
        });

        // Close popup when clicking the close button
        document.getElementById('closePopup').addEventListener('click', function() {
            sizeChartPopup.style.display = 'none';
            overlay.style.display = 'none';
        });

        // Toggle between Description and Shipping tabs
        const descriptionTab = document.getElementById('descriptionTab');
        const shippingTab = document.getElementById('shippingTab');
        const descriptionContent = document.getElementById('descriptionContent');
        const shippingContent = document.getElementById('shippingContent');

        descriptionTab.addEventListener('click', function() {
            descriptionTab.classList.add('active');
            shippingTab.classList.remove('active');
            descriptionContent.classList.add('active');
            shippingContent.classList.remove('active');
        });

        shippingTab.addEventListener('click', function() {
            shippingTab.classList.add('active');
            descriptionTab.classList.remove('active');
            shippingContent.classList.add('active');
            descriptionContent.classList.remove('active');
        });
    </script>

    <!-- Bootstrap JS and other scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="page.js"></script>
    <script src="js/script.js"></script>
</body>

</html>