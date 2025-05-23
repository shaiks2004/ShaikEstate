<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Admin Dashboard - Users</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="/CSS/admin_css/dashboard-user.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
 
</head>
<body>
  <header>Admin Dashboard - Users</header>
  <div class="d-flex">
    <!-- Sidebar -->
    <nav class="flex-column p-3 min-vh-100" style="width: 220px; background-color: #0A1931; color: #e4ba7a;">
      <a class="nav-link fw-semibold p-3 mb-2" href="./admin_dashboard.php"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a>
      <a class="nav-link fw-semibold p-3 mb-2" href="./dashboard-property.php"><i class="bi bi-building me-2"></i>Properties</a>
      <a class="nav-link fw-semibold p-3 mb-2" href="./dashboard-users.php"><i class="bi bi-person me-2"></i>Users</a>
      <a class="nav-link fw-semibold p-3 mb-2" href="../../api/logout.php"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
    </nav>
    <main>
        <h1>Users List</h1>
        <table>
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
    </div>
  </div>


</body>
</html>


