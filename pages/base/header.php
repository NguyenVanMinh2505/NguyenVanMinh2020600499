<?php
if (isset($_GET['logout']) && $_GET['logout'] == 1) {
    unset($_SESSION['account_email']);
    unset($_SESSION['account_id']);
    header('Location:index.php');
}
?>
<style>
    .voice-btn.recognizing .action__icon-on {
        display: block;
    }
    .voice-btn.recognizing .action__icon-off {
        display: none;
    }
</style>
<header class="header new-style">
    <div class="header__topbar d-flex justify-content-around">
        <!-- Logo -->
        <div class="align-center d-grid header__container middle-left logo">
            <a href="index.php" class="header__logo">
                <img class="" src="./assets/images/logo/logo.png" alt="Logo" />
            </a>
        </div>
        <!-- Search-->
        <div class="header__action--item align-center d-flex p-relative form-search">
            <form action="index.php?page=search" method="POST" class="d-flex align-center open" id="search-box">
                <input type="text" placeholder="Tìm kiếm sản phẩm ..." id="input-search" name="keyword" class="search__input" required>
                <button type="submit" name="search" class="header__action--link search-btn p-absolute btn-border-search d-inline-block">
                    <img class="action__icon svg__icon d-block" src="./assets/images/icon/icon-search.svg" alt="search" />
                </button>
                <button type="button" class="header__action--link voice-btn p-absolute d-inline-block" id="search-btn" onclick="voiceInput();">
                    <img class="action__icon action__icon-off svg__icon d-block" src="./assets/images/icon/voice-icon.png" alt="search" />
                    <img class="action__icon action__icon-on svg__icon d-none" src="./assets/images/icon/mic-on.png" alt="search" />
                </button>
            </form>
        </div>
        <!-- Âction-->
        <div class="d-flex">
            <div class="m-auto d-flex align-center">
                <a href="#" class="tel" target="_self">
                    <span>Hotline: 0908 686 686</span>
                </a>
                <?php if (isset($_SESSION['account_email'])) {
                    ?>
                    <div class="info">
                        <i class="far fa-user fs-icon account-info" style="font-size: 20px;" onclick="showInfo()"></i>
                        <ul class="wrapper-infor-account" style="display:none;">
                            <li>
                                <a class="header__action--link d-inline-block" href="index.php?page=my_account&amp;tab=account_info">
                                    Tài khoản của tôi
                                </a>
                            </li>
                            <li>
                                <a class="h5 login-btn" href="index.php?logout=1" title="Đăng xuất">Đăng xuất</a>
                            </li>
                            <li>
                                <a class="header__action--link d-inline-block" href="index.php?page=my_account&amp;tab=order_history">
                                    Trợ giúp
                                </a>
                            </li>
                        </ul>
                    </div>
                    <?php
                } else {
                    ?>
                    <a class="h5 login-btn" href="index.php?page=login" title="Đăng nhập"><i class="far fa-user fs-icon"></i></a>
                    <?php
                }
                ?>
                <a class="header__action--link cart d-inline-block" href="index.php?page=cart">
                    <?php
                    if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
                        ?>
                        <div class="icon-cart d-flex align-center justify-center p-relative">
                            <!-- <img class="action__icon svg__icon d-block" src="./assets/images/icon/cart-open.svg" alt="cart"> -->
                           <i class="fas fa-shopping-cart"></i>
                            <span class="cart-count p-absolute d-flex align-center justify-center h6"><?php echo count($_SESSION['cart']) ?></span>
                        </div>
                        <?php
                    } else {
                        ?>
                        <!-- <img class="action__icon svg__icon d-block" src="./assets/images/icon/icon-cart.svg" alt="cart"> -->
                        <i class="fas fa-shopping-cart" style="margin:6px" ></i>
                        <?php
                    }
                    ?>
                </a>
            </div>
        </div>
    </div>
    <!-- <hr class="separator"> -->
    <div class="header__main">
        <div class="container">
            <div class="header__container d-grid middle-left">
                <!-- menu button -->
                <div class="header__btn md-none d-flex align-center">
                    <div class="navbar__icons">
                        <div class="navbar__icon"></div>
                    </div>
                </div>
                <nav class="header__nav space-between d-flex">
                    <ul class="nav__list md-flex">
                        <li class="nav__item md-none">
                            <a href="#" class="nav__anchor" style="content: ''"></a>
                        </li>
                        <li class="nav__item nav__items h5 md-none">
                            <span class="nav__anchor p-relative h4 d-flex align-center space-between w-100 cursor-pointer" href="#">
                                Cửa hàng
                                <img class="md-none svg__icon" src="./assets/images/icon/icon-nextlink.svg" alt="next" />
                                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px" />
                            </span>
                            <ul class="header__subnav p-absolute">
                                <li class="nav__item md-none h5">
                                    <span class="nav__anchor cursor-pointer d-flex align-center" style="content: ''">
                                        <img class="md-none svg__icon" src="./assets/images/icon/arrow-left.svg" alt="" style="margin-right: 8px" />
                                        Cửa hàng
                                    </span>
                                </li>
                                <li class="nav__item">
                                    <a class="nav__anchor h5 d-flex align-center space-between" href="index.php?page=products">
                                        Tất cả sản phẩm
                                    </a>
                                </li>
                                <?php
                                $sql_category_list = "SELECT * FROM category ORDER BY category_id DESC";
                                $query_category_list = mysqli_query($mysqli, $sql_category_list);
                                while ($row_category = mysqli_fetch_array($query_category_list)) {
                                ?>
                                    <li class="nav__item">
                                        <a class="nav__anchor h5 d-flex align-center space-between" href="index.php?page=products&category_id=<?php echo $row_category['category_id'] ?>">
                                            <?php echo $row_category['category_name'] ?>
                                        </a>
                                    </li>
                                <?php
                                }
                                ?>

                            </ul>
                        </li>
                        <li class="nav__item nav__items h5 md-none">
                            <span class="nav__anchor p-relative h4 d-flex align-center space-between w-100 cursor-pointer" href="#">
                                Thương hiệu
                                <img class="md-none svg__icon" src="./assets/images/icon/icon-nextlink.svg" alt="next" />
                                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px" />
                            </span>
                            <ul class="header__subnav p-absolute">
                                <li class="nav__item md-none h5">
                                    <span class="nav__anchor cursor-pointer d-flex align-center" style="content: ''">
                                        <img class="md-none svg__icon" src="./assets/images/icon/arrow-left.svg" alt="" style="margin-right: 8px" />
                                        Thương hiệu
                                    </span>
                                </li>
                                <?php
                                $sql_brand_list = "SELECT * FROM brand ORDER BY brand_id DESC";
                                $query_brand_list = mysqli_query($mysqli, $sql_brand_list);
                                while ($row_brand = mysqli_fetch_array($query_brand_list)) {
                                ?>
                                    <li class="nav__item">
                                        <a class="nav__anchor h5 d-flex align-center space-between" href="index.php?page=products&brand_id=<?php echo $row_brand['brand_id'] ?>">
                                            <?php echo $row_brand['brand_name'] ?>
                                        </a>
                                    </li>
                                <?php
                                }
                                ?>

                            </ul>
                        </li>
                        <li class="nav__item">
                            <a class="nav__anchor h5 d-flex align-center space-between" href="index.php">
                                Trang chủ
                            </a>
                        </li>
                        <li class="nav__item">
                            <a class="nav__anchor h5 d-flex align-center space-between" href="index.php?page=about">
                                Giới thiệu
                            </a>
                        </li>
                        <li class="nav__item">
                            <a class="nav__anchor h5 d-flex align-center space-between" href="index.php?page=blog">
                                Bài viết
                            </a>
                        </li>
                        <li class="nav__item">
                            <a class="nav__anchor h5 d-flex align-center space-between" href="index.php?page=contact">
                                Liên hệ
                            </a>
                        </li>
                    </ul>

                    <div class="header__footer md-none">
                        <div class="person-login d-flex align-center">
                            <img class="svg__icon" src="./assets/images/icon/icon-person.svg" alt="person" />
                            <span>Đăng nhập</span>
                        </div>
                        <ul class="social__items d-flex align-center">
                            <li class="social__item">
                                <a class="" href="#">
                                    <img class="svg__icon d-block" src="./assets/images/icon/twitter.svg" alt="" />
                                </a>
                            </li>
                            <li class="social__item">
                                <a class="" href="#">
                                    <img class="svg__icon d-block" src="./assets/images/icon/facebook.svg" alt="" />
                                </a>
                            </li>
                            <li class="social__item">
                                <a class="" href="#">
                                    <img class="svg__icon d-block" src="./assets/images/icon/instagram.svg" alt="" />
                                </a>
                            </li>
                            <li class="social__item">
                                <a class="" href="#">
                                    <img class="svg__icon d-block" src="./assets/images/icon/tiktok.svg" alt="" />
                                </a>
                            </li>
                            <li class="social__item">
                                <a class="" href="#">
                                    <img class="svg__icon d-block" src="./assets/images/icon/youtube.svg" alt="" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="header__action d-flex align-center">
                    <a href="#" class="promotion">
                        <span class="title-promotion"> Khuyến mãi cực lớn - Nhận ngàn ưu đãi</span>
                        <span class="dot livestream"><span class="ping"></span></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="header-nav-overlay"></div>
    </div>
</header>
<script>
    function voiceInput() {
        var inputSearch = document.getElementById('input-search');
        var searchBtn = document.querySelector('.voice-btn');
        const recognition = new webkitSpeechRecognition();
        recognition.lang = 'vi-VN';
        recognition.continuous = false;

        // Sự kiện khi nhận dạng giọng nói thành công
        recognition.onresult = function(event) {
            const transcript = event.results[0][0].transcript;
            inputSearch.value = transcript; // In ra kết quả nhận dạng giọng nói
        };

        recognition.onstart = function() {
            searchBtn.classList.add('recognizing'); // Thêm class để áp dụng hiệu ứng khi bắt đầu nhận dạng
        };

        recognition.onend = function() {
            searchBtn.classList.remove('recognizing'); // Xóa class khi kết thúc nhận dạng
        };

        // Sự kiện khi xảy ra lỗi trong quá trình nhận dạng
        recognition.onerror = function(event) {
            console.error(event.error);
        };

        // Bắt đầu ghi âm và nhận dạng giọng nói
        recognition.start();
    }
</script>