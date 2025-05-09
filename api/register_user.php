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

try {
    // Check if email already exists
    $stmt = $pdo->prepare("SELECT user_id FROM user WHERE email = ?");
    $stmt->execute([$email]);
    if ($stmt->rowCount() > 0) {
        http_response_code(409);
        echo json_encode(['error' => 'Email already registered']);
        exit;
    }

    // Insert user into database
    $stmt = $pdo->prepare("INSERT INTO user (role, name, email, password, phone, city, createdAt, updatedAt) VALUES (?, ?, ?, ?, ?, ?, NOW(), NOW())");
    $stmt->execute([$role, $name, $email, $hashed_password, $mobile, $city]);

    echo json_encode(['success' => 'User registered successfully']);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
?>
