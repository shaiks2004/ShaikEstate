<?php
header('Content-Type: application/json');
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Method not allowed']);
    exit;
}

require_once '../config/db.php';

// Get POST data
$data = json_decode(file_get_contents('php://input'), true);

if (!$data) {
    // fallback to form data if JSON not sent
    $data = $_POST;
}

$role = isset($data['role']) ? trim($data['role']) : '';
$name = isset($data['name']) ? trim($data['name']) : '';
$email = isset($data['email']) ? trim($data['email']) : '';
$password = isset($data['password']) ? $data['password'] : '';
$mobile = isset($data['mobile']) ? trim($data['mobile']) : '';
$city = isset($data['city']) ? trim($data['city']) : '';

// Basic validation
if (empty($role) || empty($name) || empty($email) || empty($password) || empty($mobile) || empty($city)) {
    http_response_code(400);
    echo json_encode(['error' => 'Please fill all required fields']);
    exit;
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid email address']);
    exit;
}

// Hash password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

// Check if email already exists
$email_escaped = mysqli_real_escape_string($mysqli, $email);
$query_check = "SELECT user_id FROM user WHERE email = '$email_escaped'";
$result_check = mysqli_query($mysqli, $query_check);
if (!$result_check) {
    http_response_code(500);
    echo json_encode(['error' => mysqli_error($mysqli)]);
    exit;
}
if (mysqli_num_rows($result_check) > 0) {
    http_response_code(409);
    echo json_encode(['error' => 'Email already registered']);
    exit;
}

// Insert user into database
$role_escaped = mysqli_real_escape_string($mysqli, $role);
$name_escaped = mysqli_real_escape_string($mysqli, $name);
$mobile_escaped = mysqli_real_escape_string($mysqli, $mobile);
$city_escaped = mysqli_real_escape_string($mysqli, $city);

$query_insert = "INSERT INTO user (role, name, email, password, phone, city, createdAt, updatedAt) VALUES ('$role_escaped', '$name_escaped', '$email_escaped', '$hashed_password', '$mobile_escaped', '$city_escaped', NOW(), NOW())";

if (!mysqli_query($mysqli, $query_insert)) {
    http_response_code(500);
    echo json_encode(['error' => mysqli_error($mysqli)]);
    exit;
}

echo json_encode(['success' => 'User registered successfully']);

?>
