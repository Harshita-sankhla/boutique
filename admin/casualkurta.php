<?php
include("config/connection.php"); // Include database connection
include("config/session.php"); // Include session for admin login check

// Initialize success message
$successMessage = '';

// Fetch products from the database
$query = "SELECT * FROM casualkurta";
$res = mysqli_query($conn, $query);

if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];

    // Fetch record to get image file names before deletion
    $fetchQuery = "SELECT image1, image2 , image3  FROM casualkurta WHERE sno = '$id'";
    $fetchResult = mysqli_query($conn, $fetchQuery);

    if (mysqli_num_rows($fetchResult) > 0) {
        $record = mysqli_fetch_assoc($fetchResult);

        // Paths to images on the server
        $image1Path = "images/" . $record['image1'];
        $image2Path = "images/" . $record['image2'];
        $image3Path = "images/" . $record['image3'];

        // Delete images from the server
        if (file_exists($image1Path)) {
            unlink($image1Path);
        }
        if (file_exists($image2Path)) {
            unlink($image2Path);
        }
        if (file_exists($image3Path)) {
            unlink($image3Path);
        }

        // Delete the record from the database
        $deleteQuery = "DELETE FROM casualkurta WHERE sno = '$id'";
        if (mysqli_query($conn, $deleteQuery)) {
            $_SESSION['successMessage'] = "Record deleted successfully!";
            header("Location: casualkurta.php");
            exit;
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
    $desc = $_POST['desc'];
    $shipping = $_POST['shipping'];

    // Get uploaded image details
    $image1 = $_FILES['image1']['name'];
    $tmpname1 = $_FILES['image1']['tmp_name'];
    $image2 = $_FILES['image2']['name'];
    $tmpname2 = $_FILES['image2']['tmp_name'];
    $image3 = $_FILES['image3']['name'];
    $tmpname3 = $_FILES['image3']['tmp_name'];

    // Define the folder where images will be stored
    $folder1 = "images/" . $image1;
    $folder2 = "images/" . $image2;
    $folder3 = "images/" . $image3;

    // Check if updating an existing record
    if (!empty($_POST['uid'])) {
        $uid = $_POST['uid'];

        // Fetch the current record from the database to retain the existing images if no new ones are uploaded
        $fetchQuery = "SELECT image1, image2, image3 FROM casualkurta WHERE sno = '$uid'";
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
            if (empty($image3)) {
                $image3 = $record['image3'];
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

            if (!empty($image3) && move_uploaded_file($tmpname3, $folder3)) {
                // Optionally delete old image if a new image is uploaded
                if (file_exists("images/" . $record['image3'])) {
                    unlink("images/" . $record['image3']);
                }
            }

            // Update record in the database with the new or retained image paths
            $sql = "UPDATE `casualkurta` SET `image1`='$image1', `image2`='$image2', `image3`='$image3', `name`='$name', `price`='$price' ,`desc`='$desc', `shipping`='$shipping' WHERE `sno`='$uid'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $_SESSION['successMessage'] = "Record updated successfully!";
                header("Location: casualkurta.php");
                exit;
            } else {
                echo "Error updating record.";
            }
        } else {
            echo "Record not found!";
        }
    } else {
        // Insert new record if no 'uid' is provided
        if (!empty($image1) && move_uploaded_file($tmpname1, $folder1) && !empty($image2) && move_uploaded_file($tmpname2, $folder2) && !empty($image3) && move_uploaded_file($tmpname3, $folder3)) {
            $sql = "INSERT INTO `casualkurta`(`image1`, `image2`, `image3`, `name`, `price`, `desc`, `shipping`) VALUES ('$image1', '$image2', '$image3', '$name', '$price', '$desc', '$shipping')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $_SESSION['successMessage'] = "Record added successfully!";
                header("Location: casualkurta.php");
                exit;
            } else {
                echo "Error adding record.";
            }
        } else {
            echo "Failed to upload images.";
        }
    }
}

// If 'uid' is set, fetch the record to update it
if (isset($_GET['uid'])) {
    $uid = $_GET['uid'];
    $editQuery = "SELECT * FROM `casualkurta` WHERE `sno` = '$uid'";
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
    <!-- Include DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Toastr CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
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

        textarea {
            height: 30px;
        }

        .operation {
            text-align: center;
        }

        .upt {
            background-color: green;
            color: #fff;
            height: 40px;
            width: 70px;
            margin: 5px;
            border: none;

        }

        .del {
            background-color: red;
            color: #fff;
            height: 40px;
            width: 70px;
            border: none;
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
                        <h2> Kurtas </h2>
                    </div>
                </div>

                <hr />

                <div class="row">
                    <!-- Product form -->
                    <div class="col-md-3">
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
                            <label for="image3">Upload Image3:</label>
                            <input type="file" id="image3" name="image3">
                            <?php if (isset($editRow)) { ?> <label><?php echo isset($editRow) ? $editRow['image3'] : ''; ?></label>
                            <?php } ?>
                            <br><br>
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" value="<?php echo isset($editRow) ? $editRow['name'] : ''; ?>" required>
                            <br><br>
                            <label for="price">Price:</label>
                            <input type="text" id="price" name="price" value="<?php echo isset($editRow) ? $editRow['price'] : ''; ?>" required>
                            <br><br>
                            <label for="desc">description:</label>
                            <textarea type="text" id="desc" name="desc" value="<?php echo isset($editRow) ? $editRow['desc'] : ''; ?>" required> </textarea>
                            <br><br>
                            <label for="shipping">Shipping:</label>
                            <textarea type="text" id="shipping" name="shipping" value="<?php echo isset($editRow) ? $editRow['shipping'] : ''; ?>" required> </textarea>
                            <br><br>

                            <?php if (isset($editRow)): ?>
                                <input type="hidden" name="uid" value="<?php echo $editRow['sno']; ?>" />
                            <?php endif; ?>

                            <input type="submit" name="submit" value="<?php echo isset($editRow) ? 'Update' : 'Add kurta '; ?>">
                        </form>
                    </div>

                    <div class="col-md-9" style="border-left:1px solid #ddd;">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Sno</th>
                                        <th>Image1</th>
                                        <th>Image2</th>
                                        <th>Image3</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>description</th>
                                        <th>Shipping</th>
                                        <th>Operations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($res)) { ?>
                                        <tr class="operation">
                                            <td><?php echo $i; ?></td>
                                            <td><img src="images/<?php echo $row['image1']; ?>" alt="Image1" style="width: 80px; height: 80px;"></td>
                                            <td><img src="images/<?php echo $row['image2']; ?>" alt="Image2" style="width: 80px; height: 80px;"></td>
                                            <td><img src="images/<?php echo $row['image3']; ?>" alt="Image3" style="width: 80px; height: 80px;"></td>
                                            <td><?php echo $row['name']; ?></td>
                                            <td><?php echo $row['price']; ?></td>
                                            <td><?php echo $row['desc']; ?></td>
                                            <td><?php echo $row['shipping']; ?></td>
                                            <td>
                                                <a href="?uid=<?php echo $row['sno']; ?>"><button type="button" class="upt">Update</button></a>
                                                <a href="?delete_id=<?php echo $row['sno']; ?>"><button type="button" class="del" onclick="return confirmDelete()">Delete</button></a>
                                            </td>
                                        </tr>
                                    <?php
                                        $i++;
                                    } ?>
                                </tbody>
                            </table>
                        </div>

                        <!-- DataTables Initialization -->
                        <script>
                            $(document).ready(function() {
                                $('#dataTables-example').DataTable();
                            });
                        </script>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Toastr JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Include DataTables JS -->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        // Show success message if it's set in session
        <?php if (isset($_SESSION['successMessage'])): ?>
            toastr.success('<?php echo $_SESSION['successMessage']; ?>');
            <?php unset($_SESSION['successMessage']); ?> // Clear the session message
        <?php endif; ?>

        // Confirm before delete
        function confirmDelete() {
            return confirm('Are you sure you want to delete this record?');
        }
    </script>

</body>

</html>