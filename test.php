<div class="row">
    <div class="col-md-6 col-12 px-5 py-5 ">
        <img id="mainImage" src="admin/images/<?php echo $image1; ?>" class="img-fluid size" alt="Product Image">
        <div class="row mt-3">
            <div class="col-4 col-md-3 text-center">
                <img src="admin/images/<?php echo $image1; ?>" class="img-fluid thumbnail" alt=""
                    onclick="changeImage('admin/images/<?php echo $image1; ?>')">
            </div>
            <div class="col-4 col-md-3 text-center">
                <img src="admin/images/<?php echo $image2; ?>" class="img-fluid thumbnail" alt=""
                    onclick="changeImage('admin/images/<?php echo $image2; ?>')">
            </div>
            <div class="col-4 col-md-3 text-center">
                <img src="admin/images/<?php echo $image3; ?>" class="img-fluid thumbnail" alt=""
                    onclick="changeImage('admin/images/<?php echo $image3; ?>')">
            </div>
        </div>
    </div>
    <div class="col-md-6 col-12">
        <h2 style="padding-top: 8rem;"><?php echo $name; ?></h2>
        <p style="padding-top: 1rem; margin-bottom: 0;color:#444444 ;">Rs. <?php echo $price; ?> </p>
        <small style="color: #444444;">Shipping calculated at checkout.</small>
        <hr style="border: 1px solid #444444; margin: 1rem 0;">
        <div class="d-flex justify-content-center flex-wrap" style="padding-top: 1rem;">
            <p style="padding-right: 3rem;">size</p>
            <!-- Small Round Buttons -->
            <button class="btn btn-light btn-round mx-2 border-black custom-hover">S</button>
            <button class="btn btn-light btn-round mx-2 border-black custom-hover">M</button>
            <button class="btn btn-light btn-round mx-2 border-black custom-hover">L</button>
            <button class="btn btn-light btn-round mx-2 border-black custom-hover">XL</button>
            <button class="btn btn-light btn-round mx-2 border-black custom-hover">XXL</button>
            <button class="btn btn-light btn-round mx-2 border-black custom-hover">XXXL</button>

            <!-- Large Round Button -->
            <button id="customSizeBtn" class="btn btn-light btn-large mx-2 border-black" style="width: 100px;">Custom</button>
        </div>
        <!-- Input box for custom size (hidden by default) -->
        <div id="customSizeInput" style="display: none; margin-top: 1rem; text-align: center;">
            <input type="text" class="form-control custom-input-border" placeholder="Enter your custom size"
                style="width: 650px; margin: 0 auto; margin-top: 2rem;">
        </div>
        <hr style="border: 1px solid #444444; margin: 1rem 0;">

        <p class="size-chart">Size Chart</p>
        <!-- size chart pop up -->

        <!-- Overlay -->
        <div class="overlay" id="overlay"></div>

        <!-- Popup -->
        <div class="popup" id="sizeChartPopup">
            <h3>Size Chart for Women</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Size</th>
                        <th>Chest (inches)</th>
                        <th>Waist (inches)</th>
                        <th>Hips (inches)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>S</td>
                        <td>34-35</td>
                        <td>26-27</td>
                        <td>36-37</td>
                    </tr>
                    <tr>
                        <td>M</td>
                        <td>36-37</td>
                        <td>28-29</td>
                        <td>38-39</td>
                    </tr>
                    <tr>
                        <td>L</td>
                        <td>38-40</td>
                        <td>30-32</td>
                        <td>40-42</td>
                    </tr>
                    <tr>
                        <td>XL</td>
                        <td>41-43</td>
                        <td>33-35</td>
                        <td>43-45</td>
                    </tr>
                </tbody>
            </table>
            <button class="btn btn-secondary" id="closePopup">Close</button>
        </div>

        <!-- Counter Box -->
        <div class="d-flex flex-wrap">
            <div class="counter-box">
                <button id="decrement1">-</button>
                <span id="counter1">1</span>
                <button id="increment1">+</button>
            </div>
            <div class="counter-box" style="margin-left: 50px; width: 400px;">
                <p>Add to Cart</p>
            </div>
        </div>
        <div class="buy" style="width: 650px; background-color: #999; color: white; padding: 5px; text-align: center; margin-bottom: 50px;">
            <p style="margin:8px 0">Buy it now</p>
        </div>

        <div class="container mt-5 ">
            <div>
                <span class="tab active" id="descriptionTab">Description</span>
                <span class="tab" id="shippingTab">Shipping</span>
            </div>

            <!-- Display description fetched from database -->
            <div class="content active" id="descriptionContent">
                <p><?php echo $description; ?></p>
            </div>

            <!-- Display shipping fetched from database -->
            <div class="content" id="shippingContent">
                <p><?php echo $shipping; ?></p>
            </div>
        </div>
        <br>
        <hr style="border: 1px solid #444444; margin: 1rem 0;">
    </div>
</div>