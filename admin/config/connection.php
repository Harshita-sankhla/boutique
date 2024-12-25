<?php
    $host = 'localhost';
    $user = 'root';
    $password = '';
    $dbname = 'boutique';

    $conn = mysqli_connect($host,$user,$password,$dbname);
    if(!$conn)
    {
        die('connection failed');
    }
?>