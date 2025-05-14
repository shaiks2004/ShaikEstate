<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="../CSS/Aboutus.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header class="about-header">
        <nav class="navigator">
            <a href="../HTML/home.php"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo"></a>
            <ul class="nav-menu">
                <li><a href="../HTML/home.php" class="navs">Home</a></li> <!-- Home Navigation -->
                <li><a href="../HTML/login.php" class="navs">Login</a></li> <!-- Login Navigation -->

            </ul>
        </nav>
        <h1>About Us</h1>
        <p>Learn more about who we are and what we do</p>
    </header>

    <section class="about-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2>Our Mission</h2>
                    <p>
                        At ShaikEstate, our mission is to provide exceptional real estate services that exceed client expectations. 
                        We aim to connect people with their dream properties while maintaining transparency, trust, and professionalism.
                    </p>
                </div>
                <div class="col-md-6">
                    <img src="../IMAGES/mission1.jpg" alt="Our Mission" class="img-fluid rounded animated-item">
                </div>
            </div>
        </div>
    </section>

    <section class="values-section">
        <div class="container">
            <h2 class="text-center">Our Core Values</h2>
            <div class="row">
                <div class="col-md-4 text-center animated-item">
                    <i class="bi bi-heart-fill values-icon"></i>
                    <h4>Integrity</h4>
                    <p>We uphold the highest standards of integrity in all our actions.</p>
                </div>
                <div class="col-md-4 text-center animated-item">
                    <i class="bi bi-people-fill values-icon"></i>
                    <h4>Customer Focus</h4>
                    <p>We value our clients and strive to meet their needs with excellence.</p>
                </div>
                <div class="col-md-4 text-center animated-item">
                    <i class="bi bi-lightbulb-fill values-icon"></i>
                    <h4>Innovation</h4>
                    <p>We embrace innovation to deliver the best solutions to our clients.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="timeline-section">
        <div class="container">
            <h2 class="text-center">Our Journey</h2>
            <div class="timeline">
                <div class="timeline-item animated-item">
                    <div class="timeline-content">
                        <h3>2020</h3>
                        <p>ShaikEstate was founded with the vision of connecting people to their dream properties.</p>
                    </div>
                </div>
                <div class="timeline-item animated-item">
                    <div class="timeline-content">
                        <h3>2021</h3>
                        <p>Expanded operations to include commercial properties and luxury apartments.</p>
                    </div>
                </div>
                <div class="timeline-item animated-item">
                    <div class="timeline-content">
                        <h3>2022</h3>
                        <p>Launched our innovative property search platform, making it easier for clients to find their perfect home.</p>
                    </div>
                </div>
                <div class="timeline-item animated-item">
                    <div class="timeline-content">
                        <h3>2023</h3>
                        <p>Achieved a milestone of 10,000 satisfied clients and expanded to new cities.</p>
                    </div>
                </div>
                <div class="timeline-item animated-item">
                    <div class="timeline-content">
                        <h3>2025</h3>
                        <p>Continuing to innovate and grow, with a focus on sustainability and smart living solutions.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="about-footer">
        <p>&copy; 2025 ShaikEstate. All rights reserved.</p>
    </footer>

    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const animatedItems = document.querySelectorAll(".animated-item");

            const observer = new IntersectionObserver((entries) => {
                entries.forEach((entry) => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add("visible");
                    }
                });
            });

            animatedItems.forEach((item) => observer.observe(item));
        });
    </script>
</body>
</html>