<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "festDB";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Create database if not exists
$sql = "CREATE DATABASE IF NOT EXISTS $dbname";
if (!$conn->query($sql)) {
    die("Error creating database: " . $conn->error);
}
$conn->select_db($dbname);

// Create table if not exists
$table = "CREATE TABLE IF NOT EXISTS registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
)";
if (!$conn->query($table)) {
    die("Error creating table: " . $conn->error);
}

// Insert data from form
$name  = $conn->real_escape_string($_POST['name']);
$email = $conn->real_escape_string($_POST['email']);
$phone = $conn->real_escape_string($_POST['phone']);

$sql = "INSERT INTO registrations (name, email, phone) VALUES ('$name', '$email', '$phone')";

if ($conn->query($sql) === TRUE) {
    echo "Registration successful!";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
