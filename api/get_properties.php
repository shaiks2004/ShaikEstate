<?php
// api/get_properties.php
header('Content-Type: application/json');
require_once '../config/db.php';

try {
    $stmt = $pdo->query("SELECT property_id, address, price, bedrooms, bathrooms, property_type, status FROM property ORDER BY property_id DESC LIMIT 50");
    $properties = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($properties);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
?>
