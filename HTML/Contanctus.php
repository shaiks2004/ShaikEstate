<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ShaikEstate</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/footer.css">
    <link rel="stylesheet" href="../CSS/Contactus.css">
    <link rel="stylesheet" href="../css/login.css">
    <script>
        function login() {
            document.getElementById("section-1").style.filter = "blur(5px)";
            document.getElementById("section-2").style.filter = "blur(5px)";
            document.getElementById("login_click").style.display ="block";
        }
    </script>
</head>

<body>
<section id="section-1">
    <header class="Mainhead">
        <nav class="navigator">
            <a href="../HTML/home.php"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo"></a>
            <div class="flit">
                <ul class="nav-menu " onclick="register(event)">
                    <img src="../IMAGES/user.png" alt="user" class="img">
                    <div class="flit2" onclick="login()">
                        <li>Sign in <br> Join Free</li>
                    </div>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Breadcrumbs -->
    <section>
        <div class="dash">
            <span>Home</span>
            <span>Contact Us</span>
        </div>
    </section>
</section>
    <div class="container" style="display: none;" id="login_click">
        <div class="log-form">
            <form action="">
                <h1>Login</h1>
                <div class="form-group">
                    <label for="email">Email ID</label>
                    <input type="email" id="email" placeholder="Enter your email">
                </div>
                <div class="divider"><span>or</span></div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" placeholder="Enter your phone number">
                </div>
                <div class="btn-center d-flex justify-content-center align-items-center">
                    <button type="submit" class="submit">Continue</button>
                </div>
            </form>

            <div class="divider"><span>Not a Member Yet?</span></div>

            <div class="btn-center d-flex justify-content-center align-items-center">
                <button type="submit" class="submit , join"><a href="../HTML/Register/register_next.php">Join Free Now !</a></button>
            </div>

        </div>
    </div>
    <section id="section-2">
    <!-- Contact Section -->
    <div class="container contact-container">
        <div class="left">
            <h1>Get in Touch</h1>
            <p>Have questions? Let us help! Our experts will guide you through the process.</p>
            <p>Email: <a href="mailto:support@shaikestate.com">support@shaikestate.com</a></p>
            <p>Call us at: <strong>+91 1234567890</strong></p>
            <p class="timing">(9:30 AM - 6:00 PM IST, Mon-Sat)</p>

            <!-- Call Now Button -->
            <a href="tel:+911234567890" class="call-now-btn">
                <i class="fas fa-phone"></i> Call Now
            </a>
        </div>

        <div class="right">
            <img src="../IMAGES/contactus.jpg" alt="Contact Us">
        </div>
    </div>

    <h1 class="cta-text">Why wait? We will connect with you shortly!</h1>
   <br>
   <br>
    <h1 style="text-align: center;">Our Company Located</h1>
   <div class="img-container d-flex justify-content-center align-items-center vh-100">
    <img src="../IMAGES/maps.png" alt="Fake Map" class="flex d-flex ">
</div>
<footer class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h3>About ShaikEstate</h3>
            <p>We help you find the best properties at the best prices. Whether you're looking for a new home or an investment, we’ve got you covered.</p>
        </div>

        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
          
                <li><a href="../HTML/home.php" class="navs">Home</a></li>
                <li><a href="../HTML/Features.php" class="navs">Features</a></li>
              
                <li><a href="../HTML/Projects.php" class="navs">Projects</a></li>
                <li><a href="../HTML/Aboutus.php" class="navs">About</a></li>
                <li><a href="../HTML/Contanctus.php" class="navs">Contact</a></li>
            </ul>
        </div>

        <div class="footer-section">
            <h3>Contact Us</h3>
            <p><i class="fas fa-map-marker-alt"></i> 123 Main Street, Your City</p>
            <p><i class="fas fa-phone-alt"></i> +1 (123) 456-7890</p>
            <p><i class="fas fa-envelope"></i> contact@shaikestate.gmail.com</p>
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
        <p>&copy; 2025 ShaikEstate. All rights reserved. | <a href="privacy.php">Privacy Policy</a> | <a href="terms.php">Terms & Conditions</a></p>
    </div>
    <script>
     
    </script>
    </section>
</body>

</html>
