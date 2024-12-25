<!doctype html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div class="row section1">
        <div class="col-md-12 position-relative">
            <nav class="navbar navbar-expand-lg">
                <!-- Hamburger Menu Button -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Logo -->
                <div class="logo-col d-md-block d-none px-3">
                    <img src="images/logo1.jpg" class="img-fluid logo" alt="">
                </div>

                <!-- Icons (Search, Login, Cart) on the right -->
                <div class=" order-3 d-md-block d-none">
                    <ul class="navbar-nav ms-auto d-flex flex-row align-items-center icon-container">
                        <li class="nav-item">
                            <input type="text" class="form-control" placeholder="Search..." aria-label="Search">
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.html"><i class="fas fa-user"></i></a> <!-- Login Icon -->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fas fa-cart-plus"></i></a>
                            <!-- Add to Cart Icon -->
                        </li>
                    </ul>
                </div>

                <div class="d-block d-md-none d-flex top-fix">
                    <!-- Logo -->
                    <div class="logo-col hide-logo order-1 slider px-3">
                        <img src="images/logo1.jpg" class="img-fluid logo" alt="">
                    </div>

                    <!-- Icons (Search, Login, Cart) on the right -->
                    <div class=" order-2">
                        <ul class="navbar-nav ms-auto d-flex flex-row align-items-center icon-container">
                            <li class="nav-item">
                                <a class="nav-link" href="#" id="search-icon"><i class="fas fa-search"></i></a>
                                <!-- Search Icon -->
                            </li>
                            <div id="search-box">
                                <input type="text" placeholder="Search...">
                                <button type="button" id="close-search" style="border: none ;"><i
                                        class="fas fa-times"></i></button> <!-- Cross icon -->
                            </div>
                            <li class="nav-item">
                                <a class="nav-link" href="login.html"><i class="fas fa-user"></i></a> <!-- Login Icon -->
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="fas fa-cart-plus"></i></a>
                                <!-- Add to Cart Icon -->
                            </li>
                        </ul>
                    </div>
                </div>


                <!-- Navbar Menu -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="arrival.php">New Arrivals</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                Casual Wear
                                <span class="down-arrow"></span>
                            </a>
                            <div class="position-absolute new-class">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li><a href="casualkurta.php">Kurtas</a></li>
                                            <li><a href="casualfrock.php">Frocks</a></li>
                                            <li><a href="casualgown.php">Gowns</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li><a href="casualco_ord.php">Co-ord sets</a></li> 
                                            <li><a href="casualkaftan.php">Kaftan</a></li>
                                
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li><a href="casualjacket.php">Jackets</a></li>
                                            <li><a href="casualpallazo.php">Pallazos</a></li>
    
                                        </ul>
                                    </div>
                                </div>   
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                Party Wear
                                <span class="down-arrow"></span>
                            </a>
                            <div class="position-absolute new-class">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li> <a href="partyanarkali.php"> Anarkali </a> </li>
                                            <li> <a href="partyindo_western.php"> Indo Western </a></li>
                                            <li> <a href="partyco_ord.php"> Co-ord sets </a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li> <a href="partylehenga.php"> Lehenga Choli </a></li>
                                            <li> <a href="partysaree.php"> Designer Saree </a> </li>
                                
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li> <a href="partygown.php"> Gowns </a> </li> 
                                            <li> <a href="partykaftan.php"> Kaftan with bottoms </a></li>
                                        </ul>
                                    </div>
                                </div>   
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                Accessories
                                <span class="down-arrow"></span>
                            </a>
                            <div class="position-absolute new-class">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li> <a href="accearing.php"> Earings </a></li>
                                            <li> <a href="accnecklace.php"> Necklace </a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li> <a href="accbottom.php"> Bottoms </a></li>
                                            <li> <a href="accdupatta.php"> Dupattas </a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column ">
                                            <li> <a href="accbag.php"> Bags </a></li>
                                        </ul>
                                    </div>
                                </div>   
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="contact.html">Contact Us</a>
                        </li>

                    </ul>
                </div>

            </nav>
        </div>
    </div> 
</body>
