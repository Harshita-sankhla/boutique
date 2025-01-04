<?php
include("config/connection.php");
include("config/session.php");

if (isset($_POST['submit'])) {
    $image = $_FILES['image']['name'];         // Get the name of the uploaded image
    $tmpname = $_FILES['image']['tmp_name'];   // Temporary name of the uploaded file
    $name = $_POST['name'];
    $price = $_POST['price'];

    // Define the folder where you want to store the image
    $folder = "../images/umer/" . $image;



    // Move the uploaded file to the destination folder
    if (move_uploaded_file($tmpname, $folder)) {
        // Insert the file name into the database (not the path)
        $sql = "INSERT INTO `necklace`(`image`,`name`,`price` ) VALUES ('$image','$name','$price')";

        $result = mysqli_query($conn, $sql);

        // Check if the database insertion was successfully
        if ($result) {
            echo "File uploaded and database entry created successfully!";
        } else {
            echo "Error inserting into database.";
        }
    } else {
        echo "Failed to upload the image.";
    }
}

// Fetch data from the database
$query = "SELECT * FROM `necklace`";
$res = mysqli_query($conn, $query);

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


    <style>
        h2 {
            text-align: center;
            color: #88888888;
        }

        label {
            font-weight: bold;
            color: #88888888;
            padding: 5px;
        }

        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 4px;
            box-sizing: border-box;
            border: none;
            border-bottom: 1px solid #ddd;
            background-color: white;
        }

        textarea {
            height: 100px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            background-color: #888888;
        }

        input[type="submit"]:hover {
            background-color: #666666;
            color: #fff;
        }

        /* Button style for Update and Delete */
        .button {
            width: 100%;
            /* max-height: 100px; */
            display: inline-block;
            text-decoration: none;
        }

        .button button {
            background-color: green;
            color: white;
            font-size: 15px;
            border: none;
            cursor: pointer;
            padding: 10px;
            width: 100%;
        }

        .delete-button button {
            background-color: red;
            color: white;
            font-size: 15px;
            border: none;
            cursor: pointer;
            padding: 10px;
            width: 100%;
        }
    </style>
</head>

<body>
    <div id="wrapper">
        <?php
        include("nav.php");
        ?>

        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Nacklase </h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />

                <div class="row">
                    <!-- Form  -->
                    <div class="col-md-6">
                        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="post" enctype="multipart/form-data">

                            <label for="image">Upload Image:</label>
                            <input type="file" id="image" name="image" required><br><br>
                            <label for="name"> Name :</label>
                            <input type="text" id="name" name="name" required><br><br>
                            <label for="price"> Price :</label>
                            <input type="text" id="price" name="price" required><br><br>

                            <input type="submit" name="submit" value="Add Necklace">
                        </form>

                    </div>
                    <!-- Advanced Tables -->
                    <div class="col-md-6" style="border-left:1px solid #ddd" ;>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Reservation Tables
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Sno</th>
                                                <th>Image</th>
                                                <th>Name</th>
                                                <th>price</th>
                                                <th>Update</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            // Display the fetched data
                                            if (mysqli_num_rows($res) > 0) {
                                                $sno = 1;
                                                while ($row = mysqli_fetch_assoc($res)) {
                                                    echo "<tr>";
                                                    echo "<td>" . $sno++ . "</td>";
                                                    echo "<td>" . $row['image'] . "</td>";
                                                    echo "<td>" . $row['name'] . "</td>";
                                                    echo "<td>" . $row['price'] . "</td>";
                                                    echo "<td class='button'><a href='form.php?uid=" . $row['sno'] . "'>
                                                        <button type='button'>Update</button></a></td>";

                                                    echo "<td class='delete-button'><a href='delete.php?id=" . $row['sno'] . "'>
                                                        <button type='button'>Delete</button></a></td>";
                                                    echo "</tr>";
                                                }
                                            } else {
                                                echo "<tr><td colspan='7'>No records found.</td></tr>";
                                            }
                                            ?>

                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <!-- /. ROW  -->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>

</html>