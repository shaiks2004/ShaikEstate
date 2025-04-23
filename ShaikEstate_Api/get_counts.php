<?php
// api/get_counts.php
header('Content-Type: application/json');
require_once '../config/db.php';

try {
    // Get counts from tables
    $counts = [];

    $tables = ['user', 'property', 'agent', 'town'];
    foreach ($tables as $table) {
        $stmt = $pdo->query("SELECT COUNT(*) as count FROM $table");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $counts[$table] = (int)$row['count'];
    }

    echo json_encode($counts);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
?>
