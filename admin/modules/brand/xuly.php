<?php
include('../../config/config.php');

$brand_name = isset($_POST['brand_name']) ? mysqli_real_escape_string($mysqli, $_POST['brand_name']) : '';

if (isset($_POST['brand_add'])) {
    if (!empty($brand_name)) {
        $sql_add = "INSERT INTO brand (brand_name) VALUES ('$brand_name')";
        if (mysqli_query($mysqli, $sql_add)) {
            header('Location: ../../index.php?action=brand&query=brand_list');
            exit();
        } else {
            echo "Lỗi thêm thương hiệu: " . mysqli_error($mysqli);
        }
    }
} elseif (isset($_POST['brand_edit'])) {
    $brand_id = $_GET['brand_id'];
    if (!empty($brand_name)) {
        $sql_update = "UPDATE brand SET brand_name = '$brand_name' WHERE brand_id = '$brand_id'";
        if (mysqli_query($mysqli, $sql_update)) {
            header('Location: ../../index.php?action=brand&query=brand_list');
            exit();
        } else {
            echo "Lỗi sửa thương hiệu: " . mysqli_error($mysqli);
        }
    }
} elseif (isset($_GET['data'])) {
    $brand_ids = json_decode($_GET['data']);
    foreach ($brand_ids as $id) {
        $sql_delete = "DELETE FROM brand WHERE brand_id = '$id'";
        if (!mysqli_query($mysqli, $sql_delete)) {
            echo "Lỗi xóa thương hiệu: " . mysqli_error($mysqli);
        }
    }
    header('Location: ../../index.php?action=brand&query=brand_list');
    exit();
}
