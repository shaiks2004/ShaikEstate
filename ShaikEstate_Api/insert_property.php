<?php

$conn=mysqli_connect("localhost","root","","shaikestate")


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$address = $_POST['address'];
$price = $_POST['price'];
$bedrooms = $_POST['bedrooms'];
$bathrooms = $_POST['bathrooms'];
$area_sqft = $_POST['area_sqft'];
$property_type = $_POST['property_type'];
$status = $_POST['status'];
$town_id = $_POST['town_id'];
$agent_id = $_POST['agent_id'];

$sql = "INSERT INTO property (
            address, price, bedrooms, bathrooms, area_sqft, property_type, status, town_id, agent_id
        ) VALUES (
            '$address', '$price', '$bedrooms', '$bathrooms', '$area_sqft', '$property_type', '$status', '$town_id', '$agent_id'
        )";


if ($conn->query($sql) === TRUE) {
    // echo json_encode(["success" => true, "message" => "Property added successfully!"]);
} else {
    // echo json_encode(["success" => false, "error" => $conn->error]);
}

$conn->close();
?>