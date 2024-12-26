<div class="banner banner-new-style">
    <div class="wrapper-banner d-flex">
        <div class="cat">
            <li class="nav__item nav__items h7">
            <span class="nav__anchor p-relative h4 d-flex align-center space-between w-100 cursor-pointer"href="#">
                Cửa hàng
                <img class="md-none svg__icon" src="./assets/images/icon/icon-nextlink.svg" alt="next"/>
                <img class="d-none md-block svg__icon" src="./assets/images/icon/icon-chevron-down.svg" alt="back" style="margin-left: 8px"/>
            </span>
                <ul class="header__subnav p-absolute">
                    <li class="nav__item md-none h5">
                    <span class="nav__anchor cursor-pointer d-flex align-center" style="content: ''">
                        <img class="md-none svg__icon" src="./assets/images/icon/arrow-left.svg" alt="" style="margin-right: 8px"/>
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
                            <a class="nav__anchor h5 d-flex align-center space-between"
                               href="index.php?page=products&category_id=<?php echo $row_category['category_id'] ?>">
                                <?php echo $row_category['category_name'] ?>
                            </a>
                        </li>
                        <?php
                    }
                    ?>

                </ul>
            </li>
            <li class="nav__item nav__items h7">
                                    <span class="nav__anchor p-relative h4 d-flex align-center space-between w-100 cursor-pointer"
                                          href="#">
                                        Thương hiệu
                                        <img class="md-none svg__icon" src="./assets/images/icon/icon-nextlink.svg"
                                             alt="next"/>
                                        <img class="d-none md-block svg__icon"
                                             src="./assets/images/icon/icon-chevron-down.svg" alt="back"
                                             style="margin-left: 8px"/>
                                    </span>
                <ul class="header__subnav p-absolute">
                    <li class="nav__item md-none h5">
                                            <span class="nav__anchor cursor-pointer d-flex align-center"
                                                  style="content: ''">
                                                <img class="md-none svg__icon" src="./assets/images/icon/arrow-left.svg"
                                                     alt="" style="margin-right: 8px"/>
                                                Thương hiệu
                                            </span>
                    </li>
                    <?php
                    $sql_brand_list = "SELECT * FROM brand ORDER BY brand_id DESC";
                    $query_brand_list = mysqli_query($mysqli, $sql_brand_list);
                    while ($row_brand = mysqli_fetch_array($query_brand_list)) {
                        ?>
                        <li class="nav__item">
                            <a class="nav__anchor h5 d-flex align-center space-between"
                               href="index.php?page=products&brand_id=<?php echo $row_brand['brand_id'] ?>">
                                <?php echo $row_brand['brand_name'] ?>
                            </a>
                        </li>
                        <?php
                    }
                    ?>

                </ul>
            </li>
        </div>

        <div class="img-main">
            <div class="h-100 w-100 image__item p-absolute img-below">
                <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner2.png"
                     alt="banner2"/>
            </div>
        </div>

        <div class="img-list d-flex">
            <div class="image__banner image__item">
                <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner3.png"
                     alt="banner2"/>
            </div>
            <div class="image__banner image__item">
                <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner4.png"
                     alt="banner2"/>
            </div>
            <div class="image__banner image__item">
                <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner5.png"
                     alt="banner2"/>
            </div>
        </div>
    </div>
</div>