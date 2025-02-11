<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Anarkali</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="../../css/style.css">
    <!-- style CSS  -->
    <link rel="stylesheet" href="page.css">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <!-- section header  Start  -->
    <div class="container-fluid outer">

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
                    <div class="logo-col d-md-block d-none">
                        <img src="../images/logo1.jpg" class="img-fluid logo" alt="">
                    </div>

                    <!-- Icons (Search, Login, Cart) on the right -->
                    <div class=" order-3 d-md-block d-none">
                        <ul class="navbar-nav ms-auto d-flex flex-row align-items-center icon-container">
                            <li class="nav-item">
                                <input type="text" class="form-control" placeholder="Search..." aria-label="Search">
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="fas fa-user"></i></a> <!-- Login Icon -->
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"><i class="fas fa-cart-plus"></i></a>
                                <!-- Add to Cart Icon -->
                            </li>
                        </ul>
                    </div>

                    <div class="d-block d-md-none d-flex top-fix">
                        <!-- Logo -->
                        <div class="logo-col hide-logo order-1 slider">
                            <img src="../images/logo1.jpg" class="img-fluid logo" alt="">
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
                                    <a class="nav-link" href="../user-login/login.html"><i class="fas fa-user"></i></a> <!-- Login Icon -->
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
                                <a class="nav-link active" aria-current="page" href="../index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="../New-Arrivals/arrival.html">New Arrivals</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">
                                    Casual Wear
                                    <span class="down-arrow"></span>
                                </a>
                                <div class="position-absolute new-class">
                                    <ul class="d-flex justify-content-between custom-list">
                                        <li><a href="../casual-wear/Kurtas/kurta.html">Kurtas</a></li>
                                        <li><a href="../casual-wear/Frocks/frock.html">Frocks</a></li>
                                        <li><a href="../casual-wear/Gowns/gown.html">Gowns</a></li>
                                        <li><a href="../casual-wear/Co-ord-sets/co_ord.html">Co-ord sets</a></li> <br>
                                        <li><a href="../casual-wear/Kaftan/kaftan.html">Kaftan</a></li>
                                        <li><a href="../casual-wear/Jackets/jacket.html">Jackets</a></li>
                                        <li><a href="../casual-wear/Pallazos/pallazo.html">Pallazos</a></li>

                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">
                                    Party Wear
                                    <span class="down-arrow"></span>
                                </a>
                                <div class="position-absolute new-class">
                                    <ul class="d-flex justify-content-between custom-list">
                                        <li> <a href="../party-wear/Anarkali/anarkali.html"> Anarkali </a> </li>
                                        <li> <a href="../party-wear/Lehengas/lehenga.html"> Lehenga Choli </a></li>
                                        <li> <a href="../party-wear/Indo-Western/indo_western.html"> Indo Western </a></li>
                                        <li> <a href="../party-wear/Gowns/gown.html"> Gowns </a> </li> <br>
                                        <li> <a href="../party-wear/Co-ord-sets/co_ord.html"> Co-ord sets </a></li>
                                        <li> <a href="../party-wear/kaftan/kaftan.html"> Kaftan with bottoms </a></li>
                                        <li> <a href="../party-wear/Saree/saree.html"> Designer Saree </a> </li>

                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">
                                    Accessories
                                    <span class="down-arrow"></span>
                                </a>
                                <div class="position-absolute new-class">
                                    <ul class="d-flex justify-content-between custom-list">
                                        <li> <a href="../accessories/Earings/earing.html"> Earings </a></li>
                                        <li> <a href="../accessories/Necklace/necklace.html"> Necklace </a></li>
                                        <li> <a href="../accessories/Bottoms/bottom.html"> Bottoms </a></li>
                                        <li> <a href="../accessories/Dupattas/dupatta.html"> Dupattas </a></li> <br>
                                        <li> <a href="../accessories/Bags/bag.html"> Bags </a></li>
                                        <li> <a href="../accessories/Western/western.html"> Western </a></li>

                                    </ul>
                                </div>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="../Contact-Us/contact.html">Contact Us</a>
                            </li>

                        </ul>
                    </div>

                </nav>
            </div>
        </div>
    </div>
    <!-- section  header End  -->

    <!-- section Start  -->
    <div class="container-fluid" style="background-color: #f7f7f7;">
        <div class="row">
            <div class="col-md-6 col-12 px-5 py-5 ">
                <img id="mainImage" src="images/sec511.jpg" class="img-fluid size" alt="">
                <div class="row mt-3">
                    <div class=" col-6 col-md-3 text-center">
                        <img src="images/sec121.jpg" class="img-fluid thumbnail" alt="" onclick="changeImage('images/sec121.jpg')">
                    </div>
                    <div class=" col-6 col-md-3 text-center">
                        <img src="images/sec123.jpg" class="img-fluid thumbnail" alt="" onclick="changeImage('images/sec123.jpg')">
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-12">
                <h2 style="padding-top: 8rem;">An anarkali(RV4736)</h2>
                <p style="padding-top: 1rem; margin-bottom: 0;color:#444444 ;">Rs. 25,040.00 </p>
                <small style="color: #444444;">Shipping calculated at checkout.
                </small>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">
                <div class="d-flex justify-content-center flex-wrap" style="padding-top: 1rem; ;">
                    <p style="padding-right: 3rem;">size</p>
                    <!-- Small Round Buttons -->
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">S</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">M</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">L</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">XL</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">XXL</button>
                    <button class="btn btn-light btn-round mx-2 border-black custom-hover">XXXL</button>

                    <!-- Large Round Button -->
                    <button id="customSizeBtn" class="btn btn-light btn-large mx-2 border-black" style="width: 100px;">Custom</button>
                </div>
                <!-- Input box for custom size (hidden by default) -->
                <div id="customSizeInput" style="display: none; margin-top: 1rem; text-align: center;">
                    <input type="text" class="form-control custom-input-border" placeholder="Enter your custom size" style="width: 650px; margin: 0 auto; margin-top: 2rem;">
                </div>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">
                <p class="size-chart">Size Chart</p>
                <!-- size chart pop up -->

                <!-- Overlay -->
                <div class="overlay" id="overlay"></div>

                <!-- Popup -->
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


                <!-- Counter Box -->
                <div class="d-flex flex-wrap">
                    <div class="counter-box">
                        <button id="decrement">-</button>
                        <span id="counter">1</span>
                        <button id="increment">+</button>
                    </div>
                    <div class="counter-box" style="margin-left: 50px; width: 400px;">
                        <p>Add to Cart</p>
                    </div>
                </div>
                <div class="full-width-box" style="width: 650px; background-color: #816c6c; color: white; padding: 5px; text-align: center; margin-bottom: 50px;">
                    <p style="margin:8px 0">Buy it now</p>
                </div>

                <div class="container mt-5 ">
                    <div>
                        <span class="tab active" id="descriptionTab">Description</span>
                        <span class="tab" id="shippingTab">Shipping</span>
                    </div>

                    <div class="content active" id="descriptionContent">
                        <p>A beautiful draped top and cowled skirt set in a beautiful shimmer fabric.</p>
                    </div>

                    <div class="content" id="shippingContent">
                        <p>Standard Delivery in 25 - 30 days.</p>
                    </div>
                </div>
                <br>
                <hr style="border: 1px solid #444444; margin: 1rem 0;">




                <!-- section End  -->

                <!-- footer Start   -->
                <footer class="bg-dark text-white pt-5">
                    <div class="container-fluid px-5"> <!-- Use container-fluid for full width with less padding -->
                        <div class="row">
                            <!-- Section 1: About Boutique -->
                            <div class="col-md-3 col-sm-6 mb-4">
                                <h4>About Our Boutique</h4>
                                <p class="light small">Discover the latest trends in fashion and style at our boutique. We offer a
                                    curated selection of clothing, accessories, and more.</p>
                            </div>
                            <!-- Section 2: Our Services -->
                            <div class="col-md-3 col-sm-6 mb-4">
                                <h4>Our Services</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="light small">Personal Styling</a></li>
                                    <li><a href="#" class="light small">Custom Tailoring</a></li>
                                    <li><a href="#" class="light small">Fashion Consultation</a></li>
                                    <li><a href="#" class="light small">Gift Vouchers</a></li>
                                </ul>
                            </div>
                            <!-- Section 3: Contact Us -->
                            <div class="col-md-3 col-sm-6 mb-4">
                                <h4>Contact Us</h4>
                                <p class="light small">Email: info@yourboutique.com</p>
                                <p class="light small">Phone: +123 456 7890</p>
                                <p class="light small">Address: 123 Fashion Street, Style City</p>
                            </div>
                            <!-- Section 4: Follow Us -->
                            <div class="col-md-3 col-sm-6 mb-4">
                                <h4>Follow Us</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="light small">Facebook</a></li>
                                    <li><a href="#" class="light small">Instagram</a></li>
                                    <li><a href="#" class="light small">Twitter</a></li>
                                    <li><a href="#" class="light small">Pinterest</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="text-center py-3">
                        <p class="mb-0 light small">&copy; 2023 Your Boutique Name. All rights reserved.</p>
                    </div>
                </footer>
                <!-- footer End  -->

                <script src="script.js"></script>
                <!-- Link to the external script.js -->
                <script src="../../js/script.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>

                <script>
                    //script for button color change on click event 
                    $(document).ready(function() {
                        $('.btn-light').click(function() {
                            $('.btn-light').removeClass('clicked'); // Remove clicked class from all buttons
                            $(this).addClass('clicked'); // Add clicked class to the clicked button
                        });
                    });
                </script>

                <script>
                    // script for custom button input box
                    document.getElementById('customSizeBtn').addEventListener('click', function() {
                        var customSizeInput = document.getElementById('customSizeInput');
                        // Toggle the display property of the input box
                        if (customSizeInput.style.display === 'none') {
                            customSizeInput.style.display = 'block'; // Show the input box
                        } else {
                            customSizeInput.style.display = 'none'; // Hide the input box
                        }
                    });
                </script>

                <script>
                    //script for counter to add item
                    let count = 1;
                    const counterDisplay = document.getElementById('counter');

                    document.getElementById('increment').addEventListener('click', () => {
                        count++;
                        counterDisplay.textContent = count;
                    });

                    document.getElementById('decrement').addEventListener('click', () => {
                        if (count > 1) {
                            count--;
                            counterDisplay.textContent = count;
                        }
                    });
                </script>

                <script>
                    //script for popup on size chart
                    // Get elements
                    const sizeChart = document.querySelector('.size-chart');
                    const sizeChartPopup = document.getElementById('sizeChartPopup');
                    const overlay = document.getElementById('overlay');

                    // Show popup on click
                    sizeChart.addEventListener('click', function() {
                        sizeChartPopup.style.display = 'block';
                        overlay.style.display = 'block';
                    });

                    // Close popup on right click
                    document.addEventListener('contextmenu', function(event) {
                        event.preventDefault(); // Prevent the default context menu
                        sizeChartPopup.style.display = 'none';
                        overlay.style.display = 'none';
                    });

                    // Close popup on button click
                    document.getElementById('closePopup').addEventListener('click', function() {
                        sizeChartPopup.style.display = 'none';
                        overlay.style.display = 'none';
                    });
                </script>


                <script>
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

</body>

</html>