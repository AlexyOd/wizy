<?php
    $hiw_isActive = get_field('hiw_isActive');
    $hiw_title = get_field('hiw_title');
    $hiw_subtitle = get_field('hiw_subtitle');
    $hiw_steps = get_field('hiw_steps');
    $hiw_decor = get_field('hiw_decor');
    $hiw_bottom = get_field('hiw_bottom');
?>
<?php if($isActive) : ?>
    

<div class="hiw">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <?php
                    $hiw_customTitle = get_template_directory() . '/parts/main/customTitle.php';
                    $customTitle = $hiw_title;
                    if (file_exists($hiw_customTitle)) {
                        include $hiw_customTitle;
                    }
                ?>
            </div>
            <div class="col-12">
                <p class="global__subtitle">
                    <?php echo $subtitle; ?>
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="hiw__grid">
                    <?php
                        foreach ($hiw_steps as $index => $item) {
                            $title = $item['title'];
                            $descr = $item['descr'];
                    ?>
                        
                        <div class="hiw__item hiw__grid-cell-<?php echo $index + 1; ?>">
                            <div class="hiw__item__number">
                                <?php echo $index + 1; ?>
                            </div>
                            <div class="hiw__item__content">
                                <h3 class="hiw__item__content--title">
                                    <?php echo $title; ?>
                                </h3>
                                <p class="hiw__item__content--descr">
                                    <?php echo $descr; ?>
                                </p>
                            </div>
                        </div>
                    <?php
                        }
                    ?>    
                     <div class="hiw__item hiw__grid-cell-5">
                        <img src="<?php echo $hiw_decor; ?>" alt="hiw_decor">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>