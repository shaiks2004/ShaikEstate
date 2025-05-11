<?php
// config/db.php
$host = 'localhost';
$dbname = 'shaikestate';
$username = 'root';
$password = ''; // Update with your DB password

$mysqli = mysqli_connect($host, $username, $password, $dbname);

if (!$mysqli) {
    http_response_code(500);
    echo json_encode(['error' => 'Database connection failed: ' . mysqli_connect_error()]);
    exit;
}

// Set charset to utf8mb4
mysqli_set_charset($mysqli, 'utf8mb4');
?>
