<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="buy_now.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>

    </style>
</head>

<body>
    <!-- section First Start  -->
    <div class="container-fluid outer">
        <?php
        include("header.php")
        ?>
    </div>
    <!-- section  First End  -->

    <div class="row" style="min-height: 100vh; display: flex; ">
        <!-- <div class="col-2" style="padding-left: 7rem;"></div>      for spacing frrom left side  -->
        <div class="col-8-main-content" style="margin-left:6rem; margin-top: 7rem;">
            <div class="mb-3">
                <label for="emailInput" class="form-label" style="font:bold;">
                    <h3>Contact</h3>
                </label>
                <a href="login.php" class="ms-2" style="padding-left: 28rem; color: gray;">Log in</a>
                <br><br>
                <input type="email" class="form-control" id="emailInput" placeholder="Enter your email" style="height: 50px; width: 600px;">
                <br>
            </div>
            <div>
                <h3>Payment</h3>
                <small style="color: gray;">All transaction are secure and encrypted</small>
            </div>


            <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="onlinePayment" value="online" checked>
                <label class="form-check-label" for="onlinePayment">
                    Online Payment
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="cashOnDelivery" value="cash">
                <label class="form-check-label" for="cashOnDelivery">
                    Cash on Delivery
                </label>
            </div>
            <div id="paymentContent">
                <div id="onlineContent" class="payment-details py-3">
                    <h5 style="color: #999">Online Payment Details</h5>
                    <h5 style="color: #999">Please enter your card details below:</h5>
                    <input type="text" class="form-control my-2" placeholder="Card Number" style="width: 600px;">
                    <input type="text" class="form-control my-2" placeholder="Expiry Date" style=" width: 600px;">
                    <input type="text" class="form-control my-2" placeholder="CVV" style="width: 600px;">
                </div>
                <div id="cashContent" class="payment-details py-3" style="display: none;">
                    <h5 style="color: #999">Cash on Delivery Details</h5>
                    <h5 style="color: #999">Please ensure you have the exact amount ready for delivery.</h5>
                </div>
            </div>

            <div class="address">
                <br>
                <h5>billing address</h5>
                <select class="form-select" aria-label="Default select example" style="width: 600px;">
                    <option selected> Country/Region</option>
                    <option value="1">Afghanisthan</option>
                    <option value="2">Aland island</option>
                    <option value="3">Albania</option>
                    <option value="5">Arebia</option>
                    <option value="6">Angola</option>
                    <option value="7">Austria</option>
                    <option value="8">Aruba</option>
                    <option value="9">Australia</option>
                    <option value="10">Bangladesh</option>
                    <option value="11">bhutan</option>
                    <option value="12">Brazil</option>
                    <option value="13">Bulgaria</option>
                    <option value="14">Burundi</option>
                    <option value="15">Cambodia</option>
                    <option value="16">Canada</option>
                    <option value="17">Costa Rica</option>
                    <option value="18">Cook Island</option>
                    <option value="19">Denmark</option>
                    <option value="20">Djibouti</option>
                    <option value="21">Dominica</option>
                    <option value="22">Dominican Republic</option>
                    <option value="23">Ecuador</option>
                    <option value="24">Egypt</option>
                    <option value="25">EI Salvador</option>
                    <option value="26">Eritia</option>
                    <option value="27">Estonia</option>
                    <option value="28">Eswatini</option>
                    <option value="29">Ethiopia</option>
                    <option value="30">Falkland Island</option>
                    <option value="31">Fiji</option>
                    <option value="32">Finland</option>
                    <option value="33">France</option>
                    <option value="34">French Guiana</option>
                    <option value="35">Gabon</option>
                    <option value="36">Gambia</option>
                    <option value="37">Germany</option>
                    <option value="38">Ghana</option>
                    <option value="39">Greece</option>
                    <option value="40">Greenland</option>
                    <option value="41">Guyana</option>
                    <option value="42">Haiti</option>
                    <option value="43">Hong Kong SAR</option>
                    <option value="44">Hungary</option>
                    <option value="45">Iceland</option>
                    <option value="46">India</option>
                    <option value="47">Indonecia</option>
                    <option value="48">Iraq</option>
                    <option value="49">Ireland</option>
                    <option value="50">Isle Of Man</option>
                    <option value="51">Israel</option>
                    <option value="52">Italy</option>
                    <option value="53">Jamaica</option>
                    <option value="54">Japan</option>
                    <option value="55">Jersey</option>
                    <option value="56">Jordan</option>
                    <option value="57">Kazakhastan</option>
                    <option value="58">Kiribati</option>
                    <option value="59">Kosovo</option>
                    <option value="60">Kuwait</option>
                    <option value="61">laos</option>
                    <option value="62">Latvia</option>
                    <option value="63">Lithuania</option>
                    <option value="64"> Luxembourg</option>
                    <option value="65">Marcao SAR</option>
                    <option value="66">Madagascar</option>
                    <option value="67">Malawi</option>
                    <option value="68">Malaysia</option>
                    <option value="69">Maldives</option>
                    <option value="70">Mali</option>
                    <option value="71">Malta</option>
                    <option value="72">Mauritius</option>
                    <option value="73">Mayotte</option>
                    <option value="74">Mexico</option>
                    <option value="75">Moldove</option>
                    <option value="76">Monaco</option>
                    <option value="77">Mangolia</option>
                    <option value="78">Morocco</option>
                    <option value="79">Myanmar(Burma)</option>
                    <option value="80">Namibia</option>
                    <option value="81">Nauru</option>
                    <option value="82">Nepal</option>
                    <option value="83">Netherlands</option>
                    <option value="84">New Caledonia</option>
                    <option value="85">Nicaragua</option>
                    <option value="86">Niger</option>
                    <option value="87">Nigeria</option>
                    <option value="88">Niue</option>
                    <option value="89">Norway</option>
                    <option value="90">Oman</option>
                    <option value="92">Pakistan</option>
                    <option value="93">Panama</option>
                    <option value="94">Peru</option>
                    <option value="95">Poland</option>
                    <option value="96">Qatar</option>
                    <option value="97">Reunion</option>
                    <option value="98">Romania</option>
                    <option value="99">Russia</option>
                    <option value="100">Rwanda</option>
                    <option value="102">Samao</option>
                    <option value="103">Saudi Arabia</option>
                    <option value="104">Sanagal</option>
                    <option value="105">South Africa</option>
                    <option value="106">South Korea</option>
                    <option value="107">South Sudan</option>
                    <option value="108">Spain</option>
                    <option value="109">Sri Lanka</option>
                    <option value="111">Sudan</option>
                    <option value="112">Suriname</option>
                    <option value="113">Switzerland</option>
                    <option value="114">Taiwan</option>
                    <option value="115">Tajikstan</option>
                    <option value="116">Thailand</option>
                    <option value="117">Togo</option>
                    <option value="118">Tonga</option>
                    <option value="119">Tunisia</option>
                    <option value="120">Turkiye</option>
                    <option value="121">US Outlying Island</option>
                    <option value="122">Uganad</option>
                    <option value="123">Ukraine</option>
                    <option value="124">United Arab Emirates</option>
                    <option value="125">United Kingdon</option>
                    <option value="126">United States</option>
                    <option value="127">Vanuatu</option>
                    <option value="128">Vatican City</option>
                    <option value="129">Vietnam</option>
                    <option value="130">Western Sahara</option>
                    <option value="132">Yemen</option>
                    <option value="133">Zambia</option>
                    <option value="134">Zimnbabev</option>
                </select>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <input type="text" class="form-control" id="firstName" placeholder="First Name" style="width: 230px;">
                </div>
                <div class="col">
                    <input type="text" class="form-control" id="lastName" placeholder="Last Name" style="width: 230px;">
                </div>
            </div>
            <div class="mt-3">
                <input type="text" class="form-control" id="address" placeholder="Address" style="width: 600px;">
            </div>
            <div class=" mt-3">
                <input type="text" class="form-control" id="city" placeholder="City" style="width: 600px;">
            </div>
            <div class="mt-3">
                <input type="text" class="form-control" id="phone" placeholder="Phone Number" style="width: 600px;">
            </div>

            <button class="pay-now-btn my-4" id="payNowBtn" style="width: 600px;">Pay Now</button>

        </div>
        <div class="col-8" style=" flex: 1;">
            <div class="row mb-4" style="margin-top: 6rem;">
                <div class="col-md-3">
                    <img src="images/3D11.png" alt="" style="height: 130px; width: 110px;">
                </div>
                <div class="col-md-9">
                    <span style="font-size: 1rem;">product_name</span>
                    <span style=" font-size: 1rem; margin-left: 40px;">Rs. 12,000.00</span>
                    <h6 style="font-size: 1rem; color:#777"> XL</h6>
                </div>
            </div>
            <div>
                <span style="font-weight: bold; margin-left: 25rem;">Total :</span>
            </div>
        </div>
    </div>

    <!-- footer Start   -->
    <?php include("footer.php") ?>
    <!-- footer End  -->
    <script>
        const onlinePayment = document.getElementById('onlinePayment');
        const cashOnDelivery = document.getElementById('cashOnDelivery');
        const onlineContent = document.getElementById('onlineContent');
        const cashContent = document.getElementById('cashContent');

        // Function to toggle payment content based on selected radio button
        function togglePaymentContent() {
            if (onlinePayment.checked) {
                onlineContent.style.display = 'block';
                cashContent.style.display = 'none';
            } else if (cashOnDelivery.checked) {
                onlineContent.style.display = 'none';
                cashContent.style.display = 'block';
            }
        }

        // Add event listeners to radio buttons
        onlinePayment.addEventListener('change', togglePaymentContent);
        cashOnDelivery.addEventListener('change', togglePaymentContent);

        // Validation for Pay Now button
        payNowBtn.addEventListener('click', function() {
            const firstName = document.getElementById('firstName');
            const lastName = document.getElementById('lastName');
            const address = document.getElementById('address');
            const city = document.getElementById('city');
            const phone = document.getElementById('phone');

            let isValid = true;

            // Reset previous error styles
            [firstName, lastName, address, city, phone].forEach(input => {
                input.classList.remove('error');
            });

            // Check if fields are filled
            if (!emailInput.value) {
                emailInput.classList.add('error');
                isValid = false;
            }
            if (!firstName.value) {
                firstName.classList.add('error');
                isValid = false;
            }
            if (!lastName.value) {
                lastName.classList.add('error');
                isValid = false;
            }
            if (!address.value) {
                address.classList.add('error');
                isValid = false;
            }
            if (!city.value) {
                city.classList.add('error');
                isValid = false;
            }
            if (!phone.value) {
                phone.classList.add('error');
                isValid = false;
            }

            if (isValid) {
                // Proceed with payment
                alert('Payment processed!');
            }
        });
    </script>
    <!-- Link to the external script.js -->
    <script src="js/script.js"></script>
    <script src="page.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>



</body>

</html>