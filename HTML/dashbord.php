<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Real Estate Dashboard</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../CSS/dash.css">
</head>

<body>
  <div class="navbar">
    <div class="logo"><strong>Dashboard</strong></div>
    <div class="tabs">
      <div class="dropdown">
        <button onclick="toggleDropdown('dropdown1')" class="dropbtn">Properties</button>
        <div id="dropdown1" class="dropdown-content">
          <a href="#">Manage Properties</a>
          <a href="./add_property.php">Post Properties</a>
        </div>
      </div>
      <a href="#">Enquiries</a>
      <div class="dropdown">
        <button onclick="toggleDropdown('dropdown2')" class="dropbtn">Property Leads</button>
        <div id="dropdown2" class="dropdown-content">
          <a href="#">Search Buyer</a>
          <a href="#">Latest Leads</a>
          <a href="#">Purchased Leads</a>
          <a href="#">Transaction History</a>
          <a href="#">Refunded Leads</a>
          <a href="#">Help/FAQs</a>
        </div>
      </div>
      <div class="dropdown">
        <button onclick="toggleDropdown('dropdown3')" class="dropbtn">More</button>
        <div id="dropdown3" class="dropdown-content">
          <a href="#">My Requirement</a>
          <a href="./add_property.php">Post Requirement</a>
          <a href="#">Requirement Solution</a>
          <a href="#">My Subscription</a>
        </div>
      </div>
    </div>
    <a href="./add_property.php"><button class="post-btn">+ Post Property</button></a>
  </div>

  <div class="dashboard">
    <h3>Your Business Insights</h3>
    <div class="line"></div><br>

    <div class="insight-boxes">
      <div class="box red">
        <div class="more">More Info</div>
        <div class="info"><i class="fas fa-envelope"></i> New Enquiries</div>
        <div class="count">29/100</div>
      </div>
      <div class="box blue">
        <div class="more">More Info</div>
        <div class="info"><i class="fas fa-building"></i> Property for Sale</div>
        <div class="count">24</div>
      </div>
      <div class="box green">
        <div class="more">More Info</div>
        <div class="info"><i class="fas fa-download"></i> Property for Rent</div>
        <div class="count">24</div>
      </div>
      <div class="box orange">
        <div class="more">More Info</div>
        <div class="info"><i class="fas fa-building"></i> Recommended Leads</div>
        <div class="count">20</div>
      </div>
    </div>

    <div class="stats">
      <div class="card">
        <h4>Latest Enquiries</h4>
        <div class="empty-state"><i class="fas fa-info-circle"></i><br>No Enquiry Found</div>
      </div>
      <div class="card">
        <h4>Property Buyers</h4>
        <div class="empty-state"><i class="fas fa-info-circle"></i><br>No Property Leads Found</div>
      </div>
      <div class="card">
        <h4>My Property Stats</h4>
        <ul class="property-stats">
          <li>Total Property Listing Limit <span class="badge bg-gray" id="total-listing">00</span></li>
          <li>Active Property Sale <span class="badge bg-green" id="active-sale">07</span></li>
          <li>Active Property Rent + PG <span class="badge bg-green" id="active-rent">28</span></li>
          <li>Waiting for Approval Property <span class="badge bg-red" id="waiting-approval">14</span></li>
          <li>Deleted Property <span class="badge bg-yellow" id="deleted">00</span></li>
          <li>Incomplete Property <span class="badge bg-blue" id="incomplete">00</span></li>
        </ul>
        <!-- Simulate Add Property Button (for demo) -->
        <button id="add-property-btn" style="margin-top:10px;">Add Property (Demo)</button>
      </div>
    </div>
  </div>

  <script>
    function toggleDropdown(id) {
      document.getElementById(id).classList.toggle("show");
    }

    // Close all dropdowns when clicking outside
    window.onclick = function (event) {
      if (!event.target.matches('.dropbtn')) {
        const dropdowns = document.getElementsByClassName("dropdown-content");
        for (let i = 0; i < dropdowns.length; i++) {
          dropdowns[i].classList.remove('show');
        }
      }
    }

    // Auto-increment property stats (demo)
    document.getElementById('add-property-btn').onclick = function () {
      // Get current values
      const totalListing = document.getElementById('total-listing');
      const activeSale = document.getElementById('active-sale');
      // Parse and increment
      totalListing.textContent = String((parseInt(totalListing.textContent, 10) || 0) + 1).padStart(2, '0');
      activeSale.textContent = String((parseInt(activeSale.textContent, 10) || 0) + 1).padStart(2, '0');
    };
  </script>
</body>

</html>
