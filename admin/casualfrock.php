<?php
include("config/connection.php");
include("config/session.php");

if (isset($_POST['submit'])) {
    // Get the uploaded images
    $image1 = $_FILES['image1']['name'];         // Name of the first uploaded image
    $tmpname1 = $_FILES['image1']['tmp_name'];   // Temporary name of the first uploaded file

    $image2 = $_FILES['image2']['name'];         // Name of the second uploaded image
    $tmpname2 = $_FILES['image2']['tmp_name'];   // Temporary name of the second uploaded file

    // Get the name and price from the form
    $name = $_POST['name'];
    $price = $_POST['price'];

    // Define the folder where you want to store the images
    $folder1 = "../images/umer/" . $image1;
    $folder2 = "../images/umer/" . $image2;

    // If both images are uploaded successfully
    if (move_uploaded_file($tmpname1, $folder1) && move_uploaded_file($tmpname2, $folder2)) {
        if (isset($_GET['uid'])) {
            // Update the record
            $uid = $_GET['uid'];
            $sql = "UPDATE `casualfrock` SET `image1`='$image1', `image2`='$image2', `name`='$name', `price`='$price' WHERE `sno`='$uid'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                echo "Record updated successfully!<br>";
            } else {
                echo "Error updating the record.<br>";
            }
        } else {
            // Insert new record
            $sql = "INSERT INTO `casualfrock`(`image1`, `image2`, `name`, `price`) VALUES ('$image1', '$image2', '$name', '$price')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                echo "Files '$image1' and '$image2' uploaded and database entry created successfully!<br>";
            } else {
                echo "Error inserting images into database.<br>";
            }
        }
    } else {
        echo "Failed to upload images.<br>";
    }
}

// Fetch data from the database for displaying
$query = "SELECT * FROM `casualfrock`";
$res = mysqli_query($conn, $query);

// If 'uid' is set, fetch the record to update it
if (isset($_GET['uid'])) {
    $uid = $_GET['uid'];
    $editQuery = "SELECT * FROM `casualfrock` WHERE `sno` = '$uid'";
    $editResult = mysqli_query($conn, $editQuery);
    $editRow = mysqli_fetch_assoc($editResult);
}

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
                        <h2>Frock </h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />

                <div class="row">
                    <!-- Form  -->
                    <div class="col-md-6">
                        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="post" enctype="multipart/form-data">

                            <label for="image1">Upload Image1:</label>
                            <input type="file" id="image1" name="image1" <?php echo isset($editRow) ? '' : 'required'; ?>><br><br>
                            <label for="image2">Upload Image2:</label>
                            <input type="file" id="image2" name="image2" <?php echo isset($editRow) ? '' : 'required'; ?>><br><br>
                            <label for="name"> Name :</label>
                            <input type="text" id="name" name="name" value="<?php echo isset($editRow) ? $editRow['name'] : ''; ?>" required><br><br>
                            <label for="price"> Price :</label>
                            <input type="text" id="price" name="price" value="<?php echo isset($editRow) ? $editRow['price'] : ''; ?>" required><br><br>

                            <input type="submit" name="submit" value="<?php echo isset($editRow) ? 'Update' : 'Add Frock'; ?>">
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
                                                <th>Image1</th>
                                                <th>Image2</th>
                                                <th>Name</th>
                                                <th>Price</th>
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
                                                    echo "<td>" . $row['image1'] . "</td>";
                                                    echo "<td>" . $row['image2'] . "</td>";
                                                    echo "<td>" . $row['name'] . "</td>";
                                                    echo "<td>" . $row['price'] . "</td>";
                                                    echo "<td class='button'><a href='?uid=" . $row['sno'] . "'>
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