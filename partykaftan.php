<?php
include("admin/config/connection.php");

// Fetch products from the database
$query = "SELECT image1,image2,name,price FROM partykaftan";
$res = mysqli_query($conn, $query);
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Anarkali</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>

<body>
    <!-- section header  Start  -->
    <div class="container-fluid outer">
        <?php
        include("header.php")
        ?>
    </div>
    <!-- section  header End  -->

    <!-- section 1 Start  -->
    <div class="container-fluid backimage" style=" background-image: url(images/partykaftan.jpg);">
        <div class="overlay"></div> <!-- Increased overlay opacity -->
        <div class="text"> <!-- Changed text color to yellow -->
            <h1> <b>KAFTAN</b> </h1> <!-- Increased font size -->
        </div>
    </div>
    <!-- section 1 End  -->

    <div class="container-fluid">
        <div class="row section3 py-5 px-2" style="padding-bottom:15px;">
            <?php
            // Step 3: Loop through the fetched data and display each product
            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {
                    $image1 = $row['image1']; // Main image
                    $image2 = $row['image2']; // Hover image
                    $name = $row['name'];
                    $price = $row['price'];

                    // Display each product in the HTML structure
                    echo '<div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in py-4">';
                    echo '<img src="admin/images/' . $image1 . '" class="img-fluid hover-image fixed-height" data-hover="admin/images/' . $image2 . '" alt="' . $name . '">';
                    echo '<h6 class="mt-3 product-name">' . $name . '</h6>';
                    echo '<span class="mt-0 px-2 product-price">Rs. ' . $price . '</span>';
                    echo '</div>';
                }
            } else {
                echo "No products found!";
            }
            ?>
        </div>
    </div>

    <!-- section 2 Start  -->
    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan11.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan12.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan21.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan22.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan31.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan32.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in ">
                <img src="images/partykaftan41.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/partykaftan42.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-5</h6>
                <span class="mt-0 product-price">Rs. 34,000.00</span>
            </div>
        </div>
    </div>
    <!-- section 2 End   -->

    <!-- section 3 Start  -->
    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan51.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan52.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan61.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan62.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan71.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan72.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/partykaftan81.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/partykaftan82.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-5</h6>
                <span class="mt-0 product-price">Rs. 34,000.00</span>
            </div>
        </div>
    </div>
    <!-- section 3 End   -->

    <!-- section 4 Start  -->
    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan91.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan92.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan101.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan102.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan111.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan112.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/partykaftan121.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/partykaftan122.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-5</h6>
                <span class="mt-0 product-price">Rs. 34,000.00</span>
            </div>
        </div>
    </div>
    <!-- section 4 End   -->

    <!-- section 5 Start  -->
    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan131.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan132.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan141.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan142.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan151.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan152.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/partykaftan161.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/partykaftan162.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-5</h6>
                <span class="mt-0 product-price">Rs. 34,000.00</span>
            </div>
        </div>
    </div>
    <!-- section 5 End   -->

    <!-- section 6 Start  -->
    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan171.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan172.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan181.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan182.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/partykaftan191.jpg" class="img-fluid hover-image fixed-height" data-hover="images/partykaftan192.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/partykaftan201.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/partykaftan202.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-5</h6>
                <span class="mt-0 product-price">Rs. 34,000.00</span>
            </div>
        </div>
    </div>
    <!-- section 6 End   -->

    <!-- footer Start   -->
    <?php
    include("footer.php")
    ?>
    <!-- footer End  -->


    <!-- Link to the external script.js -->
    <script src="js/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>