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

if (!empty($email)) {
    $email_escaped = mysqli_real_escape_string($mysqli, $email);
    $query = "SELECT user_id,name , password FROM user WHERE email = '$email_escaped'";
} else {
    $phone_escaped = mysqli_real_escape_string($mysqli, $phone);
    $query = "SELECT user_id,name, password FROM user WHERE mobile = '$phone_escaped'";
}

$result = mysqli_query($mysqli, $query);

if (!$result) {
    http_response_code(500);
    echo json_encode(['error' => mysqli_error($mysqli)]);
    exit;
}

$user = mysqli_fetch_assoc($result);

if (!$user || !password_verify($password, $user['password'])) {
    http_response_code(401);
    echo json_encode(['error' => 'Invalid credentials']);
    exit;
}

// Set cookie for 7 days
setcookie('user_id', $user['user_id'], time() + (7 * 24 * 60 * 60), "/", "", false, true);
setcookie('user_name', $user['name'], time() + (7 * 24 * 60 * 60), "/", "", false, true);
$_SESSION['user_id'] = $_COOKIE['user_id'];
$_SESSION['user_name'] = $_COOKIE["user_name"];

echo json_encode(['success' => 'Login successful']);
header('location:../HTML/home.php');
?>
