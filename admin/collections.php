<?php
include("config/connection.php"); // Include database connection
include("config/session.php"); // Include session for admin login check

$successMessage = ''; // Initialize success message

// Fetch products from the database
$query = "SELECT * FROM collections";
$res = mysqli_query($conn, $query);

if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];

    // Fetch record to get image file names before deletion
    $fetchQuery = "SELECT image FROM collections WHERE sno = '$id'";
    $fetchResult = mysqli_query($conn, $fetchQuery);

    if (mysqli_num_rows($fetchResult) > 0) {
        $record = mysqli_fetch_assoc($fetchResult);
        $imagePath = "images/" . $record['image'];

        // Delete images from the server
        if (file_exists($imagePath)) {
            unlink($imagePath);
        }

        // Delete the record from the database
        $deleteQuery = "DELETE FROM collections WHERE sno = '$id'";
        if (mysqli_query($conn, $deleteQuery)) {
            $_SESSION['successMessage'] = "Record deleted successfully!";
            header("Location: collections.php");
            exit();
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }
    } else {
        echo "Record not found.";
    }
}

// Form submission for adding or updating products
if (isset($_POST['submit'])) {
    $name = $_POST['link'];

    $image = $_FILES['image']['name'];  // Get the uploaded image name
    $tmpname = $_FILES['image']['tmp_name'];  // Get the temporary file name

    // Define the folder where images will be stored
    $folder = "images/" . $image;

    // Check if updating an existing record
    if (!empty($_POST['uid'])) {
        $uid = $_POST['uid'];

        // Fetch the current record to retain existing image if no new one is uploaded
        $fetchQuery = "SELECT image FROM collections WHERE sno = '$uid'";
        $fetchResult = mysqli_query($conn, $fetchQuery);
        if ($fetchResult && mysqli_num_rows($fetchResult) > 0) {
            $record = mysqli_fetch_assoc($fetchResult);

            // If no new image uploaded, retain the old image path
            if (empty($image)) {
                $image = $record['image'];
            }

            // Move uploaded file to server if new image is uploaded
            if (!empty($image) && move_uploaded_file($tmpname, $folder)) {
                // Optionally delete old image if a new image is uploaded
                if (file_exists("images/" . $record['image']) && !empty($image)) {
                    unlink("images/" . $record['image']);
                }
            }

            // Update record in the database with the new or retained image paths
            $sql = "UPDATE `collections` SET `image`='$image', `link`='$link' WHERE `sno`='$uid'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $_SESSION['successMessage'] = "Record updated successfully!";
                header("Location: collections.php");
                exit();
            } else {
                echo "Error updating record.";
            }
        } else {
            echo "Record not found!";
        }
    } else {
        // Insert new record if no 'uid' is provided
        if (!empty($image) && move_uploaded_file($tmpname, $folder)) {
            $sql = "INSERT INTO `collections`(`image`,`link`) VALUES ('$image','$link')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $_SESSION['successMessage'] = "Record added successfully!";
                header("Location: collections.php");
                exit();
            } else {
                echo "Error adding record.";
            }
        } else {
            echo "Failed to upload image.";
        }
    }
}

// If 'uid' is set, fetch the record to update it
if (isset($_GET['uid'])) {
    $uid = $_GET['uid'];
    $editQuery = "SELECT * FROM `collections` WHERE `sno` = '$uid'";
    $editResult = mysqli_query($conn, $editQuery);
    $editRow = mysqli_fetch_assoc($editResult);
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

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
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Toastr CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
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

        .operation {
            text-align: center;
        }

        .upt {
            background-color: green;
            color: #fff;
            height: 40px;
            width: 90px;
            margin: 10px;
            border: none;

        }

        .del {
            background-color: red;
            color: #fff;
            height: 40px;
            width: 90px;
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
                        <h2> Collections </h2>
                    </div>
                </div>

                <hr />

                <div class="row">
                    <!-- Product form -->
                    <div class="col-md-6">
                        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="post" enctype="multipart/form-data">
                            <label for="image">Upload Image:</label>
                            <input type="file" id="image" name="image">
                            <?php if (isset($editRow)) { ?> <label><?php echo isset($editRow) ? $editRow['image'] : ''; ?></label>
                            <?php } ?>
                            <br><br>
                            <label for="name">Link:</label>
                            <input type="text" id="link" name="link" value="<?php echo isset($editRow) ? $editRow['link'] : ''; ?>" required>
                            <br><br>
                            <?php if (isset($editRow)): ?>
                                <input type="hidden" name="uid" value="<?php echo $editRow['sno']; ?>" />
                            <?php endif; ?>

                            <input type="submit" name="submit" value="<?php echo isset($editRow) ? 'Update' : 'Add'; ?>">
                        </form>
                    </div>

                    <div class="col-md-6" style="border-left:1px solid #ddd;">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Sno</th>
                                        <th>Image</th>
                                        <th>Link</th>
                                        <th>Operations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($res)) { ?>
                                        <tr class="operation">
                                            <td><?php echo $i; ?></td>
                                            <td><img src="images/<?php echo $row['image']; ?>" alt="Image" style="width: 100px; height: 80px;"></td>
                                            <td><?php echo $row['link']; ?></td>
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
    <!-- Include DataTables JS -->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        // Display success message using Toastr
        <?php if (isset($_SESSION['successMessage'])): ?>
            toastr.success('<?php echo $_SESSION['successMessage']; ?>');
            <?php unset($_SESSION['successMessage']); ?>
        <?php endif; ?>

        // Confirm before delete
        function confirmDelete() {
            return confirm('Are you sure you want to delete this record?');
        }
    </script>
</body>

</html>