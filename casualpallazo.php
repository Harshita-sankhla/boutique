<?php
include("admin/config/connection.php");

// Fetch products from the database
$query = "SELECT sno,image1,image2,name,price FROM casualpallazo";
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
    <div class="container-fluid backimage" style=" background-image: url(images/casualpallazos.jpg);">
        <div class="overlay"></div> <!-- Increased overlay opacity -->
        <div class="text"> <!-- Changed text color to yellow -->
            <h1> <b>PALLAZOS</b> </h1> <!-- Increased font size -->
        </div>
    </div>
    <!-- section 1 End  -->

    <div class="container-fluid">
        <div class="row section3 py-5 px-2" style="padding-bottom:15px;">
            <?php
            // Step 3: Loop through the fetched data and display each product
            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {
                    $sno = $row['sno']; // Product ID
                    $image1 = $row['image1']; // Main image
                    $image2 = $row['image2']; // Hover image
                    $name = $row['name'];
                    $price = $row['price'];

                    // Create a link to page.php with URL parameters
                    $product_link = "page.php?category=casualpallazo&id=" . urlencode($row['sno']) . "&image1=" . urlencode($row['image1']) . "&image2=" . urlencode($row['image2']) . "&name=" . urlencode($row['name']) . "&price=" . urlencode($row['price']);

                    // Display each product with the link
                    echo '<div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in py-4">';
                    echo '<a href="' . $product_link . '">'; // Link to page.php with product details
                    echo '<img src="admin/images/' . $image1 . '" class="img-fluid hover-image fixed-height" data-hover="admin/images/' . $image2 . '" alt="' . $name . '">';
                    echo '</a>';
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
                <img src="images/casualpallazos11.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos12.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos21.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos22.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos31.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos32.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in ">
                <img src="images/casualpallazos41.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/casualpallazos42.jpg"
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
                <img src="images/casualpallazos51.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos52.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos61.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos62.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos71.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos72.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/casualpallazos81.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/casualpallazos82.jpg"
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
                <img src="images/casualpallazos91.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos92.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos101.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos102.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos111.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos112.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/casualpallazos121.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/casualpallazos122.jpg"
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
                <img src="images/casualpallazos131.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos132.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos141.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos142.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos151.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos152.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/casualpallazos161.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/casualpallazos162.jpg"
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
                <img src="images/casualpallazos171.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos172.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos181.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos182.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/casualpallazos191.jpg" class="img-fluid hover-image fixed-height" data-hover="images/casualpallazos192.jpg"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/casualpallazos201.jpg" class="img-fluid px-0 hover-image fixed-height" data-hover="images/casualpallazos202.jpg"
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