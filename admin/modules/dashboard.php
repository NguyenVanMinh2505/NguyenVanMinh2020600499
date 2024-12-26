<div class="row">
    <div class="col">
        <div class="header__list d-flex space-between align-center">
            <h4 class="card-title" style="margin: 0;">Thống kê đơn hàng</h4>
            <div class="action_group">
                <a href="" id="btnExport" class="button button-dark">Export</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="main-pane-top d-flex space-between align-center" style="padding-inline: 10px;">
                    <div class="option-date d-flex space-between">
                        <select id="select-date" class="select-date-tk">
                            <option value="">Chọn thời gian</option>
                            <option value="7ngay">7 ngày qua</option>
                            <option value="28ngay">28 ngày qua</option>
                            <option value="90ngay">90 ngày qua</option>
                            <option value="365ngay">365 ngày qua</option>
                        </select>
                    </div>
                    <h4 class="card-title" style="margin: 0;">Thống kê đơn hàng theo <span id="text-date"></span></h4>
                </div>
                <div class="metrics d-flex space-between">
                    <div class="metric__item">Doanh thu: <span class="metric__sales"></span> </div>
                    <div class="metric__item">Số đơn hàng: <span class="metric__order"></span> </div>
                    <div class="metric__item">Số lượng bán: <span class="metric__quantity"></span> </div>
                </div>
                <div id="linechart" style="height: 350px; width: 100%" class="w-100"></div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="main-pane-top d-flex space-between align-center" style="padding-inline: 10px;">
                    <h4 class="card-title" style="margin: 0;">Thống kê một số sản phẩm bán chạy nhất trong tháng</h4>
                </div>
                <div id="barChart" style="height: 350px; width: 100%" class="w-100"></div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        thongke();
        thongkeProduct();
        var char = new Morris.Line({
            element: 'linechart',
            xkey: 'date',
            ykeys: ['date', 'order', 'sales', 'quantity'],
            labels: ['Ngày', 'Đơn hàng', 'Doanh thu', 'Số lượng']
        });

        $('#select-date').change(function() {
            var thoigian = $(this).val();
            var text = (thoigian == '7ngay') ? '7 ngày qua' :
                (thoigian == '28ngay') ? '28 ngày qua' :
                (thoigian == '90ngay') ? '90 ngày qua' : '365 ngày qua';
            $('#text-date').text(text);
            $.ajax({
                url: "modules/thongke.php",
                method: "POST",
                dataType: "JSON",
                data: {
                    thoigian: thoigian
                },
                success: function(data) {
                    char.setData(data);
                    $('#text-date').text(text);
                    var totalOrder = 0,
                        totalSales = 0,
                        totalQuantity = 0;
                    for (var i = 0; i < data.length; i++) {
                        totalOrder += parseInt(data[i].order);
                        totalSales += parseInt(data[i].sales);
                        totalQuantity += parseInt(data[i].quantity);
                    }
                    var formattedAmount = parseInt(totalSales).toLocaleString('vi-VN', {
                        style: 'currency',
                        currency: 'VND'
                    });
                    $('.metric__order').text(totalOrder);
                    $('.metric__quantity').text(totalQuantity);
                    $('.metric__sales').text(formattedAmount);
                }
            })
        });

        function thongke() {
            var text = '365 ngày qua';
            $.ajax({
                url: "modules/thongke.php",
                method: "POST",
                dataType: "JSON",
                success: function(data) {
                    char.setData(data);
                    $('#text-date').text(text);
                }
            })
        }

        var barChart = new Morris.Bar({
            element: 'barChart',
            xkey: 'name',
            ykeys: ['quantity'],
            labels: ['Số lượng']
        });

        barChart.setData($data);

        function thongkeProduct() {
            $.ajax({
                url: "modules/thongkeProduct.php",
                method: "POST",
                dataType: "JSON",
                success: function(data) {
                    barChart.setData(data);
                    $('#text-date').text(text);
                    var totalOrder = 0,
                        totalSales = 0,
                        totalQuantity = 0;
                    for (var i = 0; i < data.length; i++) {
                        totalOrder += parseInt(data[i].order);
                        totalSales += parseInt(data[i].sales);
                        totalQuantity += parseInt(data[i].quantity);
                    }
                    var formattedAmount = parseInt(totalSales).toLocaleString('vi-VN', {
                        style: 'currency',
                        currency: 'VND'
                    });
                    $('.metric__order').text(totalOrder);
                    $('.metric__quantity').text(totalQuantity);
                    $('.metric__sales').text(formattedAmount);
                }
            })
        }
    });

    var selectDate = document.querySelector(".select-date-tk");
    var btnExport = document.getElementById("btnExport");
    btnExport.addEventListener("click", function(event) {
        event.preventDefault();
        var thoigian = $('#select-date').val();
        if (thoigian) {
            window.location.href = "modules/export.php?thoigian=" + thoigian;
        } else {
            alert("Vui lòng chọn thời gian để xuất báo cáo!");
        }
    });
</script>