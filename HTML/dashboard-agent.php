<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard - Agents</title>
    <link rel="stylesheet" href="../CSS/dashboard-agent-external.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <header class="text-center py-3" style="background-color: #0A1931; color: #e4ba7a;">
        <h1 class="mb-2">Agents</h1>
    </header>
    <div class="d-md-none p-2 text-end toggle-btn" style="background-color: #0A1931;">
        <button class="btn btn-outline-light" onclick="toggleSidebar()">
            <i class="bi bi-list"></i> Menu
        </button>
    </div>
    <nav class="flex-column min-vh-100" style="width: 220px;">
        <a class="nav-link fw-semibold  m-3 mb-3" href="admin_dashboard.php">
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
        <a class="nav-link fw-semibold m-3 mb-3" href="../api/logout.php">
            <i class="bi bi-box-arrow-right me-2"></i>Logout
        </a>
    </nav>
    <main>
        
        <h1 class="mb-4" style="color: #e4ba7a;">Agents List</h1>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Agent ID</th>
                    <th>License Number</th>
                    <th>Years Experience</th>
                    <th>User ID</th>
                </tr>
            </thead>
            <tbody id="agent-table-body">
                <tr><td colspan="4">Loading...</td></tr>
            </tbody>
        </table>
    </main>
    <script>
        async function fetchAgents() {
            try {
                const response = await fetch('../api/get_agents.php');
                const agents = await response.json();
                if (!response.ok) throw new Error(agents.error || 'Failed to fetch agents');
                const agentTableBody = document.getElementById('agent-table-body');
                agentTableBody.innerHTML = '';
                agents.forEach(agent => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${agent.agent_id}</td>
                        <td>${agent.license_number}</td>
                        <td>${agent.years_experience || ''}</td>
                        <td>${agent.user_id}</td>
                    `;
                    agentTableBody.appendChild(row);
                });
            } catch (error) {
                console.error('Error fetching agents:', error);
            }
        }
        fetchAgents();
    </script>
</body>
</html>
