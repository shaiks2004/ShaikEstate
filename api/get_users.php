<?php
// api/get_users.php
header('Content-Type: application/json');
require_once '../config/db.php';

$query = "SELECT user_id, name, email, phone, role FROM user ORDER BY user_id DESC LIMIT 50";
$result = mysqli_query($mysqli, $query);

if (!$result) {
    http_response_code(500);
    echo json_encode(['error' => mysqli_error($mysqli)]);
    exit;
}

$users = mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($users);
?>
