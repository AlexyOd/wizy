<?php
    $intch_isActive = get_field('intch_isActive');
    $intch_title = get_field('intch_title');
    $intch_descr = get_field('intch_descr');
    $intch_items = get_field('intch_items');
    $intch_decor = get_field('intch_decor');
?>
<?php if($intch_isActive) : ?>
<div class="intch">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-6 align-self-center">
                <div class="intch__text">
                    <p class="intch__title">
                        <?php echo $intch_title; ?>
                    </p>
                    <p class="intch__descr"><?php echo $intch_descr; ?></p>

                    
                    <div class="intch__items">
                        <?php foreach ($intch_items as $index => $item) : ?>
                            <?php
                                $icon = $item['icon'];
                            ?>
                            <a href="<?php echo $item['link']['url']; ?>" class="intch__lnk" target="_blank">
                                <?php
                                    echo $icon;
                                ?>
                            </a>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <img class="intch__decor" src="<?php echo $intch_decor; ?>" alt="intch decor">
            </div>
        </div>
    </div>
</div>
<?php endif; ?>