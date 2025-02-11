<?php
// Include the database connection
include("admin/config/connection.php");

// Fetch products from the database (for example, from the "bags" category)
$query = "SELECT image, name, price FROM earing";
$result = mysqli_query($conn, $query);

// Check if there are products
if (mysqli_num_rows($result) > 0) {
    // Fetch all products
    $products = mysqli_fetch_all($result, MYSQLI_ASSOC);
} else {
    // No products found
    $products = [];
}
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
    <div class="container-fluid backimage" style=" background-image: url(images/accearing.jpg);">
        <div class="overlay"></div> <!-- Increased overlay opacity -->
        <div class="text"> <!-- Changed text color to yellow -->
            <h1> <b>EARINGS</b> </h1> <!-- Increased font size -->
        </div>
    </div>
    <!-- section 1 End  -->

    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <?php if (!empty($products)) : ?>
                <?php foreach ($products as $product) : ?>
                    <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in py-4">
                        <img src="admin/images/<?php echo $product['image']; ?>" class="img-fluid fixed-height" alt="">
                        <h6 class="mt-3 product-name"><?php echo $product['name']; ?></h6>
                        <span class="mt-0 px-2 product-price">Rs. <?php echo $product['price']; ?></span>
                    </div>
                <?php endforeach; ?>
            <?php else : ?>
                <p>No products found</p>
            <?php endif; ?>
        </div>
    </div>

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