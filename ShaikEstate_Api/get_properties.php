<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'shaikestate';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM property ORDER BY property_id DESC";
$result = $conn->query($sql);
echo('your result',$result);

$properties = [];

while ($row = $result->fetch_assoc()) {
    $properties[] = $row;
}

echo json_encode($properties);
$conn->close();
?>
