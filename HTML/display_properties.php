<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/display_properties.css">
    <link rel="stylesheet" href="../CSS/home.css">
     <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/footer.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Document</title>
</head>
<body>
    <header class="Mainhead">
        <nav class="navigator">
            <a href="../HTML/home.php"><img src="../IMAGES/logo.png" alt="ShaikEstate" class="logo"></a>
            <ul class="nav-menu">

                <li><a href="../HTML/Contanctus.php" class="navs">Contact</a></li>
            </nav>
    </header>

    <section>
        <div class="display_properties">
            <?php
            if(isset($_POST['selector'])) {
                // $property_id = $_POST['property_id'];
                 require_once '../config/db.php';
           $query = "SELECT * FROM property WHERE town_id = (select town_id from town where name LIKE '%{$_POST['selector']}%') ;";
$result = mysqli_query($mysqli, $query);
$query2 = "SELECT town_id,name FROM `town` WHERE name LIKE '%{$_POST['selector']}%';";
$result2 = mysqli_query($mysqli, $query2);
$array_towns = array();
while ($row = mysqli_fetch_assoc($result2)) {
    $row1 = array(); // Create a new row

    $array_towns[] = $row; // Add row to the matrix
}
$json_data = json_encode($array_towns);
echo "<script>
a={$json_data}
console.log( a);</script>";
if ($result && mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $property_id = $row['property_id'];

        // Display property details
        echo "<div class='property-card'>";
        foreach ($array_towns as $town) {
            if ($town['town_id'] == $row['town_id']) {
                echo "<h3>" . $town['name'] . "</h3>";
                break;
            }
        }
        echo "<p>" . $row['property_type'] . "</p>";
        echo "<p>Location: " . $row['address'] . "</p>";
        echo "<p>Price: " . $row['price'] . "</p>";
        echo "</div>";
    }
} else {
    echo "<h1>No properties are uploaded yet </h1>";
}

            } else {
                echo "<h1>Property ID not provided</h1>";
                exit;
            }
         
?>
            </div>
    </section>
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
                    <li><a href="#" class="navs">Home</a></li>
                    <li><a href="#" class="navs">Features</a></li>
                    <li><a href="#" class="navs">Projects</a></li>
                    <li><a href="#" class="navs">About</a></li>
                    <li><a href="#" class="navs">Contact</a></li>
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
            <p>&copy; 2025 ShaikEstate. All rights reserved. | <a href="privacy.php">Privacy Policy</a> | <a
                    href="terms.php">Terms & Conditions</a></p>
        </div>
    </footer>
</body>
</html>