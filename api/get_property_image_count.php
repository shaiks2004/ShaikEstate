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

try {
    $stmt = $pdo->prepare("SELECT COUNT(*) as image_count FROM property_images WHERE property_id = ?");
    $stmt->execute([$property_id]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo json_encode(['property_id' => $property_id, 'image_count' => intval($result['image_count'])]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
?>
