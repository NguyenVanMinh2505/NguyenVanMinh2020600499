<footer class="footer new-footer">
    <div class="footer__container">
        <div class="container">
            <div class="row">
                <div class="col" style="--w-md: 3">
                    <div class="footer__block pd-top">
                        <div class="block__heading d-flex">
                            Cửa hàng mỹ phẩm AuraMei
                            <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                        </div>
                        <div class="info-link block__list">
                            <p><i class="fa-solid fa-phone"></i> Điện thoại: <a href="#">(+84) 87654321</a></p>
                            <p><i class="fa-solid fa-envelope"></i> Email: <a href="#">mypham@gmail.com</a></p>
                            <p><i class="fa-solid fa-location-dot"></i> Địa chỉ: Hà Nội</p>
                            <p><i class="fa-solid fa-calendar-days"></i> GPKD: 0313331673, Ngày cấp:09-09-2024, Nơi cấp: Sở KH &amp; Hà Nội</p>
                            <div class="social-icons follow-icons">
                                <a href="#" target="_blank" rel="noopener noreferrer nofollow" data-label="Facebook" class="icon primary button circle facebook tooltip" title="Follow on Facebook" aria-label="Follow on Facebook"><i class="icon-facebook"></i></a>
                                <a href="#" target="_blank" rel="noopener noreferrer nofollow" data-label="Instagram" class="icon primary button circle instagram tooltip" title="Follow on Instagram" aria-label="Follow on Instagram"><i class="icon-instagram"></i></a>
                                <a href="#" target="_blank" rel="noopener noreferrer nofollow" data-label="TikTok" class="icon primary button circle tiktok tooltip tooltipstered" aria-label="Follow on TikTok"><i class="icon-tiktok"></i></a>
                                <a href="3" data-label="Twitter" target="_blank" rel="noopener noreferrer nofollow" class="icon primary button circle twitter tooltip tooltipstered" aria-label="Follow on Twitter"><i class="icon-twitter"></i></a>
                                <a href="#" data-label="Pinterest" target="_blank" rel="noopener noreferrer nofollow" class="icon primary button circle pinterest tooltip tooltipstered" aria-label="Follow on Pinterest"><i class="icon-pinterest"></i></a>
                                <a href="#" data-label="LinkedIn" target="_blank" rel="noopener noreferrer nofollow" class="icon primary button circle linkedin tooltip" title="Follow on LinkedIn" aria-label="Follow on LinkedIn"><i class="icon-linkedin"></i></a>
                                <a href="#" data-label="YouTube" target="_blank" rel="noopener noreferrer nofollow" class="icon primary button circle youtube tooltip" title="Follow on YouTube" aria-label="Follow on YouTube"><i class="icon-youtube"></i></a>
                            </div>

                            <div class="col pd-top d-flex align-center" style="--w-md:4;">
                                <ul class="social__items d-flex align-center">
                                    <li class="social__item">
                                        <a class="" href="#">
                                            <i class="fa-brands fa-square-twitter fs-icon"></i>
                                        </a>
                                    </li>
                                    <li class="social__item">
                                        <a class="" href="#">
                                            <i class="fa-brands fa-facebook fs-icon"></i>
                                        </a>
                                    </li>
                                    <li class="social__item">
                                        <a class="" href="#">
                                            <i class="fa-brands fa-instagram fs-icon"></i>
                                        </a>
                                    </li>
                                    <li class="social__item">
                                        <a class="" href="#">
                                            <i class="fa-brands fa-tiktok fs-icon"></i>
                                        </a>
                                    </li>
                                    <li class="social__item">
                                        <a class="" href="#">
                                            <i class="fa-brands fa-youtube fs-icon"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col" style="--w-md: 3">
                    <div class="footer__block pd-top">
                        <div class="block__heading d-flex">
                            Thương hiệu
                            <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                        </div>
                        <ul class="block__list">
                            <?php
                            $sql_brand_list = "SELECT * FROM brand ORDER BY brand_id DESC";
                            $query_brand_list = mysqli_query($mysqli, $sql_brand_list);
                            while ($row_brand = mysqli_fetch_array($query_brand_list)) {
                            ?>
                                <li class="block__item"><img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px"><a class="footer__anchor" href="index.php?page=product_brand&brand_id=<?php echo $row_brand['brand_id'] ?>"><?php echo $row_brand['brand_name'] ?></a></li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="col" style="--w-md: 3">
                    <div class="footer__block pd-top">
                        <div class="block__heading d-flex">
                            Thông tin trang web
                            <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                        </div>
                        <ul class="block__list">
                            <li class="block__item">
                                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                                <a class="nav__anchor h5 d-flex align-center space-between text-decoration-none" href="index.php">
                                    Trang chủ
                                </a>
                            </li>
                            <li class="block__item">
                                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                                <a class="nav__anchor h5 d-flex align-center space-between text-decoration-none" href="index.php?page=about">
                                    Giới thiệu
                                </a>
                            </li>
                            <li class="block__item">
                                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                                <a class="nav__anchor h5 d-flex align-center space-between text-decoration-none" href="index.php?page=blog">
                                    Blog
                                </a>
                            </li>
                            <li class="block__item">
                                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px">
                                <a class="nav__anchor h5 d-flex align-center space-between text-decoration-none" href="index.php?page=contact">
                                    Liên hệ
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col" style="--w-md: 3">
                    <div class="footer__block pd-top">
                        <div class="footer__logo">
                            <img src="./assets/images/logo/logo.png" alt="logo">
                        </div>
                    </div>

                    <div class="col" style="--w-md: 12;">
                        <div class="footer__subscribe">
                            <h3 class="block__heading text-center">
                                Nhập vào email của bạn để theo dõi chúng tôi
                            </h3>
                            <div class="email-signup__form justify-center d-flex">
                                <div class="w-100 form__container p-relative">
                                    <form action="">
                                        <input class="email-signup__input btn h4 w-100" type="email" placeholder="Hãy nhập email tại đây!" name="contact">
                                        <button type="submit" class="icon__input p-absolute">
                                            <img class="svg__icon" src="./assets/images/icon/icon-nextlink.svg" alt="next">
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script>
    $('.block__heading').click(function () {
        $(this).toggleClass('active');
        $(this).next('.block__list').slideToggle();
    })
</script>