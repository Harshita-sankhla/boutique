<?php
include("config/connection.php"); // Include database connection
include("config/session.php"); // Include session for admin login check

// Initialize success message
$successMessage = '';

// Delete operation
if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];

    // Fetch record to get image file names before deletion
    $fetchQuery = "SELECT image1, image2 FROM partywestern WHERE sno = '$id'";
    $fetchResult = mysqli_query($conn, $fetchQuery);

    if (mysqli_num_rows($fetchResult) > 0) {
        $record = mysqli_fetch_assoc($fetchResult);

        // Paths to images on the server
        $image1Path = "images/" . $record['image1'];
        $image2Path = "images/" . $record['image2'];

        // Delete images from the server
        if (file_exists($image1Path)) {
            unlink($image1Path);
        }
        if (file_exists($image2Path)) {
            unlink($image2Path);
        }

        // Delete the record from the database
        $deleteQuery = "DELETE FROM partywestern WHERE sno = '$id'";
        if (mysqli_query($conn, $deleteQuery)) {
            $successMessage = "Record deleted successfully!";
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }
    } else {
        echo "Record not found.";
    }
}

// Form submission for adding or updating products
if (isset($_POST['submit'])) {
    // Get name and price from the form
    $name = $_POST['name'];
    $price = $_POST['price'];

    // Get uploaded image details
    $image1 = $_FILES['image1']['name'];
    $tmpname1 = $_FILES['image1']['tmp_name'];
    $image2 = $_FILES['image2']['name'];
    $tmpname2 = $_FILES['image2']['tmp_name'];

    // Define the folder where images will be stored
    $folder1 = "images/" . $image1;
    $folder2 = "images/" . $image2;

    // Check if updating an existing record
    if (!empty($_POST['uid'])) {
        $uid = $_POST['uid'];

        // Fetch the current record from the database to retain the existing images if no new ones are uploaded
        $fetchQuery = "SELECT image1, image2 FROM partywestern WHERE sno = '$uid'";
        $fetchResult = mysqli_query($conn, $fetchQuery);
        if ($fetchResult && mysqli_num_rows($fetchResult) > 0) {
            $record = mysqli_fetch_assoc($fetchResult);

            // If no new image uploaded, retain the old image paths
            if (empty($image1)) {
                $image1 = $record['image1'];
            }
            if (empty($image2)) {
                $image2 = $record['image2'];
            }

            // Move uploaded files to the server if new images are uploaded
            if (!empty($image1) && move_uploaded_file($tmpname1, $folder1)) {
                // Optionally delete old image if a new image is uploaded
                if (file_exists("images/" . $record['image1'])) {
                    unlink("images/" . $record['image1']);
                }
            }

            if (!empty($image2) && move_uploaded_file($tmpname2, $folder2)) {
                // Optionally delete old image if a new image is uploaded
                if (file_exists("images/" . $record['image2'])) {
                    unlink("images/" . $record['image2']);
                }
            }

            // Update record in the database with the new or retained image paths
            $sql = "UPDATE `partywestern` SET `image1`='$image1', `image2`='$image2', `name`='$name', `price`='$price' WHERE `sno`='$uid'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $successMessage = "Record updated successfully!";
            } else {
                echo "Error updating record.";
            }
        } else {
            echo "Record not found!";
        }
    } else {
        // Insert new record if no 'uid' is provided
        if (!empty($image1) && move_uploaded_file($tmpname1, $folder1) && !empty($image2) && move_uploaded_file($tmpname2, $folder2)) {
            $sql = "INSERT INTO `partywestern`(`image1`, `image2`, `name`, `price`) VALUES ('$image1', '$image2', '$name', '$price')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $successMessage = "Record added successfully!";
            } else {
                echo "Error adding record.";
            }
        } else {
            echo "Failed to upload images.";
        }
    }
}

// Fetch products from the database
$query = "SELECT * FROM `partywestern`";
$res = mysqli_query($conn, $query);

// If 'uid' is set, fetch the record to update it
if (isset($_GET['uid'])) {
    $uid = $_GET['uid'];
    $editQuery = "SELECT * FROM `partywestern` WHERE `sno` = '$uid'";
    $editResult = mysqli_query($conn, $editQuery);
    $editRow = mysqli_fetch_assoc($editResult);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
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
    <!-- Toastr CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
    <style>
        th {
            text-align: center;
        }

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

        .button {
            width: 100%;
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
        <?php include("nav.php"); ?>

        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>New Westerns</h2>
                    </div>
                </div>

                <hr />

                <div class="row">
                    <!-- Product form -->
                    <div class="col-md-4">
                        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="post" enctype="multipart/form-data">
                            <label for="image1">Upload Image1:</label>
                            <input type="file" id="image1" name="image1">
                            <?php if (isset($editRow)) { ?> <label><?php echo isset($editRow) ? $editRow['image1'] : ''; ?></label>
                            <?php } ?>
                            <br><br>
                            <label for="image2">Upload Image2:</label>
                            <input type="file" id="image2" name="image2">
                            <?php if (isset($editRow)) { ?> <label><?php echo isset($editRow) ? $editRow['image2'] : ''; ?></label>
                            <?php } ?>
                            <br><br>
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" value="<?php echo isset($editRow) ? $editRow['name'] : ''; ?>" required>
                            <br><br>
                            <label for="price">Price:</label>
                            <input type="text" id="price" name="price" value="<?php echo isset($editRow) ? $editRow['price'] : ''; ?>" required>
                            <br><br>

                            <?php if (isset($editRow)): ?>
                                <input type="hidden" name="uid" value="<?php echo $editRow['sno']; ?>" />
                            <?php endif; ?>

                            <input type="submit" name="submit" value="<?php echo isset($editRow) ? 'Update' : 'Add New'; ?>">
                        </form>
                    </div>

                    <!-- Product table -->
                    <div class="col-md-8" style="border-left:1px solid #ddd;">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Product List
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
                                                <th colspan="2">Operations</th>
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
                                                    echo "<td class='button'><a href='?uid=" . $row['sno'] . "'><button type='button'>Update</button></a></td>";
                                                    echo "<td class='delete-button'><a href='?delete_id=" . $row['sno'] . "'><button type='button' onclick='return confirmDelete()'>Delete</button></a></td>";
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

            </div>
        </div>
    </div>


    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Toastr JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        // Debugging: Log success message to console to check if it is passed
        <?php if ($successMessage): ?>
            console.log('Success Message:', '<?php echo $successMessage; ?>');
            toastr.success('<?php echo $successMessage; ?>');
        <?php endif; ?>

        // Confirm before delete
        function confirmDelete() {
            return confirm('Are you sure you want to delete this record?');
        }
    </script>

</body>

</html>