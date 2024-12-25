<!doctype html>
<html lang="en">
    <!doctype html>
    <html lang="en">
    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Boutique</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- Style CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Font Awesome for Icons -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    </head>
    
    <body>
        <!-- section header Start  -->
        <div class="container-fluid outer">
        <?php
            include("header.php")
        ?>
        </div>
        <!-- section  header End  -->
    
    <div class="contactus">
        <div ciass="title">
             <h2 >GET IN TOUCH </h2>
        </div> 
         <div class="box">
             <!-- form -->
             <div class="contact form " style="background-color: #f7f7f7;">
                 <h5>CONTACT US</h5>
                 <form>
                     <div class="formbox ">
                         
                         <div class="row50">
                             <div class="inputbox">
                                 <br> <input type="text" class="floating-label" value placeholder="Name"  required pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed">
 
                             </div>
                             <div class="inputbox">
                                 
                                 <br><input type="text" value placeholder="Email" required>
                                 
                             </div>
                             <div class="inputbox ">
                                 
                                 <br> <input type="text" value placeholder="Phone number" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number">
                                 
                             </div>
                             <div class="inputbox">
                                 
                                 <br> <textarea placeholder="Comment"></textarea>
                                 
                             </div>
                         </div>
                         <div class="row100">
                             <div class="inputbox">
                                <br> <input type="submit" value="Send">
                             </div>
                            </div>
                     </div>
                 </form>
             </div>
             
               <!-- infobox -->
                <div class="contact info ">
             <h3>lET'S HAVE A CHAT</h3>
             <hr>
             <div class="infobox">
                 <div>
                     <span></span>
                     <p>xyz@gmail.com<br>
                        +7976198665</p>
                 </div>
                </br><h3>VISIT OUR LOCATION</h3>
             <hr>
             <p>77/A Hill Road <br>
                 Next to McDonald's, Bandra West, <br>
                 Mumbai - 400050, Maharashtra</p>
             </div>
             <div class="infobox">
        <br><h3>WORK TIME</h3>
             <hr>
             <p>7 Days a week<br>
                 from 10.00 AM to 6.00 PM</p>
             </div>
            </div>
         
        </div>
    </div>
   <!-- New Map Section -->
    <div class="map">
        <h3>OUR LOCATION</h3>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354345098473!2d144.95373531531785!3d-37.81627997975127!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f1f1b37%3A0x5045675218ceed30!2sMelbourne%20CBD%2C%20Victoria%2C%20Australia!5e0!3m2!1sen!2sus!4v1632993998670!5m2!1sen!2sus" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
 </div>
 

    <!-- footer Start   -->
    <?php
        include("footer.php")
    ?>
    <!-- footer End  -->


    <!-- Link to the external script.js -->
    <script src="../../js/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>