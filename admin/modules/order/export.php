<?php
// Hàm để định dạng loại đơn hàng
function format_order_type($order_type)
{
    switch ($order_type) {
        case 1:
            return 'Thanh toán khi nhận hàng (COD)';
        case 2:
            return 'Thanh toán MOMO QR CODE';
        case 3:
            return 'Thanh toán chuyển khoản MoMo';
        case 4:
            return 'Thanh toán chuyển khoản VNPAY';
        case 5:
            return 'Mua hàng trực tiếp';
        default:
            return 'Chưa xác định';
    }
}

// Hàm để định dạng trạng thái đơn hàng
function format_order_status($order_status)
{
    switch ($order_status) {
        case 0:
            return 'Đang xử lý';
        case 1:
            return 'Đang chuẩn bị hàng';
        case 2:
            return 'Đang giao hàng';
        case 3:
            return 'Đã giao hàng';
        case 4:
            return 'Đơn hàng hoàn trả';
        case 5:
            return 'Đã hoàn thành';
        case -1:
            return 'Đã hủy';
        default:
            return 'Chưa xác định';
    }
}

// Code xuất dữ liệu Excel
include('../../config/config.php');
require("../../../vendor/autoload.php");

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Tạo một đối tượng Spreadsheet mới
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Đặt tiêu đề cho các cột trong file Excel
$sheet->setCellValue('A1', 'Mã đơn hàng');
$sheet->setCellValue('B1', 'Thời gian');
$sheet->setCellValue('C1', 'Tên người đặt');
$sheet->setCellValue('D1', 'Loại đơn hàng');
$sheet->setCellValue('E1', 'Trạng thái đơn hàng');

// Lấy danh sách đơn hàng từ cơ sở dữ liệu
$sql_order_list = "SELECT * FROM orders JOIN account ON orders.account_id = account.account_id WHERE orders.order_status >= 0 AND orders.order_status < 3 ORDER BY orders.order_id DESC";
$query_order_list = mysqli_query($mysqli, $sql_order_list);

// Chèn dữ liệu vào các dòng của bảng Excel
$rowNumber = 2; // Bắt đầu từ dòng 2 vì dòng 1 là tiêu đề
while ($row = mysqli_fetch_array($query_order_list)) {
    $sheet->setCellValue('A' . $rowNumber, $row['order_code']);
    $sheet->setCellValue('B' . $rowNumber, $row['order_date']);
    $sheet->setCellValue('C' . $rowNumber, $row['account_name']);
    $sheet->setCellValue('D' . $rowNumber, format_order_type($row['order_type']));
    $sheet->setCellValue('E' . $rowNumber, format_order_status($row['order_status']));
    $rowNumber++;
}

// Lưu file Excel
$writer = new Xlsx($spreadsheet);
$fileName = 'order-data_' . date('d/m/Y') . '.xlsx';

// Đặt header cho việc tải xuống file
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $fileName . '"');
header('Cache-Control: max-age=0');

// Ghi dữ liệu vào file Excel và tải về
$writer->save('php://output');
exit;
