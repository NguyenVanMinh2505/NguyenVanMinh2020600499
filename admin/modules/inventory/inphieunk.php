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

$inventory_code = $_GET['inventory_code'];
$sql_inventory_info = "SELECT * FROM inventory WHERE inventory_code = $inventory_code LIMIT 1";
$query_inventory_info = mysqli_query($mysqli, $sql_inventory_info);
$row_info = mysqli_fetch_array($query_inventory_info);

$sql_inventory_detail = "SELECT * FROM product pd join inventory_detail iv ON pd.product_id = iv.product_id WHERE iv.inventory_code = $inventory_code";
$query_inventory_detail = mysqli_query($mysqli, $sql_inventory_detail);

$pdf->Ln(10);
$pdf->Cell(0, 0, 'PHIEU NHAP HANG', 0, 0, 'C');
$pdf->Ln(20);

$pdf->Write(10, "Ma phieu nhap: " . bo_dau($row_info['inventory_code']) . "");
$pdf->Ln(10);

$pdf->Write(10, "Thoi gian nhap: " . bo_dau($row_info['inventory_date']) . "");
$pdf->Ln(10);

$pdf->Write(10, "Nhan vien nhap: " . bo_dau($row_info['staf_name']) . "");
$pdf->Ln(10);

$pdf->Write(10, "Ten nha cung cap: " . bo_dau($row_info['supplier_name']) . "");
$pdf->Ln(10);

$pdf->Write(10, "SDT nha cung cap: " . bo_dau($row_info['supplier_phone']) . "");
$pdf->Ln(20);

$width_cell = array(10, 20, 150, 25, 30, 40);

$pdf->Cell($width_cell[0], 10, 'STT', 1, 0, 'C', true);
$pdf->Cell($width_cell[1], 10, 'Ma san pham', 1, 0, 'C', true);
$pdf->Cell($width_cell[2], 10, 'Ten san pham', 1, 0, 'C', true);
$pdf->Cell($width_cell[3], 10, 'So luong', 1, 0, 'C', true);
$pdf->Cell($width_cell[4], 10, 'Gia', 1, 0, 'C', true);
$pdf->Cell($width_cell[5], 10, 'Tong tien', 1, 1, 'C', true);
$pdf->SetFillColor(235, 236, 236);
$fill = false;
$i = 0;
$total = 0;
while ($row = mysqli_fetch_array($query_inventory_detail)) {
    $i++;
    $total += $row['product_price_import'] * $row['product_quantity'];
    $pdf->Cell($width_cell[0], 10, $i, 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[1], 10, bo_dau($row['product_id']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[2], 10, bo_dau($row['product_name']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[3], 10, bo_dau($row['product_quantity']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[4], 10, number_format($row['product_price_import']), 1, 0, 'C', $fill);
    $pdf->Cell($width_cell[5], 10, number_format($row['product_price_import'] * $row['product_quantity']), 1, 1, 'C', $fill);
    $fill = !$fill;
}
$pdf->Ln(10);

$pdf->Write(10, 'Tong tien hang phai thanh toan: ' . number_format($total));
$pdf->Ln(20);
$pdf->Output();
?>
