<?php
    $title = get_field('aTitle');
    $descr = get_field('aDescr');
    $items = get_field('aItems');
?>
<!-- Advantages Section -->
  <section id="advantages" class="py-20 bg-white ">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
            <h2 class="text-3xl lg:text-4xl font-bold mb-4 text-gray-900">
                <?php echo $title; ?>
            </h2>
            <p class="text-xl text-gray-600">
                <?php echo $descr; ?>
            </p>
        </div>
        <div class="gap-8 flex justify-center flex-wrap">
            <?php
                foreach($items as $item) {
                    $icon = $item['svg'];
                    $title = $item['tilte'];
                    $descr = $item['descr'];
            ?>
                <div class="text-center p-6 rounded-lg bg-gray-50 hover:bg-orange-50 transition-colors adw_item sm:adw_item md:adw_item">
                    
                    <div class="inline-flex items-center justify-center w-16 h-16 bg-orange-100 rounded-full mb-6">
                        <?php echo $icon; ?>
                    </div>
                    <h3 class="text-xl font-semibold mb-4 text-gray-900">
                        <?php echo $title; ?>
                    </h3>
                    <p class="text-gray-600">
                        <?php echo $descr; ?>
                    </p>
                </div>
            <?php
                }
            ?>
        </div>
    </div>
</section>