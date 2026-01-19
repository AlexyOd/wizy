<?php
    $isActive = get_field('isActive');
    $title = get_field('title');
    $subtitle = get_field('subtitle');
    $applink = get_field('applink');
    $applinkScnd = get_field('applinkScnd');
    $mobImage = get_field('mobImage');
    $image = get_field('image');
?>
<?php if($isActive) : ?>
    

<div class="top_block">
    <div class="container">
        <div class="row align-items-center align-items-md-center">
            <div class="col-12 d-sm-none">
                <p class="top_block--title">
                    <?php
                        echo $title
                    ?>
                </p>
            </div>
            <div class="col-7 col-sm-7 col-md-8 col-lg-7">
                <div class="top_block--place">
                    <p class="top_block--title d-none d-sm-block">
                        <?php
                            echo $title
                        ?>
                    </p>

                    <p class="top_block--subtitle">
                        <?php
                            echo $subtitle
                        ?>
                    </p>
                    <div class="top_block--app">
                        <?php
                            $topLinkTemplate = get_template_directory() . '/parts/main/top_link.php';

                            /* Первый линк */
                            $topLinkData = $applink;
                            if (file_exists($topLinkTemplate)) {
                                include $topLinkTemplate;
                            }

                            /* Второй линк */
                            $topLinkData = $applinkScnd;
                            if (file_exists($topLinkTemplate)) {
                                include $topLinkTemplate;
                            }
                        ?>
                    </div>
                </div>


            </div>
            <div class="col-5 col-sm-5 col-md-4 col-lg-5">
                <img class="top_block--img_mobile d-lg-none" src="<?php echo $mobImage['url']; ?>" alt="<?php echo $mobImage['alt']; ?>">
                <img class="top_block--img d-none d-lg-block" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
            </div>
        </div>
    </div>
</div>
<?php endif; ?>