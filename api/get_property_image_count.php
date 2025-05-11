<?php
// api/get_property_image_count.php
header('Content-Type: application/json');
require_once '../config/db.php';

if (!isset($_GET['property_id'])) {
    http_response_code(400);
    echo json_encode(['error' => 'property_id parameter is required']);
    exit;
}

$property_id = intval($_GET['property_id']);

$query = "SELECT COUNT(*) as image_count FROM property_images WHERE property_id = $property_id";
$result = mysqli_query($mysqli, $query);

if (!$result) {
    http_response_code(500);
    echo json_encode(['error' => mysqli_error($mysqli)]);
    exit;
}

$row = mysqli_fetch_assoc($result);
$image_count = intval($row['image_count']);

echo json_encode(['property_id' => $property_id, 'image_count' => $image_count]);
?>
