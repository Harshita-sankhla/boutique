<?php
session_start(); // Start or resume session

unset($_SESSION['Admin']); // Unset (remove) the 'Admin' session variable

echo "<script> window.location='index.php'; </script>"; // Redirect to index.php using JavaScript
