<?php
// api/get_properties.php
header('Content-Type: application/json');
require_once '../config/db.php';

try {
    // Fetch properties
    $stmt = $pdo->query("SELECT property_id, address, price, bedrooms, bathrooms, property_type, status FROM property ORDER BY property_id DESC LIMIT 50");
    $properties = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Fetch images for all properties
    $propertyIds = array_column($properties, 'property_id');
    if (count($propertyIds) > 0) {
        $inQuery = implode(',', array_fill(0, count($propertyIds), '?'));
        $stmtImages = $pdo->prepare("SELECT property_id, image_url FROM property_images WHERE property_id IN ($inQuery)");
        $stmtImages->execute($propertyIds);
        $images = $stmtImages->fetchAll(PDO::FETCH_ASSOC);

        // Group images by property_id
        $imagesByProperty = [];
        foreach ($images as $img) {
            $imagesByProperty[$img['property_id']][] = $img['image_url'];
        }

        // Add images array to each property
        foreach ($properties as &$property) {
            $property['images'] = $imagesByProperty[$property['property_id']] ?? [];
        }
    } else {
        // No properties found
        foreach ($properties as &$property) {
            $property['images'] = [];
        }
    }

    echo json_encode($properties);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
?>
