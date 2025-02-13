<?php
include("admin/config/connection.php");

if (isset($_POST['email'])) {
    $email = mysqli_real_escape_string($conn, $_POST['email']);

    // Check if user already exists
    $check_query = "SELECT * FROM user_login WHERE email = '$email'";
    $check_result = mysqli_query($conn, $check_query);

    if (mysqli_num_rows($check_result) > 0) {
        // User exists, just log them in
        $_SESSION['user_email'] = $email;
        $_SESSION['logged_in'] = true;
    } else {
        // New user, insert into database
        $query = "INSERT INTO user_login (email) VALUES ('$email')";
        if (mysqli_query($conn, $query)) {
            $_SESSION['user_email'] = $email;
            $_SESSION['logged_in'] = true;
        } else {
            echo "Error: " . mysqli_error($conn);
            exit();
        }
    }

    // Handle redirect after successful login
    if (isset($_GET['redirect'])) {
        header('Location: ' . $_GET['redirect']);
    } else {
        header('Location: index.php');
    }
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Login Page</title>
</head>

<body>
    <div class="container-fluid d-flex justify-content-center align-items-center vh-100" style="background-color: #f7f7f7;">
        <div class="card rounded" style="width: 500px; height: 500px;">
            <div class="card-body custom-padding" style="padding-top:150px">
                <h3 class="card-title mb-4">Login</h3>
                <p class="text-nowrap text-truncate mb-4" style="max-width: 100%;">Enter your email and we'll send you a code</p>
                <form id="login-form" method="POST">
                    <div class="form-group mb-4">
                        <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-dark w-100 py-2 fw-bold">Continue</button>
                    </div>
                    <div class="text-center mt-4">
                        <div class="text-start pt-3">
                            <p>
                                <a href="privacy.php" class="hover-underline text-dark">Privacy</a>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>