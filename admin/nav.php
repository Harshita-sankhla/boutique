<?php
$reslogin = "select * from login";
$reslog = mysqli_query($conn, $reslogin);
$log = mysqli_fetch_assoc($reslog);
?>
<html>

<head>

    <style>
        .btn {
            color: white;
            padding: 10px;
            width: 100%;
        }

        .btn:hover {
            background-color: #aaaaaa;
            color: white;
            border: none;
        }

        .btn i {
            padding: 7px;
        }


        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            z-index: 1;
            width: 100%;
            border-top: 1px solid #777;

        }

        .dropdown-content a {
            background-color: #aaa;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #c9c9c9;
            color: white;
        }

        .show {
            display: block;
        }

        .dropdown-toggle {
            background-color: transparent;
            border-bottom: 1px solid #aaa;
            cursor: pointer;
            font-size: 16px;
            display: flex;
            align-items: center;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0;">
        <div class=" navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="carousel.php"><?php echo $log['username']; ?></a>
        </div>
        <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;"> <a href="logout.php" class="btn btn-danger square-btn-adjust">Logout</a>
        </div>
    </nav>
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li class="text-center">
                    <img src="assets/img/<?php echo $log['image']; ?>" style="border-radius:50%" class="user-image img-responsive" />
                </li>

                <li onmouseover="showDropdown('dropdown1')" onmouseout="hideDropdown('dropdown1')">
                    <button class="dropdown-toggle btn" style="background-color: #aaaaaa; border-bottom:1px solid #666666">
                        <i class="fa fa-dashboard fa-3x"></i> Dashboard <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="dropdown-content" id="dropdown1">
                        <a href="carousel.php">Carousel</a>
                        <a href="celebrity.php">Celebrity</a>
                        <a href="collections.php">Collection</a>
                    </div>
                </li>
                <li onmouseover="showDropdown('dropdown2')" onmouseout="hideDropdown('dropdown2')">
                    <button class="dropdown-toggle btn">
                        <i class="fas fa-gem fa-3x"></i> Accessories <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="dropdown-content" id="dropdown2">
                        <a href="dupatta.php">Dupattas</a>
                        <a href="earing.php">Earings</a>
                        <a href="necklace.php">Necklace</a>
                        <a href="bag.php">Bags</a>
                    </div>
                </li>
                <li onmouseover="showDropdown('dropdown3')" onmouseout="hideDropdown('dropdown3')">
                    <button class="dropdown-toggle btn">
                        <i class="fas fa-glass-martini-alt fa-3x"></i> Party Wear <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="dropdown-content" id="dropdown3">
                        <a href="partygown.php">Gowns</a>
                        <a href="partyanarkali.php">Anarkali</a>
                        <a href="partylehenga.php">Lehengas</a>
                        <a href="partyco_ord.php">Co-ord sets</a>
                        <a href="partywestern.php">Indo Western</a>
                        <a href="partysaree.php">Designer Saree</a>
                        <a href="partykaftan.php">Kaftan with bottoms</a>
                    </div>
                </li>

                <li onmouseover="showDropdown('dropdown4')" onmouseout="hideDropdown('dropdown4')">
                    <button class="dropdown-toggle btn">
                        <i class="fas fa-tshirt fa-3x"></i> Casual Wear <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="dropdown-content" id="dropdown4">
                        <a href="casualkurta.php">Kurtas</a>
                        <a href="casualfrock.php">Frocks</a>
                        <a href="casualgown.php">Gowns</a>
                        <a href="casualkaftan.php">Kaftan</a>
                        <a href="casualjacket.php">Jackets</a>
                        <a href="casualpallazo.php">Pallazos</a>
                        <a href="casualco_ord.php">Co-ord sets</a>
                    </div>
                </li>
                <li style="border:1px solid #aaa; padding:7px;">
                    <a href="arrival.php"><i class="fas fa-gift fa-3x"></i>New Arrival</a>
                </li>
                <li c style="border:1px solid #aaa ; padding:7px;">
                    <a href="contact.php"><i class="fa fa-desktop fa-3x"></i> Contact</a>
                </li>
                <li c style="border:1px solid #aaa ; padding:7px;">
                    <a href="user_login.php"><i class="fas fa-user fa-3x"></i> User Login</a>
                </li>
            </ul>

        </div>

    </nav>
    <script>
        // Function to show the dropdown
        function showDropdown(dropdownId) {
            document.getElementById(dropdownId).style.display = 'block'; // Show the dropdown
        }

        // Function to hide the dropdown
        function hideDropdown(dropdownId) {
            document.getElementById(dropdownId).style.display = 'none'; // Hide the dropdown
        }

        // Close the dropdown if the user clicks outside of it
        window.onclick = function(event) {
            // Check if the clicked element is not a dropdown toggle
            if (!event.target.matches('.dropdown-toggle')) {
                // Get all dropdown contents
                var dropdowns = document.getElementsByClassName("dropdown-content");
                for (var i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    // If the dropdown is open, close it
                    if (openDropdown.style.display === 'block') {
                        openDropdown.style.display = 'none';
                    }
                }
            }
        }
    </script>

</body>

</html>