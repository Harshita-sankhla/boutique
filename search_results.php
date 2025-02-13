<?php
// search.php

// Include the database connection
include('admin/config/connection.php'); // Make sure this file contains your correct database connection.
include("admin/config/session.php"); // Include session for admin login check


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the search query from the user
    $search = mysqli_real_escape_string($conn, $_POST['search']);

    // Debugging: Check the search term received from the form
    echo "<p>Search term: $search</p>";

    // If search term is empty
    if (empty($search)) {
        echo "<p>Please enter a search term.</p>";
    } else {
        // Query to search in the 'partyanarkali' table
        $sql_anarkali = "SELECT * FROM partyanarkali WHERE name LIKE '%$search%'";

        // Debugging: Check the SQL query being executed
        echo "<p>SQL Query: $sql_anarkali</p>";

        // Execute the query for anarkali dresses
        $anarkali_result = mysqli_query($conn, $sql_anarkali);

        // Check if the query failed
        if (!$anarkali_result) {
            die('Error executing query: ' . mysqli_error($conn));
        }

        // Check if any rows are returned
        $num_rows = mysqli_num_rows($anarkali_result);
        echo "<p>Number of results: $num_rows</p>"; // Debugging line

        if ($num_rows > 0) {
            echo "<h2>Anarkali Dresses</h2>";
            while ($row = mysqli_fetch_assoc($anarkali_result)) {
                $image1 = htmlspecialchars($row['image1']); // Main image
                $image2 = htmlspecialchars($row['image2']); // Hover image
                $name = htmlspecialchars($row['name']);
                $price = htmlspecialchars($row['price']);

                // Display each product
                echo '<div class="col-md-3 col-6 mb-4 mb-md-0 text-center image-fade-in py-4">';
                echo '<img src="admin/images/' . $image1 . '" class="img-fluid hover-image fixed-height" data-hover="admin/images/' . $image2 . '" alt="' . $name . '">';
                echo '<h6 class="mt-3 product-name">' . $name . '</h6>';
                echo '<span class="mt-0 px-2 product-price">Rs. ' . $price . '</span>';
                echo '</div>';
            }
        } else {
            echo "<p>No products found matching your search term.</p>";
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <h1>Search Results</h1>

    <div class="container-fluid">
        <div class="row section3 py-5 px-2" style="padding-bottom:15px;">
            <?php
            // No need to repeat the same logic here, as it's already been handled above
            ?>
        </div>
    </div>

</body>

</html>

<?php
// Close the DB connection
mysqli_close($conn);
?>