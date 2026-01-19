<div id="trust" class="trust">
    <?php
        $title = get_field('trusttitle');
        $items = get_field('trustitems');
    ?>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p class="global__title">
                    <?php echo $title; ?>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="trust__items">
                    <?php
                        foreach ($items as $index => $item) {
                            $svg = $item['svg'];
                            $title = $item['title'];
                            $descr = $item['descr'];

                            $aos_animation = [
                                0 => 'fade-left',   // Первый элемент (индекс 0)
                                1 => 'fade-up',      // Второй элемент (индекс 1)
                                2 => 'fade-right'    // Третий элемент (индекс 2)
                            ];
                            
                            // Используем остаток от деления, чтобы цикл повторялся (0,1,2,0,1,2...)
                            $aos = $aos_animation[$index % 3];
                    ?>
                        <div class="trust__item" data-aos="<?php echo $aos ?>">
                            <div class="trust__item--icon">
                                <?php echo $svg; ?>
                            </div>
                            <p class="trust__item--title">
                                <?php echo $title; ?>
                            </p>
                            <p class="trust__item--descr">
                                <?php echo $descr; ?>
                            </p>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>