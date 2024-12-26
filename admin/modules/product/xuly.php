<?php
include('../../config/config.php');

// Kiểm tra và gán giá trị cho các biến $_GET và $_POST
$data = isset($_GET['data']) ? $_GET['data'] : null;
$product_ids = $data ? json_decode($data) : [];
$product_id = isset($_GET['product_id']) ? $_GET['product_id'] : null;

$product_name = $_POST['product_name'] ?? '';
$product_brand = $_POST['product_brand'] ?? '';
$product_capacity = $_POST['product_capacity'] ?? '';
$product_category = $_POST['product_category'] ?? '';
$product_price_import = $_POST['product_price_import'] ?? 0;
$product_price = $_POST['product_price'] ?? 0;
$product_sale = !empty($_POST['product_sale']) ? $_POST['product_sale'] : 0;
$product_description = $_POST['product_description'] ?? '';
$product_status = $_POST['product_status'] ?? 0;

// Xử lý ảnh tải lên
$product_image = $_FILES['product_image']['name'] ?? '';
$product_image_tmp = $_FILES['product_image']['tmp_name'] ?? '';
if ($product_image) {
    $product_image = time() . '_' . $product_image;
}

$product_category = isset($_POST['product_category']) && is_numeric($_POST['product_category'])
    ? (int)$_POST['product_category']
    : null;

if ($product_category === null) {
    die("Vui lòng chọn danh mục sản phẩm hợp lệ.");
}

if (isset($_POST['product_add'])) {
    // Thêm sản phẩm
    $sql_add = "
        INSERT INTO product(
            product_name, product_category, product_brand, capacity_id,
            product_price_import, product_price, product_sale,
            product_description, product_image, product_status
        ) VALUES (
            '$product_name', '$product_category', '$product_brand', '$product_capacity',
            '$product_price_import', '$product_price', '$product_sale',
            '$product_description', '$product_image', '$product_status'
        )
    ";
    if (mysqli_query($mysqli, $sql_add)) {
        if ($product_image) {
            move_uploaded_file($product_image_tmp, 'uploads/' . $product_image);
        }
        header('Location: ../../index.php?action=product&query=product_list&message=success');
    } else {
        echo "Lỗi khi thêm sản phẩm: " . mysqli_error($mysqli);
    }
} elseif (isset($_POST['product_edit'])) {
    // Cập nhật sản phẩm
    if ($product_image) {
        // Cập nhật hình ảnh
        move_uploaded_file($product_image_tmp, 'uploads/' . $product_image);
        $sql = "SELECT * FROM product WHERE product_id = '$product_id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['product_image']);
        }
        $sql_update = "
            UPDATE product SET
            product_name = '$product_name',
            product_brand = '$product_brand',
            capacity_id = '$product_capacity',
            product_category = '$product_category',
            product_price_import = '$product_price_import',
            product_price = '$product_price',
            product_sale = '$product_sale',
            product_description = '$product_description',
            product_image = '$product_image',
            product_status = '$product_status'
            WHERE product_id = '$product_id'
        ";
    } else {
        // Không cập nhật hình ảnh
        $sql_update = "
            UPDATE product SET
            product_name = '$product_name',
            product_brand = '$product_brand',
            capacity_id = '$product_capacity',
            product_category = '$product_category',
            product_price_import = '$product_price_import',
            product_price = '$product_price',
            product_sale = '$product_sale',
            product_description = '$product_description',
            product_status = '$product_status'
            WHERE product_id = '$product_id'
        ";
    }
    if (mysqli_query($mysqli, $sql_update)) {
        header('Location: ../../index.php?action=product&query=product_list&message=success');
    } else {
        echo "Lỗi khi cập nhật sản phẩm: " . mysqli_error($mysqli);
    }
} elseif (isset($_GET['product_sale'])) {
    // Cập nhật giảm giá
    $sale = $_GET['product_sale'] ?? 0;
    foreach ($product_ids as $id) {
        $sql_sale = "UPDATE product SET product_sale = $sale WHERE product_id = '$id'";
        mysqli_query($mysqli, $sql_sale);
    }
    header('Location: ../../index.php?action=product&query=product_list&message=success');
} elseif (isset($_GET['deleteevaluate']) && $_GET['deleteevaluate'] == 1) {
    // Xóa đánh giá
    $evaluate_ids = $data ? json_decode($data) : [];
    foreach ($evaluate_ids as $id) {
        $sql_delete_evaluate = "DELETE FROM evaluate WHERE evaluate_id = '$id'";
        mysqli_query($mysqli, $sql_delete_evaluate);
    }
    header('Location: ../../index.php?action=product&query=product_edit&product_id=' . $product_id . '&message=success#product_evaluate');
} elseif (isset($_GET['spamevaluate']) && $_GET['spamevaluate'] == 1) {
    // Đánh dấu đánh giá spam
    $evaluate_ids = $data ? json_decode($data) : [];
    foreach ($evaluate_ids as $id) {
        $sql_update_evaluate = "UPDATE evaluate SET evaluate_status = -1 WHERE evaluate_id = '$id'";
        mysqli_query($mysqli, $sql_update_evaluate);
    }
    header('Location: ../../index.php?action=product&query=product_edit&product_id=' . $product_id . '&message=success#product_evaluate');
} else {
    // Xóa sản phẩm
    foreach ($product_ids as $id) {
        $sql = "SELECT * FROM product WHERE product_id = '$id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['product_image']);
        }
        $sql_delete = "DELETE FROM product WHERE product_id = '$id'";
        mysqli_query($mysqli, $sql_delete);
    }
    header('Location: ../../index.php?action=product&query=product_list&message=success');
}
