<?php
    $wywi_title = get_field('wywi_title');
    $wywi_subtitle = get_field('wywi_subtitle');
    $wywi_items = get_field('wywi_items');
?>
<div class="wywi">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <?php
                    $wywi_customTitle = get_template_directory() . '/parts/main/customTitle.php';
                    $customTitle = $wywi_title['customTitle'];
                    if (file_exists($wywi_customTitle)) {
                        include $hiw_customTitle;
                    }
                ?>
            </div>
            <div class="col-12">
                <p class="global__subtitle">
                    <?php echo $wywi_subtitle; ?>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="wywi__items">
                    <?php
                        foreach ($wywi_items as $index => $item) {
                            $svg_icon = $item['svg_icon'];
                            $title = $item['title'];
                            $descr = $item['descr'];
                    ?>
                        <div class="wywi__item wywi__grid-cell-<?php echo $index + 1; ?>">
                            <div class="wywi__item__content">
                                <div class="wywi__item--icon">
                                    <?php echo $svg_icon; ?>
                                </div>
                                <h3 class="wywi__item--title">
                                    <?php echo $title; ?>
                                </h3>
                                <p class="wywi__item--descr">
                                    <?php echo $descr; ?>
                                </p>
                            </div>
                        </div>
                    <?php
                        }
                    ?>    
                </div>
            </div>
        </div>
    </div>
</div>