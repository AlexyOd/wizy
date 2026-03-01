<?php
    $top = $content['title'];
    $topIsActive = $top['isActive'];

    $cont = $content['content'];
    $contIsActive = $cont['isActive'];

?>
<div class="container">
    <?php if ($topIsActive == true) {
            $title = $top['title'];
            $subtitle = $top['subtitle'];
            $text = $top['text'];
    ?>
        <div class="row">
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
            <div class="col-12 col-lg-6">
                <?php if ($type == 'img' && !empty($img)) { ?>
                    <div class="safety__img">
                        <img src="<?php echo $img; ?>" alt="decoration">
                    </div>
                <?php } else if($type == 'cont') {?>
                    <?php
                        $list_title = $blok['list_title'];
                        $list = $blok['list'];
                    ?>

                    <pre>
                        <?php
                            var_dump($list_title);
                            var_dump($list);
                        ?>
                    </pre>
                <?php } ?>
            </div>
        <?php } ?>
    </div>
    <?php } ?>
</div>