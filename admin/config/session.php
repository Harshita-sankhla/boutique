<?php

if ($_SESSION['Admin'] == "") {
    echo "<script>window.location='index.php';</script>"; // Redirect to index.php if 'Admin' session is empty
}
