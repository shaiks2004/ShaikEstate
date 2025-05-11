<?php
// api/get_properties.php
header('Content-Type: application/json');
require_once '../config/db.php';

// Fetch properties
$query = "SELECT property_id, address, price, bedrooms, bathrooms, property_type, status FROM property ORDER BY property_id DESC LIMIT 50";
$result = mysqli_query($mysqli, $query);

if (!$result) {
    http_response_code(500);
    echo json_encode(['error' => mysqli_error($mysqli)]);
    exit;
}

$properties = mysqli_fetch_all($result, MYSQLI_ASSOC);

// Fetch images for all properties
$propertyIds = array_column($properties, 'property_id');
if (count($propertyIds) > 0) {
    // Sanitize and build IN clause
    $propertyIds = array_map('intval', $propertyIds);
    $inQuery = implode(',', $propertyIds);

    $queryImages = "SELECT property_id, image_url FROM property_images WHERE property_id IN ($inQuery)";
    $resultImages = mysqli_query($mysqli, $queryImages);

    if (!$resultImages) {
        http_response_code(500);
        echo json_encode(['error' => mysqli_error($mysqli)]);
        exit;
    }

    $images = mysqli_fetch_all($resultImages, MYSQLI_ASSOC);

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
?>
