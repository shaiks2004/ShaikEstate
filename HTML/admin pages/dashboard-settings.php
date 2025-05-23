<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard - Settings</title>
    <link rel="stylesheet" href="../CSS/home.css" />
    <style>
        body {
            background-color: #0A1931;
            color: #635c5c;
            font-family: Arial, sans-serif;
            margin: 0;
        }
        header {
            background-color: #124076;
            color: #D4AF37;
            padding: 20px;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
        }
        nav {
            width: 220px;
            background-color: #124076;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 80px;
            color: #D4AF37;
            font-weight: bold;
            display: flex;
            flex-direction: column;
        }
        nav a {
            color: #D4AF37;
            padding: 15px 20px;
            text-decoration: none;
            border-bottom: 1px solid #e4ba7a;
            transition: background-color 0.3s ease;
        }
        nav a:hover {
            background-color: #e4ba7a;
            color: #124076;
        }
        main {
            margin-left: 220px;
            padding: 30px;
            max-width: calc(100% - 220px);
        }
        h1 {
            color: #D4AF37;
            margin-bottom: 30px;
        }
        .content {
            background: #E3F2FD;
            padding: 20px;
            border-radius: 10px;
            color: #124076;
        }
        @media (max-width: 768px) {
            nav {
                width: 100%;
                height: auto;
                position: relative;
                padding-top: 10px;
                flex-direction: row;
                justify-content: space-around;
            }
            main {
                margin-left: 0;
                padding: 20px 10px;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>Admin Dashboard - Settings</header>
    <div class="d-flex">
        <!-- Sidebar -->
        <nav class="flex-column p-3 min-vh-100" style="width: 220px; background-color: #0A1931; color: #e4ba7a;">
          <a class="nav-link fw-semibold p-3 mb-2" href="./admin_dashboard.php"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a>
          <a class="nav-link fw-semibold p-3 mb-2" href="./dashboard-property.php"><i class="bi bi-building me-2"></i>Properties</a>
          <a class="nav-link fw-semibold p-3 mb-2" href="./dashboard-settings.php"><i class="bi bi-person me-2"></i>Users</a>
          <a class="nav-link fw-semibold p-3 mb-2" href="../../api/logout.php"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
        </nav>
    <main>
        <h1>Settings</h1>
        <div class="content">
            <p>This is the settings page. You can add configuration options here.</p>
            <!-- Add settings form or options as needed -->
        </div>
    </main>
</body>
</html>
