<?php
session_start();
// Destroy all session data
setcookie('user_id', '', time() - 3600*200, "/", "", false, true);
setcookie('user_name', '', time() - 3600*200, "/", "", false, true);

session_destroy();
// Redirect to login page
header("Location: ../HTML/home.php");
exit();
