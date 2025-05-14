<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Add Property</title>
  <link rel="stylesheet" href="../CSS/header.css">
  <link rel="stylesheet" href="../CSS/footer.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <header class="Mainhead">
        <nav class="navigator">
            <a href="../HTML/home.php"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo" id="header-logo"></a>
            <ul class="nav-menu">
                <li>
                    <a href="javascript:history.back()" class="navs">
                        <i class="bi bi-arrow-left-circle" style="font-size: 1.5rem; color: #e4ba7a;"></i> <!-- Back Icon -->
                    </a>
                </li>
            </ul>
        </nav>
    </header>

  <section class="bg-white p-4 rounded shadow mb-4">
    <h3 class="mb-3" style="color:#124076;">Add New Property</h3>
    <form id="property-form" method="POST" action="../api/add_property.php" enctype="multipart/form-data">
      <div class="row g-3">
        <div class="col-md-6">
          <input type="text" class="form-control" placeholder="Address" id="address" name="address" required />
        </div>
        <div class="col-md-6">
          <input type="text" class="form-control" placeholder="Price" id="price" name="price" required />
        </div>
        <div class="col-md-6">
          <input type="number" class="form-control" placeholder="Bedrooms" id="bedrooms" name="bedrooms" required />
        </div>
        <div class="col-md-6">
          <input type="number" class="form-control" placeholder="Bathrooms" id="bathrooms" name="bathrooms" required />
        </div>
        <div class="col-md-6">
          <input type="number" class="form-control" placeholder="Area (sqft)" id="area_sqft" name="area_sqft" required />
        </div>
        <div class="col-md-6">
          <select class="form-select" id="type" name="type" required>
            <option value="">Select Type</option>
            <option value="House">House</option>
            <option value="Land">Land</option>
            <option value="Farm">Farm</option>
            <option value="Commercial">Commercial</option>
               <option value="PG">Pg</option>
          </select>
        </div>
        <div class="col-md-6">
          <select class="form-select" id="town_id" name="town_id" required>
            <option value="">Select Town</option>
          </select>
        </div>
      
        <div class="col-md-6">
          <label for="images" class="form-label">Property Images</label>
          <input type="file" class="form-control" id="images" name="images[]" multiple accept="image/*" />
        </div>
      </div>
      <div class="mt-3 text-end">
        <button type="submit" class="btn btn-primary" style="background-color:#0A1931; border-color:#ac835d;">Add Property</button>
      </div>
    </form>
  </section>

   <footer class="footer">
        <div class="footer-container">
            <div class="footer-section">
                <h3>About ShaikEstate</h3>
                <p>We help you find the best properties at the best prices. Whether you're looking for a new home or an investment, we’ve got you covered.</p>
            </div>
    
            <div class="footer-section">
                <h3 style="margin-left: 25px;">Quick Links</h3>
                <ul>
                    <li><a href="../HTML/home.html" class="navs">Home</a></li>
                    <li><a href="../HTML/Features.html" class="navs">Features</a></li>
                    <li><a href="../HTML/Projects.html" class="navs">Projects</a></li>
                    <li><a href="../HTML/Aboutus.html" class="navs">About</a></li>
                    <li><a href="../HTML/Contanctus.html" class="navs">Contact</a></li>
                </ul>
            </div>
    
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p><i class="fas fa-map-marker-alt"></i> 123 Main Street, Your City</p>
                <p><i class="fas fa-phone-alt"></i> +1 (123) 456-7890</p>
                <p><i class="fas fa-envelope"></i> info@shaikestate.com</p>
            </div>
    
            <div class="footer-section">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="https://www.instagram.com/athaulla_athu_01_/?hl=en"><i class="fab fa-facebook"></i></a>
                    <a href="https://x.com/REMarketingTips"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.instagram.com/athaulla_athu_01_/?hl=en"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.instagram.com/athaulla_athu_01_/?hl=en"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>
    
        <div class="footer-bottom">
            <p>&copy; 2025 ShaikEstate. All rights reserved. | <a href="privacy.html">Privacy Policy</a> | <a href="terms.html">Terms & Conditions</a></p>
        </div>
    </footer>
  <script>
    async function fetchTowns() {
      try {
        const response = await fetch('../api/get_towns.php');
        const towns = await response.json();
        const townSelect = document.getElementById('town_id');
        towns.forEach(town => {
          const option = document.createElement('option');
          option.value = town.town_id;
          option.textContent = town.name;
          townSelect.appendChild(option);
        });
      } catch (error) {
        console.error('Error fetching towns:', error);
      }
    }

    fetchTowns();
  </script>
</body>
</html>
