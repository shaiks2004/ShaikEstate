<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Panel</title>
  <link rel="stylesheet" href="/CSS/admin_css/admin_dashboard.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <header class="text-center py-2 " style="background-color: #0A1931; color: #e4ba7a;">
        <h1 class="mb-0">Admin Dashboard</h1>
      </header>
      <div class="d-md-none p-2 text-end toggle-btn" style="background-color: #0A1931;">
        <button class="btn btn-outline-light" onclick="toggleSidebar()">
          <i class="bi bi-list"></i> Menu
        </button>
      </div>
  <div class="d-flex">
    <!-- Sidebar -->
    <nav class="flex-column p-3 min-vh-100" style="width: 220px; background-color: #0A1931; color: #e4ba7a;">
        <a class="nav-link fw-semibold  mb-2" href="admin_dashboard.php" style="color: #e4ba7a;">
          <i class="bi bi-speedometer2 me-2"></i>Dashboard
        </a>
        
        <a class="nav-link fw-semibold mb-2" href="dashboard-property.php" style="color: #e4ba7a;">
          <i class="bi bi-building me-2"></i>Properties
        </a>
        <a class="nav-link fw-semibold mb-2" href="dashboard-user.php" style="color: #e4ba7a;">
          <i class="bi bi-person me-2"></i>Users
        </a>
      
        <a class="nav-link fw-semibold" href="../../api/logout.php" style="color: #e4ba7a;">
          <i class="bi bi-box-arrow-right me-2"></i>Logout
        </a>
      </nav>

      <div class=" con container-fluid p-4" style="margin-left: auto;">
      <div class="bg-white p-4  mb-4">
        <h2 class="text-end " style="color: #000000;">Welcome, Shaik!</h2>
      </div>
      <div class="row g-4 mb-4">
        <div class="cards col-md-3">
          <div class=" text-center p-3 rounded shadow-sm border-start border-4" style="border-color: #ac835d;">
            <h5 class="text-uppercase" style="color: #124076;">Total Users</h5>
            <p class="display-5 fw-bold " id="user-count" style="color: #ac835d;">Loading...</p>
          </div>
        </div>
        <div class="cards col-md-3">
          <div class=" text-center p-3 rounded shadow-sm border-start border-4" style="border-color: #ac835d;">
            <h5 class="text-uppercase" style="color: #124076;">Total Properties</h5>
            <p class="display-5 fw-bold " id="property-count" style="color: #ac835d;">Loading...</p>
          </div>
        </div>
        <div class="cards col-md-3">
         
        </div>
        <div class="cards col-md-3">
          <div class=" text-center p-3 rounded shadow-sm border-start border-4" style="border-color: #ac835d;">
            <h5 class="text-uppercase" style="color: #124076;">Total Towns</h5>
            <p class="display-5 fw-bold " id="town-count" style="color: #ac835d;">Loading...</p>
          </div>
        </div>
      </div>

      <section class="bg-white p-4 rounded shadow mb-4">
        <h3 class=" mb-3" style="color:#124076;">Users</h3>
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead class="table-primary text-dark">
              <tr>
                <th>User ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Role</th>
              </tr>
            </thead>
            <tbody id="user-table-body">
              <tr><td colspan="5" class="text-center">Loading...</td></tr>
            </tbody>
          </table>
        </div>
      </section>

      <section class="bg-white p-4 rounded shadow mb-4">
        <h3 class=" mb-3" style="color:#124076;">Properties</h3>
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead class="table-primary text-dark">
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
              <tr><td colspan="7" class="text-center">Loading...</td></tr>
            </tbody>
          </table>
        </div>
      </section>
      <section class="bg-white p-4 rounded shadow mb-4">
        <h3 class="mb-3" style="color:#124076;">Add New Property</h3>
        <form id="property-form">
          <div class="row g-3">
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Address" id="address" required />
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Price" id="price" required />
            </div>
            <div class="col-md-6">
              <input type="number" class="form-control" placeholder="Bedrooms" id="bedrooms" required />
            </div>
            <div class="col-md-6">
              <input type="number" class="form-control" placeholder="Bathrooms" id="bathrooms" required />
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Type" id="type" required />
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" placeholder="Status" id="status" required />
            </div>
          </div>
          <div class="mt-3 text-end">
            <button type="submit" class="btn btn-primary" style="background-color:#0A1931; border-color:#ac835d;">Add Property</button>
          </div>
        </form>
      </section>
      
    
    </div>
  </div>

  <script>
    function toggleSidebar() {
      document.getElementById("sidebar").classList.toggle("active");
    }

    
  </script>
  <script>
    // Dummy user API
    fetch('https://jsonplaceholder.typicode.com/users')
      .then(res => res.json())
      .then(data => {
        const tableBody = document.getElementById('user-table-body');
        tableBody.innerHTML = ''; // Clear loading message
  
        data.forEach(user => {
          const row = document.createElement('tr');
          row.innerHTML = `
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.phone}</td>
            <td>${user.Admin}</td>
          `;
          tableBody.appendChild(row);
        });
      })
      .catch(err => {
        console.error('Error loading users:', err);
        document.getElementById('user-table-body').innerHTML =
          '<tr><td colspan="5" class="text-danger text-center">Failed to load users</td></tr>';
      });
  </script>

<script>
    // Dummy user API
    fetch('https://jsonplaceholder.typicode.com/users')
      .then(res => res.json())
      .then(data => {
        const tableBody = document.getElementById('user-table-body');
        tableBody.innerHTML = ''; // Clear loading message
  
        data.forEach(user => {
          const row = document.createElement('tr');
          row.innerHTML = `
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.phone}</td>
            <td>${user.Admin}</td>
          `;
          tableBody.appendChild(row);
        });
      })
      .catch(err => {
        console.error('Error loading users:', err);
        document.getElementById('user-table-body').innerHTML =
          '<tr><td colspan="5" class="text-danger text-center">Failed to load users</td></tr>';
      });
  </script>

<script>
    // Dummy properties API
    fetch('https://fakestoreapi.com/products')
      .then(res => res.json())
      .then(data => {
        const propertyBody = document.getElementById('property-table-body');
        propertyBody.innerHTML = ''; // Clear loading
  
        data.slice(0, 10).forEach((item, index) => {
          const row = document.createElement('tr');
          row.innerHTML = `
            <td>${item.id}</td>
            <td>${item.title.substring(0, 25)}...</td>
            <td>$${item.price}</td>
            <td>${Math.floor(Math.random() * 5) + 1}</td>
            <td>${Math.floor(Math.random() * 4) + 1}</td>
            <td>${item.category}</td>
            <td>${index % 2 === 0 ? 'Available' : 'Sold'}</td>
          `;
          propertyBody.appendChild(row);
        });
      })
      .catch(err => {
        console.error('Error loading properties:', err);
        document.getElementById('property-table-body').innerHTML =
          '<tr><td colspan="7" class="text-danger text-center">Failed to load properties</td></tr>';
      });
  </script>
   <script>
    document.getElementById('property-form').addEventListener('submit', function(e) {
      e.preventDefault();
      const property = {
        address: document.getElementById('address').value,
        price: document.getElementById('price').value,
        bedrooms: +document.getElementById('bedrooms').value,
        bathrooms: +document.getElementById('bathrooms').value,
        type: document.getElementById('type').value,
        status: document.getElementById('status').value,
      };
  
      fetch('http://localhost/phpmyadmin/index.php?route=/sql&db=shaikestate&table=property&pos=0', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(property),
      })
      .then(response => response.json())
      .then(data => {
        alert('Property added!');
        location.reload(); // Refresh to see updated table
      });
    });
  </script>
  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</body>
</html>
