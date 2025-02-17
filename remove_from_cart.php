<?php
session_start();

// Debug: Output the query string and prod_id
echo "Query string: " . $_SERVER['QUERY_STRING'] . "<br>";

if (isset($_GET['prod_id'])) {
    $prod_id = $_GET['prod_id'];
    echo "Trying to remove product with ID: " . $prod_id . "<br>";

    if (isset($_SESSION['cart'][$prod_id])) {
        unset($_SESSION['cart'][$prod_id]);
        echo "Product removed!<br>";
    } else {
        echo "Product not found in the cart!<br>";
    }

    echo "<pre>";
    print_r($_SESSION['cart']);
    echo "</pre>";

    // Redirect back to the referring page (the page the user was on)
    // Ensure that the referer exists
    if (isset($_SERVER['HTTP_REFERER'])) {
        header("Location: " . $_SERVER['HTTP_REFERER']);
    } else {
        // Default fallback in case referer is not set (for example, if the user came directly to remove_from_cart.php)
        header("Location: cart.php");
    }
    exit();
} else {
    echo "Product ID not provided!<br>";
}
