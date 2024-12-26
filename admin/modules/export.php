<?php
include('../config/config.php');
require '../../carbon/autoload.php';
require("../../vendor/autoload.php");

use Carbon\Carbon;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

session_start();

$thoigian = isset($_GET['thoigian']) ? $_GET['thoigian'] : '365ngay';

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

$sheet->setCellValue('A1', 'Ngày');
$sheet->setCellValue('B1', 'Số đơn');
$sheet->setCellValue('C1', 'Số lượng');
$sheet->setCellValue('D1', 'Doanh thu');

if ($thoigian == '7ngay') {
    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(7)->toDateString();
} elseif ($thoigian == '28ngay') {
    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(28)->toDateString();
} elseif ($thoigian == '90ngay') {
    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(90)->toDateString();
} elseif ($thoigian == '365ngay') {
    $subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();
}

$now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

$sql = "SELECT * FROM metrics WHERE metric_date BETWEEN '$subdays' AND '$now' ORDER BY metric_date ASC";
$sql_query = mysqli_query($mysqli, $sql);

$rowIndex = 2;

if (mysqli_num_rows($sql_query) > 0) {
    while ($row = mysqli_fetch_array($sql_query)) {
        $sheet->setCellValue('A' . $rowIndex, $row['metric_date']);
        $sheet->setCellValue('B' . $rowIndex, $row['metric_order']);
        $sheet->setCellValue('C' . $rowIndex, $row['metric_quantity']);
        $sheet->setCellValue('D' . $rowIndex, $row['metric_sales']);
        $rowIndex++;
    }
} else {
    $sheet->setCellValue('A' . $rowIndex, 'No records found...');
}

$writer = new Xlsx($spreadsheet);
$fileName = 'thongke_' . date('d-m-Y') . '.xlsx';
$writer->save($fileName);

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $fileName . '"');
header('Cache-Control: max-age=0');

$writer->save('php://output');
