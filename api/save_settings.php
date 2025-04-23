<?php
// api/save_settings.php
header('Content-Type: application/json');
require_once '../config/db.php';

try {
    // Only accept POST requests
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        http_response_code(405);
        echo json_encode(['error' => 'Method not allowed']);
        exit;
    }

    // Get POST data
    $siteTitle = $_POST['site_title'] ?? null;
    $contactEmail = $_POST['contact_email'] ?? null;
    $themeColor = $_POST['theme_color'] ?? null;

    if (!$siteTitle || !$contactEmail || !$themeColor) {
        http_response_code(400);
        echo json_encode(['error' => 'Missing required fields']);
        exit;
    }

    // Create settings table if not exists
    $pdo->exec("CREATE TABLE IF NOT EXISTS settings (
        id INT PRIMARY KEY AUTO_INCREMENT,
        setting_key VARCHAR(255) UNIQUE NOT NULL,
        setting_value TEXT NOT NULL
    )");

    // Upsert function
    function upsertSetting($pdo, $key, $value) {
        $stmt = $pdo->prepare("INSERT INTO settings (setting_key, setting_value) VALUES (:key, :value)
            ON DUPLICATE KEY UPDATE setting_value = :value2");
        $stmt->execute([':key' => $key, ':value' => $value, ':value2' => $value]);
    }

    upsertSetting($pdo, 'site_title', $siteTitle);
    upsertSetting($pdo, 'contact_email', $contactEmail);
    upsertSetting($pdo, 'theme_color', $themeColor);

    echo json_encode(['success' => true, 'message' => 'Settings saved successfully']);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Server error: ' . $e->getMessage()]);
}
