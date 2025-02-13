<?php
$total_items = 0;
if (isset($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $item) {
        $total_items += $item['quantity'];
    }
}
?>

<style>
    .cart-icon-container {
        position: relative;
        display: inline-block;
    }

    .cart-badge {
        position: absolute;
        top: -8px;
        right: -8px;
        background-color: #ff4444;
        color: white;
        border-radius: 50%;
        padding: 2px 6px;
        font-size: 12px;
        min-width: 18px;
        text-align: center;
    }

    .cart-dropdown {
        display: none;
        position: absolute;
        right: 0;
        background-color: white;
        min-width: 400px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        z-index: 1000;
        padding: 20px;
        border-radius: 4px;
    }

    .cart-dropdown.show {
        display: block;
    }
</style>

<li class="nav-item">
    <div class="cart-icon-container">
        <a class="nav-link" href="#" id="cart-icon">
            <i class="fas fa-cart-plus"></i>
            <?php if ($total_items > 0): ?>
                <span class="cart-badge"><?php echo $total_items; ?></span>
            <?php endif; ?>
        </a>
        <div id="cart-dropdown" class="cart-dropdown">
            <h3 style="font-family:'Times New Roman';">Your cart</h3>
            <span class="close-btn" id="close-btn">&times;</span>
            <span style="font-size: 0.7rem;">PRODUCTS</span>
            <span style="font-size: 0.7rem; margin-left: 270px;">TOTAL</span>
            <hr>
            <?php if (!isset($_SESSION['cart']) || count($_SESSION['cart']) == 0): ?>
                <p style="text-align: center;">Your cart is empty.</p>
            <?php else: ?>
                <?php
                $subtotal = 0;
                foreach ($_SESSION['cart'] as $prod_id => $item):
                    $item_total = $item['prod_price'] * $item['quantity'];
                    $subtotal += $item_total;
                ?>
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-4">
                            <img src="<?php echo isset($item['prod_image']) ? $item['prod_image'] : 'images/default.png'; ?>" alt="" style="height: 170px; width: 130px;">
                        </div>
                        <div class="col-md-8" style="padding-left: 20px;">
                            <h5><?php echo htmlspecialchars($item['prod_name']); ?></h5>
                            <h6 style="font-size: 0.9rem;">Rs. <?php echo htmlspecialchars($item['prod_price']); ?></h6>
                            <?php if (isset($item['prod_size'])): ?>
                                <h6 style="font-size: 0.9rem;">Size: <?php echo htmlspecialchars($item['prod_size']); ?></h6>
                            <?php endif; ?>
                            <div class="counter1-box mt-5 d-flex align-items-center">
                                <button onclick="updateCart('<?php echo $prod_id; ?>', -1)">-</button>
                                <span class="mx-2"><?php echo htmlspecialchars($item['quantity']); ?></span>
                                <button onclick="updateCart('<?php echo $prod_id; ?>', 1)">+</button>
                                <a href="remove_from_cart.php?prod_id=<?php echo urlencode($prod_id); ?>" class="nav-link ms-5">
                                    <i class="fa-solid fa-trash" style="font-size: 1rem;"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
            <hr>
            <p style="text-align: right; margin-right: 10px;">
                <strong>Subtotal: Rs. <?php echo isset($subtotal) ? $subtotal : '0'; ?></strong>
            </p>
            <button class="btn mt-4 w-100" id="checkout-btn" style="background-color: #aaa; color: #fff;">Check out</button>
        </div>
    </div>
</li>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const cartIcon = document.getElementById('cart-icon');
        const cartDropdown = document.getElementById('cart-dropdown');
        const closeBtn = document.getElementById('close-btn');
        let isCartOpen = false;

        // Toggle cart dropdown when clicking the cart icon
        cartIcon.addEventListener('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            isCartOpen = !isCartOpen;
            cartDropdown.classList.toggle('show');
        });

        // Close cart when clicking the close button
        closeBtn.addEventListener('click', function(e) {
            e.preventDefault();
            isCartOpen = false;
            cartDropdown.classList.remove('show');
        });

        // Close cart when clicking outside
        document.addEventListener('click', function(e) {
            if (!cartDropdown.contains(e.target) && !cartIcon.contains(e.target) && isCartOpen) {
                isCartOpen = false;
                cartDropdown.classList.remove('show');
            }
        });

        // Prevent cart from closing when clicking inside it
        cartDropdown.addEventListener('click', function(e) {
            e.stopPropagation();
        });
    });

    // Update cart function
    function updateCart(prodId, change) {
        // You can implement AJAX cart update here
        console.log('Updating cart for product:', prodId, 'change:', change);
    }
</script>