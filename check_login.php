<?php
session_start();
header('Content-Type: application/json');

$response = array(
    'logged_in' => isset($_SESSION['logged_in']) && $_SESSION['logged_in']
);

echo json_encode($response);
