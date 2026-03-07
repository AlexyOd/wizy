<?php
    $top = $content['title'];
    $topIsActive = $top['isActive'];

    $cont = $content['content'];
    $contIsActive = $cont['isActive'];

?>
<div class="container safety">
    <?php if ($topIsActive == true) {
            $title = $top['title'];
            $subtitle = $top['subtitle'];
            $text = $top['text'];
    ?>
        <div class="row safety__top">
            <?php if (!empty($title)) { ?>
                <div class="col-12">
                    <p class="safety__title"><?php echo $title; ?></p>
                </div>
            <?php } ?>
            <?php if (!empty($subtitle)) { ?>
                <div class="col-12 col-md-10 offset-md-1">
                    <p class="safety__subtitle"><?php echo $subtitle; ?></p>
                </div>
            <?php } ?>
            <?php if (!empty($text)) { ?>
                <div class="col-12">
                    <p class="safety__text"><?php echo $text; ?></p>
                </div>
            <?php } ?>
        </div>
    <?php } ?>

    <?php if($contIsActive) {
        $bloks = $content['content']['bloks'];
    ?>
    <div class="row">
        <?php for ($i = 0; $i < count($bloks); $i++) {
            $blok = $bloks[$i];
            $type = $blok['type'];
            $img = $blok['img'];
        ?>
            <?php if ($type == 'img' && !empty($img)) { ?>
                <div class="col-12 col-lg-6 safety__img">
                    <div class="safety__img">
                        <img src="<?php echo $img; ?>" alt="decoration">
                    </div>
                </div>
            <?php } else if($type == 'cont') {?>
                <div class="col-12 col-lg-6">
                    <?php
                        $list_title = $blok['list_title'];
                        $list = $blok['list'];
                    ?>

                    <?php
                        if ($list_title) { 
                    ?>
                        <p class="safety__list-title"><?php echo $list_title; ?></p>
                    <?php
                        }
                    ?>

                    <?php if(!empty($list)) : ?>
                        <ul class="safety__list">
                            <?php foreach ($list as $item) : 
                                $number = $item['number'];
                                $title = $item['title'];
                                $descr = $item['descr'];
                            ?>
                                <li class="safety__list-item">
                                    <p class="safety__list-item-text">
                                        <?php if ($number) {?><span class="safety__list-item-number"><?php echo $number; ?>.</span> <?php } ?>
                                        <span class="safety__list-item-title"><?php echo $title; ?></span>
                                    </p>
                                    <div class="safety__list-item-descr"><?php echo $descr; ?></div>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </div>
            <?php } ?>
        <?php } ?>
    </div>
    <?php } ?>
</div>