<?php
header('Content-Type: application/json');
require_once '../config/db.php';

try {
    $stmt = $pdo->query("SELECT town_id, name FROM town ORDER BY name ASC");
    $towns = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($towns);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
?>
