<?php
include("admin/config/connection.php");
// session_start();
// Query to get slider images
$sql = "SELECT image1,image2 FROM  `carousel`";
$result = $conn->query($sql);

$slider_images = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $slider_images[] = $row;
    }
}

$sql1 = "SELECT image, name FROM `celebrity` LIMIT 5"; // Adjust as needed
$result1 = $conn->query($sql1);

$celebrities = [];
if ($result1->num_rows > 0) {
    while ($row1 = $result1->fetch_assoc()) {
        $celebrities[] = $row1;
    }
}

?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Boutique</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- section First Start  -->
    <div class="container-fluid outer">
        <?php
        include("header.php")
        ?>
    </div>
    <!-- section  First End  -->

    <!-- section Second Start  -->
    <div class="container-fluid outer">

        <!-- Slider -->
        <div class="slider-container">
            <div class="slider-inner" id="slider">
                <?php
                if (count($slider_images) > 0):
                    foreach ($slider_images as $index => $image): ?>
                        <div class="slider-item">
                            <a href="arrival.php">
                                <img src="images/<?= $image['image1']; ?>" class="slider-img d-none d-md-block" width="100%" alt="Slide <?= $index + 1 ?>">
                                <img src="images/<?= $image['image2']; ?>" class="slider-img d-block d-md-none" width="100%" alt="Slide <?= $index + 1 ?> mobile">
                            </a>
                        </div>
                    <?php endforeach;
                else: ?>
                    <p>No images found for the slider.</p>
                <?php endif; ?>
            </div>

            <!-- Slider Controls -->
            <div class="slider-controls ">
                <!-- Left Arrow Button -->
                <button onclick="moveSlider('prev')"><i class="fa-solid fa-chevron-left"></i></button>

                <!-- Page Indicators as Circles -->
                <div class="indicator-btn-container ">
                    <button class="indicator-btn " onclick="goToPage(0)"></button>
                    <button class="indicator-btn " onclick="goToPage(1)"></button>
                    <button class="indicator-btn " onclick="goToPage(2)"></button>
                </div>

                <!-- Right Arrow Button -->
                <button onclick="moveSlider('next')"><i class="fa-solid fa-chevron-right"></i></button>

                <!-- Play/Stop Button -->
                <button class="play-stop-btn" id="playStopBtn" onclick="togglePlay()">⏯;</button>
            </div>
        </div>
    </div>
    <!-- section Second End  -->

    <!-- Section 3 Start  -->
    <div class="container-fluid">
        <div class="row section3 py-5 px-2">
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center ">
                <img src="images/section311.png" class="img-fluid hover-image" data-hover="images/section312.png"
                    alt="">
                <h6 class="mt-3 product-name">NAL-3</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/section321.png" class="img-fluid hover-image" data-hover="images/section322.png"
                    alt="">
                <h6 class="mt-3 product-name">NAL-4</h6>
                <del class="mt-0 product-price">Rs. 28,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 14,000.00</span>
            </div>
            <div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in">
                <img src="images/section332.png" class="img-fluid hover-image" data-hover="images/section331.png"
                    alt="">
                <h6 class="mt-3 product-name">NAL-10</h6>
                <span class="mt-0 product-price">Rs. 18,000.00</span>
            </div>
            <div class="col-md-3 col-6 text-center image-fade-in">
                <img src="images/section342.png" class="img-fluid px-0 hover-image" data-hover="images/section341.png"
                    alt="">
                <h6 class="mt-3 product-name">NAL-5</h6>
                <span class="mt-0 product-price">Rs. 34,000.00</span>
            </div>
        </div>
    </div>

    <!-- Section 3 End  -->

    <!-- Section 4 Start  -->
    <div class="container-fluid">
        <div class="row section3 justify-content-center">
            <div class="col-lg-3 col-md-6 col-sm-12 image-fade-in">
                <div class="card" style="background-color: transparent; border: none;">
                    <div class="wrapper">
                        <img src="images/3D11.png" class="cover-image" alt="">
                    </div>
                    <img src="images/3D12.png" class="character" alt="">
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 d-none d-md-block image-fade-in">
                <div class="card" style="background-color: transparent; border: none;">
                    <div class="wrapper">
                        <img src="images/3D21.png" class="cover-image" alt="">
                    </div>
                    <img src="images/3D22.png" class="character" alt="">
                </div>
            </div>
            <div class="col-lg-3 d-none d-lg-block image-fade-in">
                <div class="card" style="background-color: transparent; border: none;">
                    <div class="wrapper">
                        <img src="images/3D31.png" class="cover-image" alt="">
                    </div>
                    <img src="images/3D32.png" class="character" alt="">
                </div>
            </div>
            <div class="col-lg-3 d-none d-lg-block image-fade-in">
                <div class="card" style="background-color: transparent; border: none;">
                    <div class="wrapper">
                        <img src="images/3D41.png" class="cover-image" alt="">
                    </div>
                    <img src="images/3D42.png" class="character" alt="">
                </div>
            </div>
        </div>
    </div>

    <!-- section 4 End  -->

    <!-- section 5 Start  -->
    <div class="container-fluid py-4">
        <div class="row text-center overlay-text pb-4">
            <h3>Welcome to Our Boutique</h3>
            <p>Discover Style and Elegance in Every Piece</p>
        </div>
        <img src="images/boutique.png" alt="" class="full-screen-image">

    </div>
    <!-- section 5 End   -->

    <!-- section 6 Start  -->
    <div class="container-fluid text-center bg-light">
        <div class="row  align-items-stretch  g-0">
            <div class="col-md-6 col-12 d-flex flex-column">
                <img src="images/section51.png" class="img-fluid" alt=""
                    style="object-fit: cover; height: 100%; width: auto;">
            </div>
            <div class="col-md-6 col-12 d-flex flex-column ">
                <div class="row flex-grow-1">
                    <div class="col-12 d-flex flex-column justify-content-between" style="height: 100%;">
                        <div class="row mb-3">
                            <p>Shop The Look</p>
                        </div>
                        <div class="row ">
                            <div class="col-6 col-md-12 d-flex flex-column align-items-center">
                                <img src="images/section52.png" class="img-fluid " alt=""
                                    style="object-fit: contain; height: 75%; width: auto;">
                                <h7 class="mt-3" style="font-size: 16px;">Gream Anarkali Suit with Gold Silk Koti</h7>
                                <h6>Rs. 52,000.00</h6>
                            </div>
                            <div class="col-6 col-md-12 d-flex flex-column align-items-center">
                                <img src="images/section53.png" class="img-fluid " alt=""
                                    style="object-fit: contain; height: 75%; width: auto;">
                                <h7 class="mt-3" style="font-size: 16px;">Beige Anarkali with Pista Green Koti </h7>
                                <h6>Rs. 52,000.00</h6>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section 6 End   -->

    <!-- section 7 Start  -->
    <div class="container-fluid bg-light">
        <div class="row  g-0">
            <div class="col-md-6 col-12 text-justify " style="padding: 15rem 6rem;">
                <h1>Embroidered Tales</h1>
                <p class="mt-4" style="font-size: 16px; font-family: alert-light;">Cultural threads intricately woven
                    into each design, creating <br> a bridal collection that harmonises heritage with
                    <br> contemporary grace through breathtaking ornate <br> embroideries.
                </p>
                <button class="mt-4 px-4 py-2 btn btn-outline-light"
                    style="border: none; background-color: #ccc; color: white; transition: background-color 0.3s;"
                    onmouseover="this.style.backgroundColor='#999'"
                    onmouseout="this.style.backgroundColor='#ccc'"
                    onclick="window.location.href='partyanarkali.php'">Shop Here</button>

            </div>
            <div class="col-md-6 col-12 d-flex flex-column">
                <img src="images/section6.png" class="img-fluid" alt=""
                    style="object-fit: cover; height: 100%; width: auto;">
            </div>
        </div>
    </div>
    <!-- section 7 End  -->

    <!-- section 8 Start  -->
    <div class="news-ticker">
        <div class="news-content my-2">
            <span>Exquisite heirloom &nbsp;&nbsp;</span>
            <span>Meticulously crafted couture &nbsp;&nbsp;</span>
            <span>Spellbinding trousseau &nbsp;&nbsp;</span>
            <span>Effortless glamour &nbsp;&nbsp;</span>
            <span>Timeless craftsmanship &nbsp;&nbsp;</span>
            <!-- Duplicate the content for seamless effect -->
            <span>Exquisite heirloom &nbsp;&nbsp;</span>
            <span>Meticulously crafted couture &nbsp;&nbsp;</span>
            <span>Spellbinding trousseau &nbsp;&nbsp;</span>
            <span>Effortless glamour &nbsp;&nbsp;</span>
            <span>Timeless craftsmanship &nbsp;&nbsp;</span>
        </div>
    </div>
    <!-- section 8 End -->

    <!-- section 9 Start -->
    <div class="container-fluid">
        <img src="images/section.png" alt="" style="max-width: 100%; height: auto;">
    </div>
    <!-- section 9 End  -->

    <!-- section 10 Start  -->
    <div class="container-fluid bg-light">
        <div class="row text-center">
            <span class="pt-3" style="font-size: 1.5em; font-family:'Times New Roman', Times, serif;">Spotted In
                Website_Name</span>
            <p class="pt-3" style="font-size: 1em; font-family:Georgia, 'Times New Roman', Times, serif;">Celebrity
                Closet</p>
        </div>

        <!-- Carousel for small screens -->
        <div id="celebrityCarousel" class="carousel slide d-md-none" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-12 ">
                            <img src="images/section41.png" class="d-block w-100 img-fluid img-fluid2" alt="">
                            <p style="font-family:Georgia, 'Times New Roman', Times, serif; font-size: 16px;"
                                class="my-2">Ishna Batra</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-12">
                            <img src="images/section42.png" class="d-block w-100 img-fluid img-fluid2" alt="">
                            <p style="font-family:Georgia, 'Times New Roman', Times, serif; font-size: 16px;"
                                class="my-2">Elnaaz Norouzi</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-12">
                            <img src="images/section43.png" class="d-block w-100 img-fluid img-fluid2" alt="">
                            <p style="font-family:Georgia, 'Times New Roman', Times, serif; font-size: 16px;"
                                class="my-2">Nina Shah</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-12">
                            <img src="images/section44.png" class="d-block w-100 img-fluid img-fluid2" alt="">
                            <p style="font-family:Georgia, 'Times New Roman', Times, serif; font-size: 16px;"
                                class="my-2">Alisha Pekha</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-12">
                            <img src="images/section45.png" class="d-block w-100 img-fluid img-fluid2" alt="">
                            <p style="font-family:Georgia, 'Times New Roman', Times, serif; font-size: 16px;"
                                class="my-2">Hanna S Khan</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="row d-none d-md-flex justify-content-between mx-3 my-4 text-center section3">
            <?php foreach ($celebrities as $celebrity): ?>
                <div class="col image-fade-in">
                    <img src="images/<?php echo $celebrity['image']; ?>" class="img-fluid img-fluid1" alt="<?php echo $celebrity['name']; ?>">
                    <p style="font-family:Georgia, 'Times New Roman', Times, serif; font-size: 16px;" class="my-2">
                        <?php echo $celebrity['name']; ?>
                    </p>
                </div>
            <?php endforeach; ?>
        </div>

    </div>
    <!-- section 10 End  -->

    <!-- section 11 Start -->
    <div class="container-fluid">
        <div class="row text-center py-4">
            <div class="col-12">
                <h1>Mood For Summer</h1>
                <p class="mt-3" style="font-size: 16px;">Immerse yourself in the allure of fine fabrics and meticulous
                    detailing, showcasing the epitome of sartorial
                    <br> splendour.
                </p>
                <button class="my-4 px-4 py-2 btn btn-outline-light"
                    style="border: none; background-color: #ccc; color: white; transition: background-color 0.3s;"
                    onmouseover="this.style.backgroundColor='#999'"
                    onmouseout="this.style.backgroundColor='#ccc'"
                    onclick="window.location.href='casualgown.php'">EXPLORE COLLECTION</button>
            </div>
        </div>
        <div>
            <a href="casualgown.php">
                <img src="images/section10.png" class="slider-img d-none d-md-block" width="100%" alt="Slide 1">
                <img src="images/section100.png" class="slider-img d-block d-md-none" width="100%" alt="Slide 1 mobile">
            </a>

        </div>
        <div class="row my-4 mx-3 text-center section3">
            <div class="col-md-3 col-6 my-2 image-zoom image-fade-in">
                <img src="images/section101.png" class="img-fluid" alt="">
                <h6 class="mt-3 product-name">NAL-11</h6>
                <del class="mt-0 product-price">Rs. 16,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 8,000.00</span>
            </div>
            <div class="col-md-3 col-6 my-2 image-zoom image-fade-in">
                <img src="images/section102.png" class="img-fluid" alt="">
                <h6 class="mt-3 product-name">NAL-17</h6>
                <span class="mt-0 product-price">Rs. 32,000.00</span>
            </div>
            <div class="col-md-3 col-6 my-2 image-zoom image-fade-in">
                <img src="images/section103.png" class="img-fluid" alt="">
                <h6 class="mt-3 product-name">NAL-22</h6>
                <span class="mt-0 product-price">Rs. 72,000.00</span>
            </div>
            <div class="col-md-3 col-6 my-2 image-zoom image-fade-in">
                <img src="images/section104.png" class="img-fluid" alt="">
                <h6 class="mt-3 product-name">NAL-7</h6>
                <del class="mt-0 product-price">Rs. 40,000.00</del>
                <span class="mt-0 px-2 product-price">Rs. 20,000.00</span>
            </div>
        </div>
    </div>
    <!-- section 11 End -->

    <!-- section 12 Start   -->
    <div class="container-fluid">
        <div class="row py-4 px-4" style=" background-color: #f7f7f7;">
            <p style="font-size: 3rem; font-family: 'Times New Roman'">Collections</p>
        </div>
        <div class="row section3 py-3 px-4">
            <div class="col image-fade-in text-center ">
                <img src="images/section121.png" class="img-fluid" style="height: 450px; width: 350px;" alt="">
                <a href="partylehenga.php" class="page "> Lehengas <i class="bi bi-arrow-right"></i> </a>
            </div>
            <div class="col image-fade-in text-center d-none d-md-block">
                <img src="images/section122.png" class="img-fluid" style="height: 450px; width: 350px;" alt="">
                <a href="partygown.php" class="page "> Gowns <i class="bi bi-arrow-right"></i> </a>
            </div>
            <div class="col  image-fade-in text-center d-none d-md-block">
                <img src="images/section123.png" class="img-fluid" style="height: 450px; width: 350px;" alt="">
                <a href="casualco_ord.php" class="page "> Co-ord Set <i class="bi bi-arrow-right"></i> </a>
            </div>
            <div class="col  image-fade-in text-center d-none d-md-block">
                <img src="images/section124.png" class="img-fluid" style="height: 450px; width: 350px;" alt="">
                <a href="casualpallazo.php" class="page">Pallazos <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>
        <div class="row py-4 px-4 text-center" style=" background-color: #f7f7f7;">
            <div col-12>
                <button class="my-4 px-4 py-2 btn btn-outline-light"
                    style="border: none; background-color: #ccc; color: white; border-radius: 0;transition: background-color 0.3s;"
                    onmouseover="this.style.backgroundColor='#999'"
                    onmouseout="this.style.backgroundColor='#ccc'"
                    onclick="window.location.href='collection.php'">View all</button>
            </div>

        </div>
    </div>
    <!-- section 12 End    -->
    <!-- footer Start   -->
    <?php
    include("footer.php")
    ?>
    <!-- footer End  -->


    <!-- Link to the external script.js -->
    <script src="js/script.js"></script>
    <script src="page.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>