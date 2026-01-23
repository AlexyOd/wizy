<?php
    $safe_isActive = get_field('safe_isActive');
    $safe_listTitle = get_field('safe_listTitle');
    $safe_items = get_field('safe_items');
    $safe_link = get_field('safe_link'); //safe_link
    $safe_title = get_field('safe_title');
    $safe_descr = get_field('safe_descr');
    $safe_icon = get_field('safe_icon');
    
?>

<?php if($safe_isActive) : ?>
    <div class="safe">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-6 offset-sm-2 offset-md-3 offset-lg-0 order-2 order-lg-1 ">
                    <p class="safe__list--title">
                        <?php echo $safe_listTitle; ?>
                    </p>
                    <div class="safe__list">
                        <ul>
                        <?php
                            foreach ($safe_items as $index => $item) {
                                $descr = $item['safe_descr'];
                                $index = $index + 1;
                        ?>
                            <li>
                                <p class="safe__list--item">
                                    <strong>
                                        <?php
                                            echo $index;
                                        ?>.
                                    </strong>
                                    <span>
                                        <?php
                                            echo $descr;
                                        ?>
                                    </span>
                                </p>
                            </li>
                        <?php
                            }
                        ?>    
                        </ul>
                        <a href="<?php echo $safe_link['url']; ?>" class="btn safe__btn" target="_blank">
                            <?php echo $safe_link['title']; ?>
                        </a>
                    </div>
                </div>
                <div class="col-12 col-lg-6 offset-lg-1 offset-xl-0 order-1 order-lg-2 align-self-center">
                    <p class="safe__title"><?php echo $safe_title; ?></p>
                    <p class="safe__descr">
                        <?php echo $safe_descr; ?>
                    </p>
                    <div class="safe__icon">
                        <?php echo $safe_icon; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>