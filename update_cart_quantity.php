<?php
session_start();
header('Content-Type: application/json');

if (isset($_POST['prod_id']) && isset($_POST['change'])) {
    $prod_id = $_POST['prod_id'];
    $change = intval($_POST['change']);

    if (isset($_SESSION['cart'][$prod_id])) {
        $new_quantity = $_SESSION['cart'][$prod_id]['quantity'] + $change;

        // Ensure quantity doesn't go below 1
        if ($new_quantity < 1) {
            $new_quantity = 1;
        }

        $_SESSION['cart'][$prod_id]['quantity'] = $new_quantity;

        // Calculate new totals
        $total_items = 0;
        $subtotal = 0;
        foreach ($_SESSION['cart'] as $item) {
            $total_items += $item['quantity'];
            $subtotal += $item['prod_price'] * $item['quantity'];
        }

        // Calculate item total
        $item_total = $_SESSION['cart'][$prod_id]['prod_price'] * $new_quantity;

        echo json_encode([
            'success' => true,
            'message' => 'Quantity updated successfully',
            'new_quantity' => $new_quantity,
            'item_total' => $item_total,
            'total_items' => $total_items,
            'subtotal' => $subtotal
        ]);
        exit;
    }
}

echo json_encode([
    'success' => false,
    'message' => 'Failed to update quantity'
]);
