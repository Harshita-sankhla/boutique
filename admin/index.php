<?php
include("config/connection.php");

$msg = "";

if (isset($_POST['submit'])) {
    $Uname = $_POST['username'];
    $Pass = $_POST['password'];
    $sql = "select * from login where username='$Uname' and  password='$Pass'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $tot = mysqli_num_rows($result);
    if ($tot == 1) {
        session_start();
        $_SESSION['Admin'] = $row['sno'];
        echo "<script> window.location='carousel.php'; </script>";
    } else {
        echo $msg = 'invaild user name or password';
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="login-container">
        <div>
            <h2>Login <!--<img src="images/logo.png" height="50px" width="50px" alt="">  --></h2>
        </div>
        <form id="login-form" action="#" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" name="submit">Login</button>
        </form>
    </div>
</body>

</html>