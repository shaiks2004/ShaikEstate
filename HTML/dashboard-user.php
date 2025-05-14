<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard - Users</title>
    <link rel="stylesheet" href="../CSS/dashboard-user-external.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <header class="text-center py-3" style="background-color: #0A1931; color: #e4ba7a;">
        <h1 class="mb-2">Admin Dashboard - Users</h1>
    </header>
    <div class="d-md-none p-2 text-end toggle-btn" style="background-color: #0A1931;">
        <button class="btn btn-outline-light" onclick="toggleSidebar()">
            <i class="bi bi-list"></i> Menu
        </button>
    </div>
    <nav class="flex-column min-vh-100" style="width: 220px;">
        <a class="nav-link fw-semibold m-3 mb-3 " href="admin_dashboard.php">
            <i class="bi bi-speedometer2 me-2"></i>Dashboard
        </a>
        <a class="nav-link fw-semibold m-3 mb-3 " href="dashboard-agent.php">
            <i class="bi bi-people me-2"></i>Agents
        </a>
        <a class="nav-link fw-semibold m-3 mb-3 " href="dashboard-property.php">
            <i class="bi bi-building me-2"></i>Properties
        </a>
        <a class="nav-link fw-semibold m-3 mb-3 " href="dashboard-user.php">
            <i class="bi bi-person me-2"></i>Users
        </a>
        <a class="nav-link fw-semibold  m-3 mb-3" href="../api/logout.php">
            <i class="bi bi-box-arrow-right me-2"></i>Logout
        </a>
    </nav>
    <main style="margin-left: 220px; padding: 30px;">
    
        <div style="display: flex; align-items: center; margin-bottom: 15px; position: relative; max-width: 400px; margin-left: auto; margin-right: auto;">
            <input type="text" id="user-search-input" placeholder="Search users by any column..." style="flex-grow: 1; padding: 8px 35px 8px 12px; font-size: 16px; border-radius: 6px; border: 1px solid #aaa; box-shadow: 0 1px 3px rgba(0,0,0,0.1);">
            <i class="fa fa-search" aria-hidden="true" style="position: absolute; right: 12px; cursor: pointer; color: #555;"></i>
        </div>
        <h1 class="mb-4" style="color: #e4ba7a;">Users List</h1>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody id="user-table-body">
                <tr><td colspan="5">Loading...</td></tr>
            </tbody>
        </table>
    </main>
    <script>
        function toggleSidebar() {
            const nav = document.querySelector('nav');
            nav.classList.toggle('show-sidebar');
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
        fetchUsers();
    </script>
</body>
</html>
