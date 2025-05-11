<?php
session_start();
header('Content-Type: application/json');

// Set session user_id from cookie if available
if (isset($_COOKIE['user_id']) && !isset($_SESSION['user_id'])) {
    $_SESSION['user_id'] = $_COOKIE['user_id'];
}

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Method not allowed']);
    exit;
}

require_once '../config/db.php';

// Get POST data
$email = isset($_POST['email']) ? trim($_POST['email']) : '';
$phone = isset($_POST['phone']) ? trim($_POST['phone']) : '';
$password = isset($_POST['password']) ? $_POST['password'] : '';

if (empty($password) || (empty($email) && empty($phone))) {
    http_response_code(400);
    echo json_encode(['error' => 'Please provide email or phone and password']);
    exit;
}

try {
    if (!empty($email)) {
        $stmt = $pdo->prepare("SELECT user_id, password FROM user WHERE email = ?");
        $stmt->execute([$email]);
    } else {
        $stmt = $pdo->prepare("SELECT user_id, password FROM user WHERE mobile = ?");
        $stmt->execute([$phone]);
    }

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$user || !password_verify($password, $user['password'])) {
        http_response_code(401);
        echo json_encode(['error' => 'Invalid credentials']);
        exit;
    }

    // Set session or token here
    
    // Set cookie for 7 days
    setcookie('user_id', $user['user_id'], time() + (7 * 24 * 60 * 60), "/", "", false, true);
    $_SESSION['user_id'] = $user['user_id'];

    echo json_encode(['success' => 'Login successful']);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
?>
