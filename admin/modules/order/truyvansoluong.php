<?php
include('../../config/config.php');

$product_id = $_POST['product_id'];

$query = "SELECT product_quantity FROM product WHERE product_id = $product_id";
$result = $mysqli->query($query);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $product_quantity = $row['product_quantity'];

    echo json_encode(array('quantity' => $product_quantity));
} else {
    echo json_encode(array('quantity' => '0'));
}
