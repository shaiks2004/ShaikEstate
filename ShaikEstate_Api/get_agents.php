<?php
// api/get_agents.php
header('Content-Type: application/json');
require_once '../config/db.php';

try {
    $stmt = $pdo->query("SELECT agent_id, license_number, years_experience, user_id FROM agent ORDER BY agent_id DESC LIMIT 50");
    $agents = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($agents);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
?>
