<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard</title>
    <!-- <link rel="stylesheet" href="../CSS/admin_dashboard.css" /> -->
    <link rel="stylesheet" href="../CSS/admin_dashboard_external.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://kit.fontawesome.com/e73128bc90.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
   
</head>

<body>
    <header class="text-center py-3 " style="background-color: #0A1931; color: #e4ba7a;">
        <h1 class="mb-2">Admin Dashboard</h1>
    </header>
    <div class="d-md-none p-2 text-end toggle-btn" style="background-color: #0A1931;">
        <button class="btn btn-outline-light" onclick="toggleSidebar()">
            <i class="bi bi-list"></i> Menu
        </button>
    </div>
    <nav class="flex-column  min-vh-100" style="width: 220px; ">
        <a class="nav-link fw-semibold m-3 mb-3" href="admin_dashboard.php">
            <i class="bi bi-speedometer2 me-2"></i>Dashboard
        </a>
        <a class="nav-link fw-semibold m-3 mb-3" href="dashboard-agent.php">
            <i class="bi bi-people me-2"></i>Agents
        </a>
        <a class="nav-link fw-semibold m-3 mb-3" href="dashboard-property.php">
            <i class="bi bi-building me-2"></i>Properties
        </a>
        <a class="nav-link fw-semibold m-3 mb-3" href="dashboard-user.php">
            <i class="bi bi-person me-2"></i>Users
        </a>
    

        <a class="nav-link fw-semibold m-3 mb-3" href="logout.php">
            <i class="bi bi-box-arrow-right me-2"></i>Logout
        </a>
    </nav>
    <main>
        <div class="bg-white p-4  mb-4">
            <h2 class="text-end " style="color: #000000;">Welcome, Shaik!</h2>
        </div>
        <div class="dashboard-widgets-container">
            <div class="dashboard-widgets" id="dashboard-widgets">
                <div class="widget">
                    <h3>Total Users</h3>
                    <p id="user-count">Loading...</p>
                </div>
                <div class="widget">
                    <h3>Total Properties</h3>
                    <p id="property-count">Loading...</p>
                </div>
                
                <div class="widget">
                    <h3>Total Towns</h3>
                    <p id="town-count">Loading...</p>
                </div>
            </div>
        </div>
        <div class="visual">
            <div class="chart-container" style="max-width: 180px; margin: 2% auto;">
                <h3 style="text-align: center;">Property Status</h3>
                <canvas id="propertyStatusChart"></canvas>
            </div>
            <div class="chart-container" style="max-width: 180px; margin: 2% auto;">
                <h3 style="text-align: center;">User Status</h3>
                <canvas id="userStatusChart"></canvas>
            </div>

        </div>
        <script src="../JavaScript/chart.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="../JavaScript/admin_dashboard.js"></script>
        <script>
            async function fetchCounts() {
                try {
                    const response = await fetch('../api/get_counts.php');
                    const data = await response.json();
                    if (!response.ok) {
                        throw new Error(data.error || 'Failed to fetch counts');
                    }
                    document.getElementById('user-count').textContent = data.user || 0;
                    document.getElementById('property-count').textContent = data.property || 0;
                    document.getElementById('agent-count').textContent = data.agent || 0;
                    document.getElementById('town-count').textContent = data.town || 0;
                } catch (error) {
                    console.error('Error fetching counts:', error);
                    document.getElementById('dashboard-widgets').textContent = 'Failed to load data.';
                }
            }

            async function fetchUsers() {
                try {
                    const response = await fetch('../api/get_users.php');
                    const users = await response.json();
                    if (!response.ok) throw new Error(users.error || 'Failed to fetch users');
                    const userTableBody = document.getElementById('user-table-body');
                    userTableBody.innerHTML = '';
                    users.forEach(user => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                        <td>${user.user_id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.phone || ''}</td>
                        <td>${user.role}</td>
                    `;
                        userTableBody.appendChild(row);
                    });
                } catch (error) {
                    console.error('Error fetching users:', error);
                }
            }

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

            function renderCharts() {
                // Render Property Status Chart
                const propertyCtx = document.getElementById('propertyStatusChart').getContext('2d');
                new Chart(propertyCtx, {
                    type: 'doughnut',
                    data: {
                        labels: ['For Sale', 'Sold'],
                        datasets: [{
                            label: 'Property Status',
                            data: [60, 40], // Placeholder data, replace with dynamic data if available
                            backgroundColor: ['#D4AF37', '#124076'],
                        }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            legend: {
                                position: 'bottom',
                            }
                        }
                    }
                });

                // Render User Status Chart
                const userCtx = document.getElementById('userStatusChart').getContext('2d');
                new Chart(userCtx, {
                    type: 'doughnut',
                    data: {
                        labels: ['Active', 'Inactive'], // Replace with actual labels if available
                        datasets: [{
                            label: 'User Status',
                            data: [70, 30], // Placeholder data, replace with dynamic data if available
                            backgroundColor: ['#28a745', '#dc3545'],
                        }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            legend: {
                                position: 'bottom',
                            }
                        }
                    }
                });
            }

            fetchCounts();
            fetchUsers();
            fetchProperties();
            renderCharts();
        </script>
        <section class="users-section bg-white p-4 rounded shadow mb-4">
            <h2 class="m-3 mb-3" style="color:#124076;">Users</h2>
            <!-- Removed filter input as per user request -->
            <table class="table table-bordered table-hover">
                <thead class="table-primary text-dark">

                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th style="position: relative;">
                            Role <i class="fa-solid fa-filter fa-lg filter-icon"
                                onclick="toggleFilterInput('user-role-filter')"></i>
                            <select id="user-role-filter" data-table-body="user-table-body" data-column-index="4"
                                onchange="filterTableByColumn(this.id, this.getAttribute('data-table-body'), parseInt(this.getAttribute('data-column-index')))"
                                style="display:none; position: absolute; bottom: 100%; left: 0; z-index: 10; background: white; border: 1px solid #ccc; border-radius: 4px; padding: 6px 8px; width: 140px; font-family: Arial, sans-serif; font-size: 14px; box-shadow: 0 2px 6px rgba(0,0,0,0.15);">
                                <option value="">All Roles</option>
                                <option value="Admin">Admin</option>
                                <!-- <option value="User">User</option> -->
                                <option value="Agent">Agent</option>
                                <option value="Buyer">Buyer</option>
                                <option value="Seller">Seller</option>
                            </select>
                        </th>
                    </tr>
                </thead>
                <tbody id="user-table-body ">
                    <tr>
                        <td colspan="5">Loading...</td>
                    </tr>
                </tbody>
            </table>
        </section>
        <section class="properties-section bg-white p-4 rounded shadow mb-4">
            <h2 class="m-3 mb-3" style="color:#124076;">Properties</h2>
            <table class="table table-bordered table-hover">
                <thead class="table-primary text-dark">

                    <tr>
                        <th>Property ID</th>
                        <th>Address</th>
                        <th>Price</th>
                        <th>Bedrooms</th>
                        <th>Bathrooms</th>
                        <th style="position: relative;">
                            Type <i class="fa-solid fa-filter fa-lg filter-icon"
                                onclick="toggleFilterInput('property-type-filter')"></i>
                            <select id="property-type-filter" data-table-body="property-table-body"
                                data-column-index="5"
                                onchange="filterTableByColumn(this.id, this.getAttribute('data-table-body'), parseInt(this.getAttribute('data-column-index')))"
                                style="display:none; position: absolute; bottom: 100%; left: 0; z-index: 10; background: white; border: 1px solid #ccc; border-radius: 4px; padding: 6px 8px; width: 140px; font-family: Arial, sans-serif; font-size: 14px; box-shadow: 0 2px 6px rgba(0,0,0,0.15);">
                                <option value="">All Types</option>
                                <option value="Apartment">Apartment</option>
                                <option value="House">House</option>
                                <option value="Condo">Condo</option>
                                <option value="Townhouse">Townhouse</option>
                            </select>
                        </th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody id="property-table-body">
                    <tr>
                        <td colspan="7">Loading...</td>
                    </tr>
                </tbody>
            </table>
        </section>
        <script>
            function toggleFilterInput(inputId) {
                const filterElement = document.getElementById(inputId);
                if (filterElement.style.display === 'none' || filterElement.style.display === '') {
                    filterElement.style.display = 'block';
                    filterElement.focus();
                } else {
                    filterElement.style.display = 'none';
                    filterElement.value = '';
                    filterTableByColumn(inputId, inputId === 'user-role-filter' ? 'user-table-body' : 'property-table-body', inputId === 'user-role-filter' ? 4 : 5);
                }
            }

            function filterTableByColumn(inputId, tableBodyId, columnIndex) {
                const filterValue = document.getElementById(inputId).value.toLowerCase();
                const tableBody = document.getElementById(tableBodyId);
                const rows = tableBody.getElementsByTagName('tr');
                for (let i = 0; i < rows.length; i++) {
                    const cell = rows[i].getElementsByTagName('td')[columnIndex];
                    if (cell) {
                        const cellText = cell.textContent || cell.innerText;
                        if (filterValue === "" || cellText.toLowerCase() === filterValue) {
                            rows[i].style.display = '';
                        } else {
                            rows[i].style.display = 'none';
                        }
                    }
                }
            }
        </script>
</body>

</html>