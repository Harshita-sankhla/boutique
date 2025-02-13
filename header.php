<!doctype html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* Cart Dropdown Styles */
        .cart-dropdown {
            display: none;
            position: absolute;
            background-color: white;
            border: none;
            padding: 10px;
            top: 0;
            right: 0;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            width: 400px;
            height: 1000px;
        }

        .cart-dropdown ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .cart-dropdown li {
            padding: 8px 0;
        }

        /* Background Overlay */
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.4);
            z-index: 998;
        }

        /* Disable scrolling when overlay is visible */
        body.disable-scroll {
            overflow: hidden;
        }

        .icon-container {
            position: relative;
        }

        /* Close Button Styling */
        .cart-dropdown .close-btn {
            position: absolute;
            top: 0;
            right: 10px;
            font-size: 45px;
            cursor: pointer;
            color: #000;
        }

        .counter1-box {
            background-color: #ffffff;
            padding: 8px 8px;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 10px;
            width: 130px;
            height: 45px;
            border: solid 1px #666;
        }

        .counter1-box button {
            border: none;
            background: none;
            font-size: 18px;
            margin: 0 10px;
        }

        #cart-dropdown .counter-box {
            justify-content: space-between;
        }

        #delete-icon {
            cursor: pointer;
            font-size: 1rem;
        }
    </style>
</head>

<body>
    <!-- Add the overlay here -->
    <div id="overlay" class="overlay"></div>

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
                <div class="order-3 d-md-block d-none">
                    <ul class="navbar-nav ms-auto d-flex flex-row align-items-center icon-container">
                        <li class="nav-item">
                            <form action="search_results.php" method="GET" class="d-flex">
                                <input type="text" name="query" class="form-control" placeholder="Search..." aria-label="Search">
                            </form>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php"><i class="fas fa-user"></i></a> <!-- Login Icon -->
                        </li>
                        <!-- Here cart.php code starts -->
                        <?php

                        include 'cart.php';  // Ensure this file outputs your cart UI (using your dynamic code)
                        ?>

                        <!-- Here ends the cart.php -->

                    </ul>
                </div>


                <!-- Mobile version -->
                <div class="d-block d-md-none d-flex top-fix">
                    <div class="logo-col hide-logo order-1 slider px-3">
                        <img src="images/logo1.jpg" class="img-fluid logo" alt="">
                    </div>
                    <div class="order-2">
                        <ul class="navbar-nav ms-auto d-flex flex-row align-items-center icon-container">
                            <li class="nav-item">
                                <a class="nav-link" href="#" id="search-icon"><i class="fas fa-search"></i></a>
                            </li>
                            <div id="search-box">
                                <form action="search_results.php" method="GET">
                                    <input type="text" name="query" placeholder="Search..." />
                                    <button type="submit" id="search-submit"><i class="fas fa-search"></i></button>
                                    <button type="button" id="close-search" style="border: none;"><i class="fas fa-times"></i></button>
                                </form>
                            </div>
                            <li class="nav-item">
                                <a class="nav-link" href="login.php"><i class="fas fa-user"></i></a>
                            </li>
                            <!-- Here cart.php code starts -->
                            <?php

                            include 'cart.php';  // Ensure this file outputs your cart UI (using your dynamic code)
                            ?>

                            <!-- Here ends the cart.php -->
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
                                        <ul class="d-flex flex-column">
                                            <li><a href="casualkurta.php">Kurtas</a></li>
                                            <li><a href="casualfrock.php">Frocks</a></li>
                                            <li><a href="casualgown.php">Gowns</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column">
                                            <li><a href="casualco_ord.php">Co-ord sets</a></li>
                                            <li><a href="casualkaftan.php">Kaftan</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column">
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
                                        <ul class="d-flex flex-column">
                                            <li><a href="partyanarkali.php">Anarkali</a></li>
                                            <li><a href="partyindo_western.php">Indo Western</a></li>
                                            <li><a href="partyco_ord.php">Co-ord sets</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column">
                                            <li><a href="partylehenga.php">Lehengas</a></li>
                                            <li><a href="partysaree.php">Designer Saree</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column">
                                            <li><a href="partygown.php">Gowns</a></li>
                                            <li><a href="partykaftan.php">Kaftan with bottoms</a></li>
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
                                        <ul class="d-flex flex-column">
                                            <li><a href="accearing.php">Earings</a></li>
                                            <li><a href="accnecklace.php">Necklace</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column">
                                            <li><a href="accdupatta.php">Dupattas</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="d-flex flex-column">
                                            <li><a href="accbag.php">Bags</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="contact.php">Contact Us</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <script>
        // Function to open the cart dropdown
        document.getElementById("cart-icon").addEventListener("click", function() {
            var dropdown = document.getElementById("cart-dropdown");
            var overlay = document.getElementById("overlay");
            var body = document.body;

            // Show the dropdown and overlay
            dropdown.style.display = "block";
            overlay.style.display = "block";
            body.classList.add("disable-scroll"); // Disable scrolling

            // Hide the dropdown and overlay when the overlay is clicked
            overlay.addEventListener("click", function() {
                dropdown.style.display = "none";
                overlay.style.display = "none";
                body.classList.remove("disable-scroll"); // Re-enable scrolling
            });
        });

        // Close the dropdown when the close button is clicked
        document.getElementById("close-btn").addEventListener("click", function() {
            var dropdown = document.getElementById("cart-dropdown");
            var overlay = document.getElementById("overlay");
            var body = document.body;

            // Hide the dropdown and overlay
            dropdown.style.display = "none";
            overlay.style.display = "none";
            body.classList.remove("disable-scroll"); // Re-enable scrolling
        });
    </script>
</body>

</html>