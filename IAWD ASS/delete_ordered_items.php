<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

// Connect to the database
$connection = new mysqli('localhost', 'root', '', 'supermarket');

// Check for connection errors
if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}

// Get the POST data from the request
$data = json_decode(file_get_contents('php://input'), true);

if (!empty($data['items'])) {
    $items = $data['items'];

    // Prepare the SQL statement to delete multiple items
    $placeholders = implode(',', array_fill(0, count($items), '?'));
    $stmt = $connection->prepare("DELETE FROM householdaddtocart WHERE item_name IN ($placeholders)");

    // Bind the item names to the placeholders
    $types = str_repeat('s', count($items));
    $stmt->bind_param($types, ...$items);

    if ($stmt->execute()) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'error' => $connection->error]);
    }

    $stmt->close();
} else {
    echo json_encode(['success' => false, 'error' => 'No items to delete']);
}

// Close the database connection
$connection->close();
?>