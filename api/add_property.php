<?php
header('Content-Type: application/json');
require_once '../config/db.php';

function log_message($message) {
    $log_dir = '../logs';
    if (!is_dir($log_dir)) {
        mkdir($log_dir, 0755, true);
    }
    error_log(date('[Y-m-d H:i:s] ') . $message . PHP_EOL, 3, $log_dir . '/add_property.log');
}

// Removed logging for cleaner operation

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Method not allowed']);
    exit;
}

// Validate required fields
$required_fields = ['address', 'price', 'bedrooms', 'bathrooms', 'area_sqft', 'type', 'town_id'];
foreach ($required_fields as $field) {
    if (empty($_POST[$field])) {
        http_response_code(400);
        echo json_encode(['error' => "Missing required field: $field"]);
            echo "<script>alert('Error: " . mysqli_error($mysqli) . "');</script>";
       
                header('Refresh:1,url=../HTML/dashbord.php');
        exit;
    }
}

// Sanitize inputs
$address = filter_var($_POST['address'], FILTER_SANITIZE_STRING);
$price = filter_var($_POST['price'], FILTER_VALIDATE_FLOAT);
$bedrooms = filter_var($_POST['bedrooms'], FILTER_VALIDATE_INT);
$bathrooms = filter_var($_POST['bathrooms'], FILTER_VALIDATE_INT);
$area_sqft = filter_var($_POST['area_sqft'], FILTER_VALIDATE_INT);
$type = filter_var($_POST['type'], FILTER_SANITIZE_STRING);
$town_id = filter_var($_POST['town_id'], FILTER_VALIDATE_INT);

if ($price === false || $bedrooms === false || $bathrooms === false || $area_sqft === false || $town_id === false) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid numeric input']);
    exit;
}

// Validate property_type enum
$valid_types = ['House', 'Land', 'Farm', 'Commercial'];
if (!in_array($type, $valid_types)) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid property type']);
    exit;
}

// Set default values for status and agent_id
$status = 'For Sale';

// Removed logging for cleaner operation

// Handle file uploads
$upload_dir = '../property_images/';
if (!is_dir($upload_dir)) {
    mkdir($upload_dir, 0755, true);
}

$uploaded_files = [];
if (!empty($_FILES['images']) && is_array($_FILES['images']['name'])) {
    foreach ($_FILES['images']['name'] as $key => $name) {
        $tmp_name = $_FILES['images']['tmp_name'][$key];
        $error = $_FILES['images']['error'][$key];
        if ($error === UPLOAD_ERR_OK) {
            $ext = pathinfo($name, PATHINFO_EXTENSION);
            $new_name = uniqid('prop_img_') . '.' . $ext;
            $destination = $upload_dir . $new_name;
            if (move_uploaded_file($tmp_name, $destination)) {
                $uploaded_files[] = $new_name;
            }
        }
    }
}

// Insert property with status and agent_id
$stmt = mysqli_prepare($mysqli, "INSERT INTO property (address, price, bedrooms, bathrooms, area_sqft, property_type, status, town_id,  createdAt, updatedAt) VALUES (?, ?, ?, ?, ?, ?, ?,  ?, NOW(), NOW())");
if (!$stmt) {
    http_response_code(500);
    echo json_encode(['error' => 'Prepare failed: ' . mysqli_error($mysqli)]);
    echo "<script>alert('Error: " . mysqli_error($mysqli) . "');</script>";
         header('Refresh:1,url=../HTML/dashbord.php');
    exit;
}

mysqli_stmt_bind_param($stmt, "sdiisssi", $address, $price, $bedrooms, $bathrooms, $area_sqft, $type, $status, $town_id);

if (!mysqli_stmt_execute($stmt)) {
    http_response_code(500);
    echo json_encode(['error' => 'Execute failed: ' . mysqli_stmt_error($stmt)]);
        echo "<script>alert('Error: " . mysqli_error($mysqli) . "');</script>";

          header('Refresh:1,url=../HTML/dashbord.php');
    exit;
}

$property_id = mysqli_insert_id($mysqli);

// Insert images if any
if (!empty($uploaded_files)) {
    $img_stmt = mysqli_prepare($mysqli, "INSERT INTO property_images (property_id, image_url) VALUES (?, ?)");
    if (!$img_stmt) {
        http_response_code(500);
        echo json_encode(['error' => 'Prepare failed: ' . mysqli_error($mysqli)]);
            echo "<script>alert('Error: " . mysqli_error($mysqli) . "');</script>";
       header('Refresh:1,url=../HTML/dashbord.php');
        exit;
    }

    foreach ($uploaded_files as $img) {
        $image_url = 'property_images/' . $img;
        mysqli_stmt_bind_param($img_stmt, "is", $property_id, $image_url);
        if (!mysqli_stmt_execute($img_stmt)) {
            http_response_code(500);
            echo json_encode(['error' => 'Execute failed: ' . mysqli_stmt_error($img_stmt)]);
                echo "<script>alert('Error: " . mysqli_error($mysqli) . "');</script>";

                header('Refresh:1,url=../HTML/dashbord.php');
            exit;
        }
    }
    mysqli_stmt_close($img_stmt);
}

echo json_encode(['success' => true, 'message' => 'Property added successfully']);
    echo "<script>alert('property added succesfully');</script>";

header('Refresh:1,url=../HTML/dashbord.php');
?>
