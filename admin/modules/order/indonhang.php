<?php
require('../../config/config.php');
require('../../../tfpdf/tfpdf.php');

// Hàm loại bỏ dấu
function bo_dau($str) {
    $unwanted_array = array(
        'à' => 'a', 'á' => 'a', 'ả' => 'a', 'ã' => 'a', 'ạ' => 'a', 'ă' => 'a', 'ắ' => 'a', 'ằ' => 'a', 'ẳ' => 'a', 'ẵ' => 'a', 'ặ' => 'a', 'â' => 'a', 'ấ' => 'a', 'ầ' => 'a', 'ẩ' => 'a', 'ẫ' => 'a', 'ậ' => 'a',
        'è' => 'e', 'é' => 'e', 'ẻ' => 'e', 'ẽ' => 'e', 'ẹ' => 'e', 'ê' => 'e', 'ế' => 'e', 'ề' => 'e', 'ể' => 'e', 'ễ' => 'e', 'ệ' => 'e',
        'ì' => 'i', 'í' => 'i', 'ỉ' => 'i', 'ĩ' => 'i', 'ị' => 'i',
        'ò' => 'o', 'ó' => 'o', 'ỏ' => 'o', 'õ' => 'o', 'ọ' => 'o', 'ô' => 'o', 'ố' => 'o', 'ồ' => 'o', 'ổ' => 'o', 'ỗ' => 'o', 'ộ' => 'o', 'ơ' => 'o', 'ớ' => 'o', 'ờ' => 'o', 'ở' => 'o', 'ỡ' => 'o', 'ợ' => 'o',
        'ù' => 'u', 'ú' => 'u', 'ủ' => 'u', 'ũ' => 'u', 'ụ' => 'u', 'ư' => 'u', 'ứ' => 'u', 'ừ' => 'u', 'ử' => 'u', 'ữ' => 'u', 'ự' => 'u',
        'ỳ' => 'y', 'ý' => 'y', 'ỷ' => 'y', 'ỹ' => 'y', 'ỵ' => 'y',
        'đ' => 'd',
    );

    return strtr($str, $unwanted_array);
}

$pdf = new tFPDF();
$pdf->AddPage("0");

// $pdf->AddFont('DejaVu', '', 'DejaVuSansCondensed.ttf', true);
// $pdf->SetFont('DejaVu', '', 15);

$pdf->SetFont('Helvetica', '', 15);

$pdf->SetFillColor(193, 229, 252);

$order_code = $_GET['order_code'];
$sql_order_detail_list = "SELECT od.order_detail_id, p.product_id, p.product_name, od.order_code, od.product_quantity, od.product_price, od.product_sale, p.product_image FROM order_detail od JOIN product p ON od.product_id = p.product_id WHERE od.order_code = '" . $order_code . "' ORDER BY od.order_detail_id DESC";
$query_order_detail_list = mysqli_query($mysqli, $sql_order_detail_list);

$sql_order = "SELECT * FROM orders JOIN delivery ON orders.delivery_id = delivery.delivery_id WHERE orders.order_code = '" . $order_code . "' LIMIT 1";
$query_order = mysqli_query($mysqli, $sql_order);
$row_info = mysqli_fetch_array($query_order);

$pdf->Ln(10);
$pdf->Cell(0, 0, 'HOA DON TAI CUA HANG', 0, 0, 'C');
$pdf->Ln(20);

$pdf->Write(10, "Ma don hang: " . bo_dau($row_info['order_code']) . "");
$pdf->Ln(10);

$pdf->Write(10, "Thoi gian: " . bo_dau($row_info['order_date']));
$pdf->Ln(20);

$pdf->Write(10, "Ho va ten: " . bo_dau($row_info['delivery_name']));
$pdf->Ln(10);

$pdf->Write(10, "So dien thoai: " . bo_dau($row_info['delivery_phone']));
$pdf->Ln(10);

$pdf->Write(10, "Dia chi: " . bo_dau($row_info['delivery_address']));
$pdf->Ln(20);

$width_cell = array(10, 20, 150, 25, 30, 40);

$pdf->Cell($width_cell[0], 10, 'STT', 1, 0, 'C', true);
$pdf->Cell($width_cell[1], 10, 'Ma san pham', 1, 0, 'C', true);
$pdf->Cell($width_cell[2], 10, 'Ten san pham', 1, 0, 'C', true);
$pdf->Cell($width_cell[3], 10, 'So luong', 1, 0, 'C', true);
$pdf->Cell($width_cell[4], 10, 'Don gia', 1, 0, 'C', true);
$pdf->Cell($width_cell[5], 10, 'Thanh tien', 1, 1, 'C', true);
$pdf->SetFillColor(235, 236, 236);
$fill = false;
$i = 0;
$total = $row_info['total_amount'];
while ($row = mysqli_fetch_array($query_order_detail_list)) {
    $i++;
    $pdf->Cell($width_cell[0], 10, $i, 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[1], 10, bo_dau($row['product_id']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[2], 10, bo_dau($row['product_name']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[3], 10, bo_dau($row['product_quantity']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[4], 10, number_format($row['product_price'] - ($row['product_price'] / 100 * $row['product_sale'])) , 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[5], 10, number_format(($row['product_price'] - ($row['product_price'] / 100 * $row['product_sale'])) * $row['product_quantity']), 1, 1, 'C', $fill);
    $fill = !$fill;
}
$pdf->Write(10, 'Tong tien don hang: ' . number_format($total) . 'đ');
$pdf->Ln(20);

$pdf->Write(10, 'My pham AuraMei cam on ban da tin dung.');
$pdf->Ln(10);

$pdf->Output();
?>
