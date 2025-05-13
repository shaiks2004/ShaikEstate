<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects</title>
    <link rel="stylesheet" href="../CSS/project.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <script src="../JavaScript/include.js" defer></script>
    <link rel="stylesheet" href="../CSS/project.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/footer.css">
</head>


<header class="Mainhead">
    <nav class="navigator">
        <a href="../HTML/home.php"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo"></a>
        <ul class="nav-menu">
            <li><a href="../HTML/home.php" class="navs">Home</a></li>
            <li><a href="../HTML/Features.html" class="navs">Features</a></li>
            <li><a href="../HTML/Projects.php" class="navs">Projects</a></li>
            <li><a href="../HTML/Aboutus.html" class="navs">About</a></li>
            <li><a href="../HTML/Contanctus.html" class="navs">Contact</a></li>
        </ul>
    </nav>
</header>

<body>
    <body>
        <div class="video-background">
            <video autoplay muted loop playsinline>
                <source src="https://belfort.qodeinteractive.com/wp-content/uploads/2023/01/h4-video.mp4" type="video/mp4">
            </video>
            <div class="video-overlay"></div>
            <div class="video-text">
                <h1>Your Dream Home Awaits</h1>
                <h3>Explore projects and get a Trail</h3>
                <a href="#" class="video-btn">Explore Projects</a>
            </div>
        </div>
        
        <div class="container">
        <?php
$host = 'localhost';
$dbname = 'shaikestate';
$username = 'root';

$mysqli = mysqli_connect($host, $username, $password, $dbname);

if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM `property`";

$query = mysqli_query($mysqli, $sql);

if (!$query) {
    die("Query failed: " . mysqli_error($mysqli));
}

while ($row = mysqli_fetch_assoc($query)) {

    $newsql = "SELECT `image_url` FROM `property_images` WHERE `property_id` = '{$row['property_id']}'";



        $newquery = mysqli_query($mysqli, $newsql);

        $url = mysqli_fetch_assoc($newquery);


    ?>

        <div class="post-item">
            <a href="#" class="post-item-image" style="background-image: url('../<?=$url['image_url']?>');"></a>
            <div class="post-item-info">
                <a href="#" class="post-item-title">
                    <h4><?=$row['property_type']?></h4>
                </a>
                <div class="post-item-date">
                    <strong><?=$row['area_sqft'] ?> Sqft Units</strong>
                </div>
                <div class="post-item-date">
                    <strong><?=$row['price']?> INR</strong>
                </div>
                <div class="post-item-date">
                    <?=$row['address']?>
                </div>
                <div class="view-more">
                    <li>
                        <a href="../HTML/Projects.html" class="view-more-btn">
                            View More Features <i class="bi bi-arrow-right"></i>
                        </a>
                    </li>
                </div>
            </div>
        </div>
       
        <?php
        }

        mysqli_close($mysqli);
        ?>
    </div>
    <div class="trail">
        <section class="trial-cta">
            <h1>Get a Free Trial on Our Built Projects</h1>
            <p>Explore our completed properties before you decide. Book a trial visit today!</p>
            <a href="#" class="trial-btn">Book a Free Trial</a>
        </section>
    </div>
    
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
        <div class="footer-bottom">
            <p>&copy; 2025 ShaikEstate. All rights reserved. | <a href="privacy.html">Privacy Policy</a> | <a
                    href="terms.html">Terms & Conditions</a></p>
        </div>
    </footer>
</body>

</html>