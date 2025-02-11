<?php
include("config/connection.php"); // Include database connection
include("config/session.php"); // Include session for admin login check

// Handle Delete Operation
if (isset($_GET['delete_id']) && !empty($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];

    // Ensure the delete_id is a number before proceeding with the deletion query
    if (is_numeric($delete_id)) {
        // Delete record from database
        $delete_query = "DELETE FROM contact WHERE sno = $delete_id";  // Replace "contact" with your actual table name
        $result = mysqli_query($conn, $delete_query);

        if ($result) {
            $_SESSION['successMessage'] = "Record deleted successfully!";
            header("Location: contact.php");
            exit;
        } else {
            // If there was an error with deletion, show an error message with the error
            echo "Error deleting record: " . mysqli_error($conn);
        }
    } else {
        echo "<script>alert('Invalid ID.'); window.location.href = 'contact.php';</script>"; // If ID is not numeric, show an error message
    }
}

// Fetch all contact messages from the database
$query = "SELECT * FROM contact";  // Replace "contact" with your actual table name
$result = mysqli_query($conn, $query);

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
    <link href="assets/css/custom.css" rel="stylesheet" />
    <style>
        th {
            text-align: center;
        }

        h2 {
            text-align: center;
            color: #88888888;
        }

        .operation {
            text-align: center;
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
                        <h2> Contact Us</h2>
                    </div>
                </div>

                <hr />

                <div class="row">
                    <!-- Display Table -->
                    <div class="col-md-12" style="border-left:1px solid #ddd;">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Sno</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Message</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // Display each row from the database
                                    $sno = 1;
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo "<tr class='operation'>";
                                        echo "<td>" . $sno++ . "</td>";
                                        echo "<td>" . htmlspecialchars($row['name']) . "</td>";
                                        echo "<td>" . htmlspecialchars($row['email']) . "</td>";
                                        echo "<td>" . htmlspecialchars($row['phone']) . "</td>";
                                        echo "<td>" . htmlspecialchars($row['message']) . "</td>";
                                        echo "<td><a href='?delete_id=" . $row['sno'] . "'><button type='button' class='del'>Delete</button></a></td>";
                                        echo "</tr>";
                                    }
                                    ?>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
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