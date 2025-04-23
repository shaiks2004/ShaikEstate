document.addEventListener("DOMContentLoaded", () => {
    loadComponents();
    fetchUsers();
    fetchProperties();
    setupFormSubmission();
  });
  
  function toggleSidebar() {
    document.querySelector("nav").classList.toggle("d-none");
  }
  
  function loadComponents() {
    // Sidebar
    document.getElementById("sidebar").innerHTML = `
      <nav class="flex-column p-3 min-vh-100" style="width: 220px; background-color: #0A1931; color: #e4ba7a;">
        <a class="nav-link fw-semibold mb-2" href="admin_dashboard.html"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a>
        <a class="nav-link fw-semibold mb-2" href="dashboard-agent.html"><i class="bi bi-people me-2"></i>Agents</a>
        <a class="nav-link fw-semibold mb-2" href="dashboard-property.html"><i class="bi bi-building me-2"></i>Properties</a>
        <a class="nav-link fw-semibold mb-2" href="dashboard-user.html"><i class="bi bi-person me-2"></i>Users</a>
        <a class="nav-link fw-semibold mb-2" href="dashboard-settings.html"><i class="bi bi-gear me-2"></i>Settings</a>
        <a class="nav-link fw-semibold" href="logout.html"><i class="bi bi-box-arrow-right me-2"></i>Logout</a>
      </nav>`;
  
    // Cards Section
    document.getElementById("dashboard-cards").innerHTML = `
      <div class="row g-4 mb-4">
        ${['Users', 'Properties', 'Agents', 'Towns'].map((label, i) => `
          <div class="col-md-3">
            <div class="text-center p-3 rounded shadow-sm border-start border-4" style="border-color: #ac835d;">
              <h5 style="color: #124076;">Total ${label}</h5>
              <p class="display-5 fw-bold" id="${label.toLowerCase()}-count" style="color: #ac835d;">Loading...</p>
            </div>
          </div>
        `).join('')}
      </div>`;
  
    // Users Table
    document.getElementById("user-section").innerHTML = `
      <section class="bg-white p-4 rounded shadow mb-4">
        <h3 style="color:#124076;">Users</h3>
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead class="table-primary text-dark">
              <tr><th>User ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Role</th></tr>
            </thead>
            <tbody id="user-table-body"><tr><td colspan="5" class="text-center">Loading...</td></tr></tbody>
          </table>
        </div>
      </section>`;
  
    // Properties Table
    document.getElementById("property-section").innerHTML = `
      <section class="bg-white p-4 rounded shadow mb-4">
        <h3 style="color:#124076;">Properties</h3>
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead class="table-primary text-dark">
              <tr>
                <th>Property ID</th><th>Address</th><th>Price</th>
                <th>Bedrooms</th><th>Bathrooms</th><th>Type</th><th>Status</th>
              </tr>
            </thead>
            <tbody id="property-table-body"><tr><td colspan="7" class="text-center">Loading...</td></tr></tbody>
          </table>
        </div>
      </section>`;
  
    // Add Property Form
    document.getElementById("property-form-section").innerHTML = `
      <section class="bg-white p-4 rounded shadow mb-4">
        <h3 class="mb-3" style="color:#124076;">Add New Property</h3>
        <form id="property-form">
          <div class="row g-3">
            ${[
              { id: 'address', type: 'text' },
              { id: 'price', type: 'number' },
              { id: 'bedrooms', type: 'number' },
              { id: 'bathrooms', type: 'number' },
              { id: 'area_sqft', type: 'number' },
              { id: 'property_type', type: 'text' },
              { id: 'status', type: 'text' },
              { id: 'town_id', type: 'number' },
              { id: 'agent_id', type: 'number' }
            ].map(field => `
              <div class="col-md-6">
                <input type="${field.type}" id="${field.id}" name="${field.id}" class="form-control" placeholder="${field.id.replace('_', ' ')}" required />
              </div>`).join('')}
          </div>
          <div class="text-end mt-3">
            <button type="submit" class="btn btn-primary" style="background-color:#124076; border:none;">Submit</button>
          </div>
        </form>
      </section>`;
  }
  
  function fetchUsers() {
    fetch('https://jsonplaceholder.typicode.com/users')
      .then(res => res.json())
      .then(data => {
        const body = document.getElementById('user-table-body');
        body.innerHTML = '';
        data.forEach(user => {
          const row = document.createElement('tr');
          row.innerHTML = `<td>${user.id}</td><td>${user.name}</td><td>${user.email}</td><td>${user.phone}</td><td>Admin</td>`;
          body.appendChild(row);
        });
        document.getElementById('users-count') && (document.getElementById('users-count').textContent = data.length);
        document.getElementById('user-count').textContent = data.length;
      });
  }
  
  function fetchProperties() {
    fetch('/ShaikEstate_Api/get_properties.php')
      .then(res => res.json())
      .then(data => {
        const body = document.getElementById('property-table-body');
        body.innerHTML = '';
        data.slice(0, 10).forEach((item, index) => {
          const row = document.createElement('tr');
          row.innerHTML = `
            <td>${item.id}</td>
            <td>${item.title.substring(0, 25)}...</td>
            <td>$${item.price}</td>
            <td>${Math.floor(Math.random() * 5) + 1}</td>
            <td>${Math.floor(Math.random() * 4) + 1}</td>
            <td>${item.category}</td>
            <td>${index % 2 === 0 ? 'Available' : 'Sold'}</td>`;
          body.appendChild(row);
        });
        document.getElementById('property-count').textContent = data.length;
      });
  }
  
  function setupFormSubmission() {
    document.getElementById('property-form').addEventListener('submit', function (e) {
      e.preventDefault();
      const formData = {
        address: document.getElementById('address').value,
        price: document.getElementById('price').value,
        bedrooms: document.getElementById('bedrooms').value,
        bathrooms: document.getElementById('bathrooms').value,
        area_sqft: document.getElementById('area_sqft').value,
        type: document.getElementById('property_type').value,
        status: document.getElementById('status').value,
        town_id: document.getElementById('town_id').value,
        agent_id: document.getElementById('agent_id').value
      };
  
      fetch('/ShaikEstate_Api/add_property.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
      })
        .then(res => res.json())
        .then(data => {
          alert("Property added successfully!");
          location.reload();
        })
        .catch(err => {
          console.error("Error adding property:", err);
          alert("Failed to add property.");
        });
    });
  }
  