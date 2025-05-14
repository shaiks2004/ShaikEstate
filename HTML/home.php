<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShaikEstate</title>
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="../CSS/home.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/footer.css">
</head>
<body>
    <!-- Header Copied from header.html for sample using-->
    <header class="Mainhead">
        <nav class="navigator">
            <a href="../HTML/home.php"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo"></a>
            <ul class="nav-menu">
                <li><a href="../HTML/home.html" class="navs">Home</a></li>
                <li><a href="../HTML/Features.html" class="navs">Features</a></li>
                <li><a href="../HTML/Projects.php" class="navs">Projects</a></li>
                <li><a href="../HTML/Aboutus.html" class="navs">About</a></li>
                <li><a href="../HTML/Contanctus.html" class="navs">Contact</a></li>
                <div class="naver-menu" >
                 <img src="../IMAGES/user.png" alt="user" class="img">

                 <?php 
                    session_start();
                    if(isset($_SESSION['user_name'])){
                        echo "<style>
                            .logged-out{
                                display:none;
                            }
                        </style>";

                        $host = 'localhost';
                        $dbname = 'shaikestate';
                        $username = 'root';
                        $password = '';
                        $name = $_SESSION['user_name'];

                        $mysqli = mysqli_connect($host, $username, $password, $dbname);

                        $sql = " SELECT * FROM `user` WHERE `name` = '$name' ";

                        $res = mysqli_query($mysqli,$sql);

                        $row = mysqli_fetch_assoc($res);

                        
                        $phone = $row['phone'];

                        $role = $row['role'];

                        $email = $row['email'];

                    }else{
                        echo "<style>
                        .logged-in{
                        display:none;
                        }
                    </style>";
                    }
                 ?>



                <li class="list logged-in" id="logged-in" type="button" style="user-select:none">View<br>Profile</li>

                <li><a href="login.php"><li class="list logged-out" id="user_name">Sign in<br>Join Free</li></a></li>
            </div>
            </ul>
        </nav>
        <?php if(isset($_SESSION['user_name'])){ ?>
        <div class="profile-box" id="profile-box">
            <h2>Profile Info</h2>
            <p><strong>Name:</strong> <?=$_SESSION['user_name']?></p>
            <p><strong>Phone:</strong> <?=$row['phone']?></p>
            <p><strong>Role:</strong> <?=$row['role']?></p>
            <p><strong>Email:</strong> <?=$row['email']?></p>
        </div>
        <?php } ?>

    </header>
    <!-- here oour code main code goess -->
    <header class="hero">
        <div class="hero-content">
            <h1>We help people find their dream house</h1>
            <p>Search by apartment, location, or price</p>
    <form action="../HTML/display_properties.php" method="POST">
            <div class="search-bar">
                <div class="search-container"> <!-- NEW container for relative positioning -->
                    <input type="text" name="selector" placeholder="Search here" id="search-input" oninput="showSuggestions()">
                    <button><i class="fas fa-search" style="color: #ffff;"></i></button>
                    <ul id="suggestions" class="suggestions-list"></ul>
                </div>
            </div>
            </form>
            </div>
    </header>
    

    <!-- Stats Section -->
    <section class="stats">
                <div class="stat-item"><strong>2+</strong> Years Experience</div>
        <div class="stat-item"><strong>60+</strong> Clients</div>
        <div class="stat-item"><strong>1.2K</strong> Properties Sold</div>
        <div class="stat-item"><strong>15 Towns</strong> Coverage</div>
    </section>

    <section class="services">
        <h2>What we offer to our customers?</h2>
        <div class="service-cards">
            <div class="card">Affordable Listings</div>
            <div class="card">Verified Properties</div>
            <div class="card">Best Customer Support</div>
            <div class="card">Owner-to-Buyer Listings</div>
            <div class="card">Rent-to-Own Homes</div>
            <div class="card">Eco-Friendly Housing</div>
            <div class="card">Low Rent</div>
            <div class="card">0% Commision</div>
            <div class="card">Exchange</div>
            <div class="card">Upto User Radius</div>
        </div>
    </section>


    <!-- Featured Properties -->
    <section class="featured">
        <h2>Featured Properties</h2>
        <div class="property-container">
            <div class="property-card">
                <img src="../IMAGES/features1.jpg" alt="CPR Mangala">
                <div class="property-info">
                    <h3>Agraharam Palli</h3>
                    <p>A Lifestyle Gated Town hose</p>
                    <p>Location: Tallupula, Kadiri | 1 BHK Apartment</p>
                    <p class="size">255 to 365 SFT.</p>
                </div>
            </div>

            <div class="property-card">
                <img src="../IMAGES/feattures2.jpg" alt="CPR Cosmos">
                <div class="property-info">
                    <h3>NandiPalli</h3>
                    <p>A Natural Apartments</p>
                    <p>Location:Nandipalli, Nandyal | 1 & 2 BHK Apartments</p>
                    <p class="size">230 to 285 SFT.</p>
                </div>
            </div>

            <div class="property-card">
                <img src="../IMAGES/feature4.jpg" alt="CPR Park Heights">
                <div class="property-info">
                    <h3>Shaik'S Boys Hostel</h3>
                    <p>A Freindly Apartments</p>
                    <p>Location: Mangalam, Tirupati | 2 BHK Apartments</p>
                    <p class="size">800 to 850 SFT.</p>
                </div>
            </div>

            <div class="property-card">
                <img src="../IMAGES/feature5.jpg" alt="CPR I.S. Jewel">
                <div class="property-info">
                    <h3>CPR I.S. Jewel</h3>
                    <p>Super Luxury Apartments</p>
                    <p>Location: Nehru Nagar, Tirupati | 2 & 3 BHK Apartments</p>
                    <p class="size">1210 to 2050 SFT.</p>
                </div>
            </div>
        </div>
        <div class="view-more">
            <li>
                <a href="../HTML/Projects.html" class="view-more-btn">
                    View More Features <i class="bi bi-arrow-right"></i>
                </a>
            </li>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>So, what are you waiting for?</h2>
            <p>Get your dream home today with exclusive deals!</p>
            <a href="#" class="cta-btn">Find Your Home</a>
        </div>
    </section>




    </div>
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
        document.addEventListener("DOMContentLoaded", function () {
            let scrollContainer = document.querySelector(".service-cards");
            let cards = document.querySelectorAll(".card");
            let scrollSpeed = 1; // Adjust speed

            function autoScroll() {
                if (scrollContainer.scrollLeft >= scrollContainer.scrollWidth - scrollContainer.clientWidth) {
                    // Reset to start without shrinking
                    scrollContainer.scrollLeft = 0;
                } else {
                    scrollContainer.scrollLeft += scrollSpeed;
                }

            }

            setInterval(autoScroll, 10); // Adjust interval speed
        });
    </script>
    <script src="../JavaScript/suggestions.js"></script>
</body>
 <?php
session_start();

if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
    $user_name = $_COOKIE['user_name'];
    echo "<script>document.getElementById('user_name').innerHTML = 'Welcome <br>$user_name';</script>";
}
else{
    echo "<script>document.getElementById('user_name').innerHTML = '<a href=\"./login.php\">Sign in <br> Join Free </a>';</script>";
}
?> 
</html>






<!-- paste css and js code in the files -->
<!-- home.css -->
<style>
    .profile-box {
        position: fixed;
        bottom: 20px;
        right: 20px;
        width: 250px;
        background-color: #ffffff;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 15px;
        font-family: Arial, sans-serif;
        z-index: 1000;
        user-select: none; /* Prevents text selection */
        -webkit-user-select: none; /* Safari */
        -ms-user-select: none;     /* IE/Edge */
    }

    .profile-box h2 {
        margin-top: 0;
        font-size: 18px;
        border-bottom: 1px solid #ddd;
        padding-bottom: 5px;
    }

    .profile-box p {
        margin: 8px 0;
        font-size: 14px;
        color: #333;
    }

    .profile-box strong {
        color: #555;
    }
</style>

<!-- sugessions.js -->
<script>

let profile_button = document.getElementById('logged-in');

let profile_box = document.getElementById('profile-box');

let pflag = true;

profile_button.addEventListener('click',function(){
    if(pflag){
        profile_box.style = 'display : none';
        pflag = false
    }else{
        profile_box.style = 'display : block';
        pflag = true
    }
})

</script>
