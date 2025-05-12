<?php
// api/get_counts.php
header('Content-Type: application/json');
require_once '../config/db.php';

// Get counts from tables
$counts = [];

$tables = ['user', 'property', 'town'];
foreach ($tables as $table) {
    $query = "SELECT COUNT(*) as count FROM $table";
    $result = mysqli_query($mysqli, $query);

    if (!$result) {
        http_response_code(500);
        echo json_encode(['error' => mysqli_error($mysqli)]);
        exit;
    }

    $row = mysqli_fetch_assoc($result);
    $counts[$table] = (int)$row['count'];
}

echo json_encode($counts);
?>
