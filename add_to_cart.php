<?php
// add_to_cart.php
// --------------------------------------------------------
// This file processes the "Add to Cart" action. It retrieves
// product details from the form submission, updates the cart
// stored in the session, and then redirects the user back to
// the previous page.
// --------------------------------------------------------

// Start the session
session_start();

// Enable error reporting for debugging (disable in production)
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Process the form submission if method is POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve product details from the form
    $prod_id    = $_POST['prod_id'];
    $prod_name  = $_POST['prod_name'];
    $prod_price = $_POST['prod_price'];
    $quantity   = isset($_POST['quantity']) ? (int)$_POST['quantity'] : 1;

    // Initialize the cart array in session if not already set
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }

    // If the product already exists in the cart, update its quantity.
    // Otherwise, add it as a new entry.
    if (isset($_SESSION['cart'][$prod_id])) {
        $_SESSION['cart'][$prod_id]['quantity'] += $quantity;
    } else {
        $_SESSION['cart'][$prod_id] = [
            'prod_name'  => $prod_name,
            'prod_price' => $prod_price,
            'quantity'   => $quantity,
            // Optionally, you can add more product information (e.g., prod_image)
        ];
    }

    // Redirect the user back to the referring page (usually the product page)
    header("Location: " . $_SERVER['HTTP_REFERER']);
    exit();
}
