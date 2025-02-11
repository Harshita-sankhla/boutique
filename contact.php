<?php
include("admin/config/connection.php"); // Include database connection

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phone = mysqli_real_escape_string($conn, $_POST['phone']);
    $message = mysqli_real_escape_string($conn, $_POST['message']);

    // Insert into database
    $query = "INSERT INTO contact (name, email, phone, message) VALUES ('$name', '$email', '$phone', '$message')";
    if (mysqli_query($conn,  $query)) {
        // Redirect to the same page to prevent resubmission
        header("Location: " . $_SERVER['PHP_SELF']);
        exit;  // Make sure the script stops executing
    } else {
        echo "<script>alert('Error: " . mysqli_error($conn) . "');</script>";
    }
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Boutique</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>

<body>
    <!-- Section header Start -->
    <div class="container-fluid outer">
        <?php include("header.php") ?>
    </div>
    <!-- Section header End -->

    <div class="contactus">
        <div class="title">
            <h2>GET IN TOUCH</h2>
        </div>
        <div class="box">
            <!-- Contact Form -->
            <div class="contact form" style="background-color: #f7f7f7;">
                <h5>CONTACT US</h5>
                <form method="POST" action="">
                    <div class="formbox">
                        <div class="row50">
                            <div class="inputbox">
                                <br><input type="text" name="name" class="floating-label" placeholder="Name" required pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed">
                            </div>
                            <div class="inputbox">
                                <br><input type="email" name="email" placeholder="Email" required>
                            </div>
                            <div class="inputbox">
                                <br><input type="text" name="phone" placeholder="Phone number" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number">
                            </div>
                            <div class="inputbox">
                                <br><textarea name="message" placeholder="Message" required></textarea>
                            </div>
                        </div>
                        <div class="row100">
                            <div class="inputbox">
                                <br><input type="submit" value="Send">
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Info Section -->
            <div class="contact info">
                <h3>LET'S HAVE A CHAT</h3>
                <hr>
                <div class="infobox">
                    <div>
                        <span></span>
                        <p>xyz@gmail.com<br>+7976198665</p>
                    </div>
                </div>
                <h3>VISIT OUR LOCATION</h3>
                <hr>
                <p>77/A Hill Road <br> Next to McDonald's, Bandra West, <br> Mumbai - 400050, Maharashtra</p>
                <div class="infobox">
                    <br>
                    <h3>WORK TIME</h3>
                    <hr>
                    <p>7 Days a week<br>from 10.00 AM to 6.00 PM</p>
                </div>
            </div>


        </div>
    </div>

    <!-- Google Maps -->
    <div class="map">
        <h3>OUR LOCATION</h3>
        <iframe src="https://www.google.com/maps/embed?pb=... (Your location link here) ..." width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>

    <!-- Footer -->
    <?php include("footer.php") ?>
</body>

</html>