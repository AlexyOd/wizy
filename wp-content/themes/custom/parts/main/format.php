<?php
    $format_isActive = get_field('format_isActive');
    $format_title = get_field('format_title');
    $format_subtitle = get_field('format_subtitle');
    $format_items = get_field('format_items');
?>
<?php if($format_isActive) : ?>
<div class="format">
    <div class="container format__container">
        <div class="row">
            <div class="col-12">
                <p class="global__title">
                    <?php echo $format_title; ?>
                </p>
            </div>
            <div class="col-12">
                <p class="global__subtitle">
                    <?php echo $format_subtitle; ?>
                </p>
            </div>
        </div>
        <?php
            foreach ($format_items as $index => $item) {
                $title = $item['title'];
                $descr = $item['descr'];
                $btn = $item['btn'];
                $img = $item['img'];

                $colClass1 = 'col-12 col-md-6 col-lg-5 col-xxl-5 align-self-center';
                $colClass2 = 'col-12 col-md-6 offset-lg-1 col-xxl-5 offset-xxl-2';

                if($is_even = $index % 2 === 1) {
                    $colClass2 = 'col-12 col-md-6 col-lg-5 col-xxl-5 ';
                    $colClass1= 'col-12 col-md-6 offset-lg-1 col-xxl-5 offset-xxl-2 align-self-center';
                }
        ?>
            <div class="format__item">
                <div class="row">
                    <div class="<?php echo $colClass1; ?>">
                        <div class="format__item--text">
                            <p class="format__item--title">
                                <?php echo $title; ?>
                            </p>
                            <p class="format__item--descr global__subtitle">
                                <?php echo $descr; ?>
                            </p>
                            <a class="format__item--btn btn btn__green" href="<?php echo $btn['url']; ?>" target="_blank">
                                <?php echo $btn['title']; ?>
                            </a>
                        </div>
                    </div>
                    <div class="<?php echo $colClass2; ?>">
                        <img class="format__item--img" src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>">
                    </div>
                </div>
            </div>
        <?php
            }
        ?>
    </div>
</div>
<?php endif; ?>