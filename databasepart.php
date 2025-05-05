<?php
// AWS RDS Configuration
$db_server = "clownwebserver.cvagvcnqo1ku.us-east-1.rds.amazonaws.com"; // Get this from AWS RDS console
$db_user = "admin"; // Master username from RDS setup
$db_pass = "adminkoay"; // Master password from RDS setup
$db_name = "assignment"; // Your database name in RDS
$db_port = 3306; // Default MySQL port

// Create connection
$conn = mysqli_connect($db_server, $db_user, $db_pass, $db_name, $db_port);

// Check connection
if (!$conn) {
    error_log("Database connection failed: " . mysqli_connect_error());
    die("Database connection failed. Please try again later.");
}
?>