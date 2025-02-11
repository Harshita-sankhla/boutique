<li class="nav-item">
    <a class="nav-link" href="#" id="cart-icon"><i class="fas fa-cart-plus"></i></a>
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
            // Loop through each product in the cart
            foreach ($_SESSION['cart'] as $prod_id => $item):
                $item_total = $item['prod_price'] * $item['quantity'];
                $subtotal += $item_total;
            ?>
                <div class="row" style="margin-bottom: 10px;">
                    <div class="col-md-4">
                        <!-- Display product image if available; otherwise use a default image -->
                        <img src="<?php echo isset($item['prod_image']) ? $item['prod_image'] : 'images/default.png'; ?>" alt="" style="height: 170px; width: 130px;">
                    </div>
                    <div class="col-md-8" style="padding-left: 20px;">
                        <h5><?php echo htmlspecialchars($item['prod_name']); ?></h5>
                        <h6 style="font-size: 0.9rem;">Rs. <?php echo htmlspecialchars($item['prod_price']); ?></h6>
                        <?php if (isset($item['prod_size'])): ?>
                            <h6 style="font-size: 0.9rem;">Size: <?php echo htmlspecialchars($item['prod_size']); ?></h6>
                        <?php endif; ?>
                        <div class="counter1-box mt-5 d-flex align-items-center">
                            <!-- Buttons to adjust quantity; you may implement JavaScript for AJAX updates -->
                            <button onclick="updateCart('<?php echo $prod_id; ?>', -1)">-</button>
                            <span class="mx-2"><?php echo htmlspecialchars($item['quantity']); ?></span>
                            <button onclick="updateCart('<?php echo $prod_id; ?>', 1)">+</button>
                            <!-- Link to remove product from cart -->
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
        <!-- Checkout Button -->
        <button class="btn mt-4 w-100" id="checkout-btn" style="background-color: #aaa; color: #fff;">Check out</button>
    </div>
</li>