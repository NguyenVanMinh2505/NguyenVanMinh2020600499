<?php
include('../../config/config.php');

$category_id = $_GET['category_id'] ?? null;
$category_name = $_POST['category_name'] ?? '';
$category_description = $_POST['category_description'] ?? '';
$category_image = $_FILES['category_image']['name'] ?? '';
$category_image_tmp = $_FILES['category_image']['tmp_name'] ?? '';

if ($category_image != '') {
    $category_image = time() . '_' . $category_image;
}

if (isset($_POST['category_add'])) {
    $sql_add = "INSERT INTO category (category_name, category_description, category_image) 
                VALUES ('$category_name', '$category_description', '$category_image')";
    mysqli_query($mysqli, $sql_add);

    if ($category_image_tmp != '') {
        move_uploaded_file($category_image_tmp, 'uploads/' . $category_image);
    }

    header('Location: ../../index.php?action=category&query=category_list');
} elseif (isset($_POST['category_edit'])) {
    if ($category_image != '') {
        move_uploaded_file($category_image_tmp, 'uploads/' . $category_image);

        $sql = "SELECT category_image FROM category WHERE category_id = '$category_id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        $row = mysqli_fetch_assoc($query);
        if ($row && file_exists('uploads/' . $row['category_image'])) {
            unlink('uploads/' . $row['category_image']);
        }

        $sql_update = "UPDATE category SET 
                       category_name = '$category_name', 
                       category_description = '$category_description', 
                       category_image = '$category_image' 
                       WHERE category_id = '$category_id'";
    } else {
        $sql_update = "UPDATE category SET 
                       category_name = '$category_name', 
                       category_description = '$category_description' 
                       WHERE category_id = '$category_id'";
    }

    mysqli_query($mysqli, $sql_update);
    header('Location: ../../index.php?action=category&query=category_list');
} elseif (isset($_GET['data'])) {
    $category_ids = json_decode($_GET['data']);

    foreach ($category_ids as $category_id) {
        $sql = "SELECT * FROM category WHERE category_id = '$category_id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        $row = mysqli_fetch_array($query);

        if (file_exists('uploads/' . $row['category_image'])) {
            unlink('uploads/' . $row['category_image']);
        }

        $sql_delete = "DELETE FROM category WHERE category_id = '$category_id'";
        mysqli_query($mysqli, $sql_delete);
    }

    header('Location: ../../index.php?action=category&query=category_list');
}
