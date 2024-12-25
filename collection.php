<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Anarkali</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- Font Awesome for Icons -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
         <!-- Main Style CSS -->
         <link rel="stylesheet" href="css/style.css">
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
    <div class="container-fluid" >
        <h1 style="padding: 8rem 0 0 2rem ;">Collections</h1>
    </div>
    <!-- section 1 End  -->

    <!-- section 2 Start  -->
    <div class="container-fluid ">
        <div class="row section3  py-2 px-2" style="background-color: white;" >
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center ">
                <img src="images/collectionanarkali.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="partyanarkali.php" class="page">Anarkali <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionkurta.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="casualkurta.php" class="page">Kurtas <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionpallaozo.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="casualpallazo.php" class="page">Pallazos <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>
    </div>   
    <!-- section 2 End   -->

    <!-- section 3 Start  -->
    <div class="container-fluid ">
        <div class="row section3  py-2 px-2" style="background-color: white;" >
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionfrock.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="casualfrock.php" class="page">Frocks </a> <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionco-ord.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="partyco_ord.php" class="page">Co-ord sets <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionsaree.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="partysaree.php" class="page">Designer Saree <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>
    </div>   
    <!-- section 3 End   -->

    <!-- section 4 Start  -->
    <div class="container-fluid ">
        <div class="row section3  py-2 px-2" style="background-color: white;" >
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectiongown.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="casualgown.php" class="page">Gowns <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionjackect.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="casualjacket.php" class="page">Jackets <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionkaftan.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="partykaftan.php" class="page">Kaftans <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>
    </div>   
    <!-- section 4 End   -->

    <!-- section 5 Start  -->
    <div class="container-fluid ">
        <div class="row section3  py-2 px-2" style="background-color: white;" >
            <div class="col-md-4 col-6 mb-4 mb-md-0 text-center">
                <img src="images/collectionlehenga.jpg" class="img-fluid  fixed-height1" alt=""> <br>
                <a href="partylehenga.php" class="page">Lehengas <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>
    </div>  
    <!-- section 5 End   -->

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