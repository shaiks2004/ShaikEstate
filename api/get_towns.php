<?php
header('Content-Type: application/json');
require_once '../config/db.php';

$query = "SELECT town_id, name FROM town ORDER BY name ASC";
$result = mysqli_query($mysqli, $query);

if (!$result) {
    http_response_code(500);
    echo json_encode(['error' => 'Database error: ' . mysqli_error($mysqli)]);
    exit;
}

$towns = mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($towns);
?>
