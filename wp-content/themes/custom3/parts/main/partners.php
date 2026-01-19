<?php
    $items = get_field('partners');    
?>
<section class="py-20 bg-white">
    <div class="flex flex-wrap max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <?php
            foreach($items as $item) {
                $isImg = $item['isImg'];
                $src = $item['izobrazhenie'];
                $svg = $item['svg'];
        ?>
            <div class="flex-1-1-auto flex items-center justify-center">
                <?php if($isImg) { ?>
                    <img src="<?php echo $src['url']; ?>" alt="<?php echo $src['alt']; ?>" class="w-auto">
                <?php } else { ?>
                    <div class="w-auto flex items-center justify-center partners__logo">
                        <?php
                            echo $svg;
                        ?>
                    </div>
                <?php } ?>
            </div>
        <?php } ?>
    </div>
</section>