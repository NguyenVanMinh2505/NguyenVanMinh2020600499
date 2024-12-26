<?php
    $sql_category_list = "SELECT * FROM category ORDER BY category_id ASC LIMIT 3";
    $query_category_list = mysqli_query($mysqli, $sql_category_list);
?>
<section class="collage pd-top new-list-product">
    <?php
    $i = 0;
    while ($row = mysqli_fetch_array($query_category_list)) {
        $sql_product_list = "SELECT * FROM product JOIN category ON product.product_category = category.category_id 
        WHERE product.product_category = '" . $row['category_id'] . "' AND product_status = 1 LIMIT 5";
        $query_product_list = mysqli_query($mysqli, $sql_product_list);
        ?>
            <div class="wrapper-item-list">
                <div class="title">
                    <div class="main-title large-12">
                        <h2>
                            <a href="index.php?page=product_category&category_id=<?php echo $row['category_id'] ?>" target=""><?php echo $row['category_name']; ?></a>
                        </h2>
                        <div class="line-label"></div>
                        <div class="wrapper-view-all">
                            <a href="index.php?page=products&category_id=<?= $row['category_id'] ?>" class="view-all">Xem thêm</a>
                        </div>
                    </div>
                </div>
                <div class="list-product">
                    <div class="row">
                        <?php while ($product = mysqli_fetch_array($query_product_list)) {?>
                            <div class="col product" style="--w: 6; --w-md: 3">
                            <div class="product__card d-flex flex-column">
                                <div class="product__image p-relative">
                                    <a href="index.php?page=product_detail&amp;product_id=<?= $product['product_id']?>">
                                        <img class="w-100 h-100 object-fit-cover" src="admin/modules/product/uploads/<?= $product['product_image'] ?>" alt="product image">
                                    </a>
                                    <span class="product__sale h5 p-absolute"> - <?= $product['product_sale'] ?>%</span>
                                </div>
                                <div class="product__info">
                                    <a href="index.php?page=product_detail&amp;product_id=<?= $product['product_id']?>">
                                        <h3 class="product__name h5"><?= $product['product_name'] ?></h3>
                                    </a>

                                    <span class="review-star-list d-flex">
                                        <?php
                                        $query_evaluate_rating = mysqli_query($mysqli, "SELECT * FROM evaluate WHERE product_id='".$product['product_id']."' AND evaluate_status = 1");
                                        
                                        $rate1 = 0;
                                        $rate2 = 0;
                                        $rate3 = 0;
                                        $rate4 = 0;
                                        $rate5 = 0;
                                        
                                        while ($evaluate_rating = mysqli_fetch_array($query_evaluate_rating)) {
                                            $rate = $evaluate_rating['evaluate_rate'];
                                        
                                            if ($rate == 1) {
                                                $rate1++;
                                            } elseif ($rate == 2) {
                                                $rate2++;
                                            } elseif ($rate == 3) {
                                                $rate3++;
                                            } elseif ($rate == 4) {
                                                $rate4++;
                                            } elseif ($rate == 5) {
                                                $rate5++;
                                            }
                                        }
                                        
                                        $total_rate = $rate1 + $rate2 + $rate3 + $rate4 + $rate5;
                                        if ($total_rate != 0) {
                                            $rate_avg =  ($rate1 * 1 + $rate2 * 2 + $rate3 * 3 + $rate4 * 4 + $rate5 * 5) / $total_rate;
                                            $rate_avg = round($rate_avg, 1);
                                        } else {
                                            $rate_avg = 0;
                                        }
                                        
                                        for ($i = 0; $i < 5; $i++) {
                                            if ($i < $rate_avg) {
                                        ?>
                                                <div class="rating-star"></div>
                                            <?php
                                            } else {
                                            ?>
                                                <div class="rating-star rating-off"></div>
                                        <?php
                                            }
                                        }
                                        ?>

                                        <span>(<?php echo $total_rate ?>)</span>
                                    </span>
                                    <a href="index.php?page=product_detail&amp;product_id=22">
                                        <div class="product__price align-center">
                                            <del class="product__price--old h5">3,500,000 ₫</del>
                                            <span class="product__price--new h4">3,325,000 ₫</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <?php }  ?>
                    </div>
                </div>
            </div>
        <?php
        $i++;
    }
    ?>
</section>