<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../CSS/login.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/footer.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>login</title>
</head>

<body>
<!-- 
    <!-- Header -->
    <header class="Mainhead">
        <nav class="navigator">
            <a href="#"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo"></a>
            <div class="flit">
                <ul class="nav-menu">
                    <img src="../IMAGES/user.png" alt="user" class="img">
                    <div class="flit2">
                        <li><a href="#" class="nav">Sign in <br> Join Free</a></li>
                    </div>
                </ul>
            </div>
        </nav>
    </header> -->

    <!-- Breadcrumbs -->
    <section>
        <div class="dash">
            <span>Home</span>
            <span>Login</span>
        </div>
    </section>


    <div class="container">
        <div class="log-form">
            <form method="POST" action="../api/login_user.php">
                <h1>Login</h1>
                <div class="form-group">
                    <label for="email">Email ID</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email">
                </div>
                <div class="divider"><span>or</span></div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <div class="btn-center d-flex justify-content-center align-items-center">
                    <button type="submit" class="submit">Continue</button>
                </div>
            </form>

            <div class="divider"><span>Not a Member Yet?</span></div>

            <div class="btn-center d-flex justify-content-center align-items-center ">
               <a href="../HTML/Register/register_next.php"> <button type="button" class="submit , join">Join Free Now !</button></a>
            </div>

        </div>
    </div>
    </div>







<!-- 
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-section">
                <h3>About ShaikEstate</h3>
                <p>We help you find the best properties at the best prices. Whether you're looking for a new home or an
                    investment, we’ve got you covered.</p>
            </div>

            <div class="footer-section">
                <h3>Quick Links</h3>
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
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>

       -->


</body>

</html>