<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type");

// Database connection
$servername = "localhost";
$username = "root"; // Your database username
$password = ""; // Your database password
$dbname = "supermarket"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch ordered items
$query = "SELECT item_name, unitPrice, quantity, total_price FROM householdaddtocart";
$result = $conn->query($query);

$orderedItems = [];

// Fetch data and ensure the correct data types
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $orderedItems[] = [
            'item_name' => $row['item_name'],
            'unitPrice' => (float)$row['unitPrice'], // Cast to float
            'quantity' => (int)$row['quantity'],     // Cast to int
            'total_price' => (float)$row['total_price'] // Cast to float
        ];
    }
}

// Return JSON response
header('Content-Type: application/json');
echo json_encode($orderedItems);

// Close connection
$conn->close();
?>
