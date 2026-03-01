<?php

    $top = $additionals['top'];
    $content = $additionals['content'];
    $app = $additionals['app'];
    $img = $additionals['img'];
?>

<div class="additional">
    <div class="container">
        <div class="row align-items-center" >
            <div class="col-12 col-md-6 d-flex flex-column additional__left">
                <?php
                    $to_isActive = $top['isActive'];
                    if ($to_isActive == true) {
                ?>
                    <div class="additional__top">
                        <p class="global__title">
                            <?php echo $top['Title']; ?>
                        </p>

                        <p class="global__subtitle">
                            <?php echo $top['subTitle']; ?>
                        </p>
                    </div>
                <?php
                    }
                ?>

                <?php
                    $co_isActive = $content['isActive'];
                    if ($co_isActive == true) {
                        $title = $content['title'];
                        $kontent = $content['kontent'];
                ?>
                    <div class="additional__content">
                        <p class="global__title">
                            <?php echo $title; ?>
                        </p>

                        <div class="additional__content-html">
                            <?php echo $kontent; ?>
                        </div>
                        
                    </div>
                <?php
                    }
                ?>

                <?php
                    $app = $additionals['app'];
                    $app_isActive = $app['isActive'];
                    
                ?>
                <?php if(!empty($app) && $app_isActive) : ?>
                    <?php
                        $app_applink = $app['app']['app_applink'];
                        $app_applinkScnd = $app['app']['app_applinkScnd'];
                        $app_app_title = $app['app']['app_app_title'];
                    ?>
                    <p class="additional__app-title global__mtitle">
                        <?php echo $app_app_title; ?>
                    </p>

                    <div class="additional__app">
                        <?php
                            $topLinkTemplate = get_template_directory() . '/parts/main/top_link.php';

                            /* Первый линк */
                            $topLinkData = $app_applink;
                            if (file_exists($topLinkTemplate)) {
                                include $topLinkTemplate;
                            }

                            /* Второй линк */
                            $topLinkData = $app_applinkScnd;
                            if (file_exists($topLinkTemplate)) {
                                include $topLinkTemplate;
                            }
                        ?>
                    </div>
                <?php endif; ?>
                
            </div>
            <div class="col-12 col-md-6  additional__right">
                <img src="<?php echo $img; ?>" alt="add_decor">
            </div>
        </div>
    </div>
</div>