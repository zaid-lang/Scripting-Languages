<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "myDatabase";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// CREATE: Insert a new record into the users table.
$insert_sql = "INSERT INTO users (name) VALUES ('Alice')";
if ($conn->query($insert_sql) === TRUE) {
    echo "New record created successfully.<br>";
} else {
    echo "Error: " . $conn->error . "<br>";
}

// READ: Retrieve records from the table.
$select_sql = "SELECT id, name FROM users";
$result = $conn->query($select_sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Name: " . $row["name"]. "<br>";
    }
} else {
    echo "0 results<br>";
}

// UPDATE: Update the record in the table.
$update_sql = "UPDATE users SET name='Bob' WHERE name='Alice'";
if ($conn->query($update_sql) === TRUE) {
    echo "Record updated successfully.<br>";
} else {
    echo "Error updating record: " . $conn->error . "<br>";
}

// DELETE: Delete the record from the table.
$delete_sql = "DELETE FROM users WHERE name='Bob'";
if ($conn->query($delete_sql) === TRUE) {
    echo "Record deleted successfully.<br>";
} else {
    echo "Error deleting record: " . $conn->error . "<br>";
}

$conn->close();
?>
