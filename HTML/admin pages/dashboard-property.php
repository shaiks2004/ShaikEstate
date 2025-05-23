<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard - Properties</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
            background: #E3F2FD;
            color: #124076;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ac835d;
            text-align: left;
        }
        th {
            background-color: #D4AF37;
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
    <header>Admin Dashboard - Properties</header>
    <div class="d-flex">
        <!-- Sidebar -->
        <nav class="flex-column p-3 min-vh-100" style="width: 220px; background-color: #0A1931; color: #e4ba7a;">
          <a class="nav-link fw-semibold p-3 mb-2" href="./admin_dashboard.php"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a>
          <a class="nav-link fw-semibold p-3 mb-2" href="./dashboard-property.php"><i class="bi bi-building me-2"></i>Properties</a>
          <a class="nav-link fw-semibold p-3 mb-2" href="./dashboard-settings.php"><i class="bi bi-person me-2"></i>Users</a>
          <a class="nav-link fw-semibold p-3 mb-2" href="../../api/logout.php"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
        </nav>
    <main>
        <h1>Properties List</h1>
        <table>
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Address</th>
                    <th>Price</th>
                    <th>Bedrooms</th>
                    <th>Bathrooms</th>
                    <th>Type</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody id="property-table-body">
                <tr><td colspan="7">Loading...</td></tr>
            </tbody>
        </table>
    </main>
    <script>
        async function fetchProperties() {
            try {
                const response = await fetch('../api/get_properties.php');
                const properties = await response.json();
                if (!response.ok) throw new Error(properties.error || 'Failed to fetch properties');
                const propertyTableBody = document.getElementById('property-table-body');
                propertyTableBody.innerHTML = '';
                properties.forEach(property => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${property.property_id}</td>
                        <td>${property.address}</td>
                        <td>${property.price}</td>
                        <td>${property.bedrooms || ''}</td>
                        <td>${property.bathrooms || ''}</td>
                        <td>${property.property_type}</td>
                        <td>${property.status}</td>
                    `;
                    propertyTableBody.appendChild(row);
                });
            } catch (error) {
                console.error('Error fetching properties:', error);
            }
        }
        fetchProperties();
    </script>
</body>
</html>
