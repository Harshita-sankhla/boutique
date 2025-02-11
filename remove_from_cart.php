<?php
session_start();

if (isset($_GET['prod_id'])) {
    $prod_id = $_GET['prod_id'];
    if (isset($_SESSION['cart'][$prod_id])) {
        unset($_SESSION['cart'][$prod_id]);
    }
}

// Redirect back to the referring page
header("Location: " . $_SERVER['HTTP_REFERER']);
exit();
