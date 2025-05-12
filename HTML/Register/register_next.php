<?php
session_start();
require_once '../../config/db.php';

$success_message = '';
$error_message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $role = isset($_POST['role']) ? trim($_POST['role']) : '';
    $name = isset($_POST['name']) ? trim($_POST['name']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';
    $mobile = isset($_POST['mobile']) ? trim($_POST['mobile']) : '';
    $city = isset($_POST['city']) ? trim($_POST['city']) : '';

    // Basic validation
    if (empty($role) || empty($name) || empty($email) || empty($password) || empty($mobile) || empty($city)) {
        $error_message = 'Please fill all required fields';
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $error_message = 'Invalid email address';
    } else {
        // Hash password
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Check if email already exists
        $email_escaped = mysqli_real_escape_string($mysqli, $email);
        $query_check = "SELECT user_id FROM user WHERE email = '$email_escaped'";
        $result_check = mysqli_query($mysqli, $query_check);
        if (!$result_check) {
            $error_message = 'Database error: ' . mysqli_error($mysqli);
        } elseif (mysqli_num_rows($result_check) > 0) {
            $error_message = 'Email already registered';
        } else {
            // Insert user into database
            $role_escaped = mysqli_real_escape_string($mysqli, $role);
            $name_escaped = mysqli_real_escape_string($mysqli, $name);
            $mobile_escaped = mysqli_real_escape_string($mysqli, $mobile);
            $city_escaped = mysqli_real_escape_string($mysqli, $city);

            $query_insert = "INSERT INTO user (role, name, email, password, phone, city, createdAt, updatedAt) VALUES ('$role_escaped', '$name_escaped', '$email_escaped', '$hashed_password', '$mobile_escaped', '$city_escaped', NOW(), NOW())";

            if (mysqli_query($mysqli, $query_insert)) {
                $success_message = 'User registered successfully';
            } else {
                $error_message = 'Database error: ' . mysqli_error($mysqli);
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>New User Registration - RealEstateIndia</title>
  <link rel="stylesheet" href="./style.css" />
  <link rel="stylesheet" href="../../CSS/header.css" />
  <link rel="stylesheet" href="../../CSS/footer.css" />
  <style>
    #slider-popup {
      position: fixed;
      top: 20px;
      right: -400px;
      width: 280px;
      padding: 15px 20px;
      background-color: #dc3545;
      color: white;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
      border-radius: 5px 0 0 5px;
      transition: right 1s linear;
      z-index: 1000;
    }

    #slider-popup.show {
      right: 20px;
    }

    #slider-close {
      position: absolute;
      top:25px;
      left: 10px;
      cursor: pointer;
      font-weight: bold;
      font-size: 18px;
    }
  </style>
</head>

<body>
  <div id="header-placeholder">
    <header class="Mainhead">
      <nav class="navigator">
        <a href="#"><img src="../../IMAGES/logo.png" alt="ShaikEstate" class="logo" id="header-logo" /></a>
        <ul class="nav-menu">
          <li><a href="#" class="navs">Home</a></li>
          <li><a href="#" class="navs">Features</a></li>
          <li><a href="#" class="navs">Projects</a></li>
          <li><a href="#" class="navs">About</a></li>
          <li><a href="#" class="navs">Contact</a></li>
        </ul>
      </nav>
    </header>
  </div>

  <div id="slider-popup">
    <span id="slider-close">&times;</span>
    <p id="slider-message"></p>
  </div>

  <div class="container">
    <form class="registration-form" id="registerForm" method="POST" action="">
      <h2>New User Registration</h2>
      <p>Create an Account to Avail the Best Real Estate Solutions</p>

      

      <div class="radio-group">
        <label>I am</label>
        <label><input type="radio" name="role" value="Buyer" required <?php if (isset($role) && $role === 'Buyer') echo 'checked'; ?> /> Buyer</label>
        <label><input type="radio" name="role" value="Seller" required <?php if (isset($role) && $role === 'Seller') echo 'checked'; ?> /> Seller</label>
        <label><input type="radio" name="role" value="Builder" required <?php if (isset($role) && $role === 'Builder') echo 'checked'; ?> /> Builder</label>
      </div>

      <input type="text" name="name" placeholder="Your Name" required value="<?php echo isset($name) ? htmlspecialchars($name) : ''; ?>" />
      <input type="email" name="email" placeholder="E-mail" required value="<?php echo isset($email) ? htmlspecialchars($email) : ''; ?>" />
      <input type="password" name="password" placeholder="Password" required />
      <small class="error-text">Enter Your Password</small>

      <input type="text" name="city" placeholder="City" required value="<?php echo isset($city) ? htmlspecialchars($city) : ''; ?>" />

      <div class="mobile-group">
        <select name="country_code" disabled>
          <option value="+91">IND (+91)</option>
        </select>
        <input type="tel" name="mobile" placeholder="Phone" required value="<?php echo isset($mobile) ? htmlspecialchars($mobile) : ''; ?>" />
      </div>

      <label class="terms">
        <input type="checkbox" required /> I agree to all the
        <a href="#">Terms & Conditions</a>, <a href="#">Privacy Policy</a> stated herein.
      </label>

      <button type="submit">CONTINUE ➞</button>
      <p class="login-text">Already Registered? <a href="../login.html">Login here</a></p>
      </form>
  </div>
  <div class="footer-placeholder"></div>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      // fetch("../../components/header.html")
      //   .then(res => res.text())
      //   .then(data => document.getElementById("header-placeholder").innerHTML = data);

      fetch('../../components/footer.html')
        .then((res) => res.text())
        .then((data) => (document.getElementById('footer-placeholder').innerHTML = data));

      const sliderPopup = document.getElementById('slider-popup');
      const sliderMessage = document.getElementById('slider-message');
      const sliderClose = document.getElementById('slider-close');

      function showSlider(message, isError = true) {
        sliderMessage.textContent = message;
        sliderPopup.style.backgroundColor = isError ? '#dc3545' : '#28a745';
        sliderPopup.classList.add('show');
        setTimeout(() => {
          sliderPopup.classList.remove('show');
        }, 10000);
      }

      sliderClose.addEventListener('click', () => {
        sliderPopup.classList.remove('show');
      });

      <?php if ($success_message): ?>
      showSlider("<?php echo addslashes($success_message); ?>", false);
      <?php elseif ($error_message): ?>
      showSlider("<?php echo addslashes($error_message); ?>", true);
      <?php endif; ?>

      

      const form = document.getElementById('registerForm');
      const passwordInput = form.querySelector('input[name="password"]');
      const errorText = form.querySelector('.error-text');

      form.addEventListener('submit', (e) => {
        const password = passwordInput.value;
        const passwordValid = validatePassword(password);
        if (!passwordValid) {
          e.preventDefault();
          errorText.textContent =
            'Password must be at least 8 characters, include uppercase, lowercase, number, and special character.';
          errorText.style.color = 'red';
          passwordInput.focus();
        } else {
          errorText.textContent = '';
        }
      });

      function validatePassword(password) {
        const minLength = 8;
        const hasUpperCase = /[A-Z]/.test(password);
        const hasLowerCase = /[a-z]/.test(password);
        const hasNumber = /[0-9]/.test(password);
        const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);
        return (
          password.length >= minLength &&
          hasUpperCase &&
          hasLowerCase &&
          hasNumber &&
          hasSpecialChar
        );
      }
    });
  </script>
</body>

</html>
