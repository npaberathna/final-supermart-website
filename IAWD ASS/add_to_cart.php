<?php
// Connect to the database
$conn = new mysqli('localhost', 'root', '', 'supermarket'); // Adjust the credentials if needed

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if POST data is received
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the form data sent via JavaScript
    $item_name = $_POST['item_name'];
    $unitPrice = $_POST['unitPrice'];
    $quantity = $_POST['quantity'];
    $total_price = $_POST['total_price'];

    // Prepare SQL query
    $sql = "INSERT INTO householdaddtocart (item_name, unitPrice, quantity, total_price) VALUES (?, ?, ?, ?)";

    // Prepare and bind the statement
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('sdis', $item_name, $unitPrice, $quantity, $total_price);

    // Execute the query
    if ($stmt->execute()) {
        echo "Item added to cart successfully!";
    } else {
        echo "Error: " . $conn->error;
    }

    // Close the statement and connection
    $stmt->close();
}

$conn->close();
?>
