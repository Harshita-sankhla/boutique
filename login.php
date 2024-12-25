
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Login Page</title>

</head>
<body>
    <div class="container-fluid d-flex justify-content-center align-items-center vh-100" style="background-color: #f7f7f7;">
        <div class="card rounded" style="width: 500px; height: 500px;">
            <div class="card-body custom-padding "style="padding-top:150px">
                <h3 class="card-title mb-4 ">Login</h3>
                <p class="text-nowrap  text-truncate mb-4" style="max-width: 100%;">Enter your email and we'll send you a code</p>
                <form id="login-form" action="#" method="POST">
                    <div class="form-group mb-4">
                        <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-dark w-100 py-2 fw-bold">continue</button>
                    </div>
                    <div class="text-center mt-4">
                        <div class="spinner-border text-primary" role="status" id="loading-spinner">
                            <span class="sr-only">***</span>
                        </div>
                        <div class="text-start pt-3">
                            <p>
                                <a href="privacy.html" class=" hover-underline text-dark">Privacy</a>
            
                            </p>
                        </div>
                    </div>
                </form>
            </div> 
        </div>
    </div>


    <!-- External JavaScript  -->
     <script src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>   
    
    </script>
</body>
</html>

