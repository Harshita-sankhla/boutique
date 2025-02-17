<?php
// Calculate total number of items in cart
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
        top: -4px;
        right: -4px;
        background-color: #999;
        color: white;
        border-radius: 50%;
        padding: 2px 6px;
        font-size: 8px;
        min-width: 18px;
        text-align: center;
    }

    .cart-dropdown {
        display: none;
        position: fixed;
        /* Changed from absolute to fixed */
        right: 0;
        top: 0;
        /* Start from the very top */
        height: 100vh;
        /* Full viewport height */
        background-color: white;
        min-width: 400px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        z-index: 1000;
        margin: 0;
        /* Remove any margin */
        padding: 0;
        /* Remove any padding */
        border-radius: 0;
        /* Remove border radius */
    }

    .cart-dropdown.show {
        display: block;
    }

    .cart-header {
        padding: 20px;
        position: sticky;
        top: 0;
        background: white;
        z-index: 1;
        margin: 0;
        /* Remove any margin */
    }

    .cart-items {
        height: calc(100vh - 240px);
        /* Adjust based on header and footer height */
        overflow-y: auto;
        padding: 0 20px;
        margin: 0;
        /* Remove any margin */
    }

    .cart-footer {
        padding: 20px;
        position: sticky;
        bottom: 0;
        background: white;
        border-top: 1px solid #eee;
        margin: 0;
        /* Remove any margin */
    }

    /* Hide scrollbar for Chrome, Safari and Opera */
    .cart-items::-webkit-scrollbar {
        display: none;
    }

    /* Hide scrollbar for IE, Edge and Firefox */
    .cart-items {
        -ms-overflow-style: none;
        /* IE and Edge */
        scrollbar-width: none;
        /* Firefox */
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
            <!-- Header Section -->
            <div class="cart-header">
                <h3 style="font-family:'Times New Roman'; margin-top: 0;">Your cart</h3>
                <span class="close-btn" id="close-btn" style="position: absolute; right: 20px; top: 20px; cursor: pointer;">&times;</span>
                <span style="font-size: 0.7rem;">PRODUCTS</span>
                <hr style="margin: 10px 0;">
            </div>

            <!-- Scrollable Items Section -->
            <div class="cart-items">
                <?php if (!isset($_SESSION['cart']) || count($_SESSION['cart']) == 0): ?>
                    <p style="text-align: center;">Your cart is empty.</p>
                <?php else: ?>
                    <?php
                    $subtotal = 0;
                    foreach ($_SESSION['cart'] as $prod_id => $item):
                        $item_total = $item['prod_price'] * $item['quantity'];
                        $subtotal += $item_total;
                    ?>
                        <div class="row mb-4" style="margin-bottom: 10px;">
                            <div class="col-md-4">
                                <img src="<?php echo isset($item['prod_image']) ? $item['prod_image'] : 'images/default.png'; ?>" alt="" style="height: 170px; width: 130px;">
                            </div>
                            <div class="col-md-8" style="padding-left: 40px;">
                                <h6><?php echo htmlspecialchars($item['prod_name']); ?></h6>
                                <h6 style="font-size: 0.9rem;">Rs. <?php echo htmlspecialchars($item['prod_price']); ?></h6>
                                <?php if (isset($item['prod_size'])): ?>
                                    <h6 style="font-size: 0.9rem;">Size: <?php echo htmlspecialchars($item['prod_size']); ?></h6>
                                <?php endif; ?>
                                <div class="counter1-box mt-5 d-flex align-items-center">
                                    <button onclick="updateCart('<?php echo $prod_id; ?>', -1)">-</button>
                                    <span class="mx-2" data-quantity="<?php echo $prod_id; ?>"><?php echo htmlspecialchars($item['quantity']); ?></span>
                                    <button onclick="updateCart('<?php echo $prod_id; ?>', 1)">+</button>
                                    <a href="remove_from_cart.php?prod_id=<?php echo $prod_id; ?>" class="nav-link ms-5 delete-product">
                                        <i class="fa-solid fa-trash" style="font-size: 1rem;"></i>
                                    </a>


                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>

            <!-- Fixed Footer Section -->
            <div class="cart-footer">
                <hr style="margin: 0 0 10px 0;">
                <p style="text-align: right; margin: 0 10px 10px 0;">
                    <span>Total : Rs. <?php echo isset($subtotal) ? $subtotal : '0'; ?></span>
                </p>
                <button onclick="handleBuyNow()" class="btn w-100" id="checkout-btn" style="background-color: #aaa; color: #fff;">Check out</button>
            </div>
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

        // Handle delete button clicks
        document.addEventListener('click', function(e) {
            if (e.target.closest('.delete-product')) {
                // Your existing delete code
            }
        });
    });

    // Function to update cart quantity
    function updateCart(prodId, change) {
        const quantitySpan = document.querySelector(`[data-quantity="${prodId}"]`);
        const updateBtn = event.target;
        const buttonContainer = updateBtn.parentElement;

        // Disable buttons during update
        buttonContainer.querySelectorAll('button').forEach(btn => {
            btn.style.opacity = '0.5';
            btn.disabled = true;
        });

        fetch('update_cart_quantity.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `prod_id=${encodeURIComponent(prodId)}&change=${encodeURIComponent(change)}`
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Update quantity display
                    quantitySpan.textContent = data.new_quantity;

                    // Update cart badge
                    const cartBadge = document.querySelector('.cart-badge');
                    if (cartBadge) {
                        cartBadge.textContent = data.total_items;
                    }

                    // Update total
                    document.querySelector('.cart-footer p strong').textContent =
                        'Total: Rs. ' + data.subtotal;

                } else {
                    alert('Failed to update quantity. Please try again.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred. Please try again.');
            })
            .finally(() => {
                // Re-enable buttons
                buttonContainer.querySelectorAll('button').forEach(btn => {
                    btn.style.opacity = '1';
                    btn.disabled = false;
                });
            });
    }

    function handleBuyNow() {
        window.location.href = "buy_now.php";
    }
</script>