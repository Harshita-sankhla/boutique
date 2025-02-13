// add_to_cart.php
<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Validate required fields
    $required_fields = ['prod_id', 'prod_name', 'prod_price', 'prod_size'];
    foreach ($required_fields as $field) {
        if (!isset($_POST[$field]) || empty($_POST[$field])) {
            die("Error: Missing required field - $field");
        }
    }

    // Get form data
    $prod_id = $_POST['prod_id'];
    $prod_name = $_POST['prod_name'];
    $prod_price = $_POST['prod_price'];
    $prod_size = $_POST['prod_size'];
    $quantity = isset($_POST['quantity']) ? (int)$_POST['quantity'] : 1;
    $prod_image = isset($_POST['prod_image']) ? $_POST['prod_image'] : '';

    // Initialize cart if not exists
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }

    // Create unique cart item key combining product ID and size
    $cart_item_key = $prod_id . '_' . $prod_size;

    // Add or update cart item
    if (isset($_SESSION['cart'][$cart_item_key])) {
        $_SESSION['cart'][$cart_item_key]['quantity'] += $quantity;
    } else {
        $_SESSION['cart'][$cart_item_key] = [
            'prod_id' => $prod_id,
            'prod_name' => $prod_name,
            'prod_price' => $prod_price,
            'prod_size' => $prod_size,
            'quantity' => $quantity,
            'prod_image' => $prod_image
        ];
    }

    // Redirect back with success message
    header("Location: " . $_SERVER['HTTP_REFERER'] . "?added=1");
    exit();
} else {
    // Invalid request method
    header("Location: index.php");
    exit();
}
