<?php
require '../../carbon/autoload.php';
include('../config/config.php');

use Carbon\Carbon;

session_start();

if (isset($_POST['thoigian'])) {
    $thoigian = $_POST['thoigian'];
    $_SESSION['metric_date'] = $thoigian;
    if ($thoigian == '7ngay') {
        $start_date = Carbon::now('Asia/Ho_Chi_Minh')->subDays(7)->toDateString();
    } elseif ($thoigian == '28ngay') {
        $start_date = Carbon::now('Asia/Ho_Chi_Minh')->subDays(28)->toDateString();
    } elseif ($thoigian == '90ngay') {
        $start_date = Carbon::now('Asia/Ho_Chi_Minh')->subDays(90)->toDateString();
    } elseif ($thoigian == '365ngay') {
        $start_date = Carbon::now('Asia/Ho_Chi_Minh')->subDays(365)->toDateString();
    } else {
        $start_date = Carbon::now('Asia/Ho_Chi_Minh')->firstOfMonth()->toDateString();
    }
} else {
    $start_date = Carbon::now('Asia/Ho_Chi_Minh')->firstOfMonth()->toDateString();
}

$end_date = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

$sql = "SELECT 
            p.product_id, 
            p.product_name, 
            SUM(od.product_price * od.product_quantity * (1 - od.product_sale / 100)) AS total_revenue, 
            SUM(od.product_quantity) AS total_sold_quantity
        FROM 
            orders o
        JOIN 
            order_detail od ON o.order_code = od.order_code
        JOIN 
            product p ON od.product_id = p.product_id
        WHERE 
            o.order_date BETWEEN '$start_date' AND '$end_date'
        GROUP BY 
            p.product_id, p.product_name
        ORDER BY 
            total_sold_quantity DESC
        LIMIT 10";

$sql_query = mysqli_query($mysqli, $sql);

$chart_data = [];
if (mysqli_num_rows($sql_query) > 0) {
    while ($val = mysqli_fetch_array($sql_query)) {
        $chart_data[] = [
            'name' => $val['product_name'],
            'quantity' => $val['total_sold_quantity'],
            'sales' => $val['total_revenue'],
        ];
    }
} else {
    $chart_data[] = ['name' => 'Không có dữ liệu', 'quantity' => 0, 'sales' => 0];
}

echo json_encode($chart_data);
