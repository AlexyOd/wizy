
<!-- Contacts Section -->
 <?php
    $title = get_field('ctTIlte');
    $subtitle = get_field('ctSubtitle');

    // get_theme_mod
    // $address
    //  "icon" => get_theme_mod('contact-icon');
    //  "label" => get_theme_mod('contact-label');
    //  "value" => get_theme_mod('contact-value');
    //  "href"=> get_theme_mod('contact-href');

    // //phone 
    //  "icon" =>  get_theme_mod('contact-1-icon');
    //  "label" =>  get_theme_mod('contact-1-label');
    //  "value" =>  get_theme_mod('contact-1-value');
    //  "href"=>  get_theme_mod('contact-1-href');

    // //email
    //  "icon" => get_theme_mod('contact-2-icon');
    //  "label" => get_theme_mod('contact-2-label');
    //  "value" => get_theme_mod('contact-2-value');
    //  "href"=> get_theme_mod('contact-2-href');

    // //время работы
    //  = get_theme_mod('contact-3-icon');
    //  = get_theme_mod('contact-3-label');
    //  = get_theme_mod('contact-3-value');
    //  = get_theme_mod('contact-3-value');

     $items = [[
            //address
            "icon" => get_theme_mod('contact-icon'),
            "label" => get_theme_mod('contact-label'),
            "value" => get_theme_mod('contact-value'),
            "href"=> get_theme_mod('contact-href'),
        ], [
            //address
            "icon" => get_theme_mod('contact-icon'),
            "label" => get_theme_mod('contact-label'),
            "value" => get_theme_mod('contact-add-1-value'),
            "href"=> get_theme_mod('contact-add-1-href'),
        ], [
            //address
            "icon" => get_theme_mod('contact-icon'),
            "label" => get_theme_mod('contact-label'),
            "value" => get_theme_mod('contact-add-2-value'),
            "href"=> get_theme_mod('contact-add-2-href'),
        ], [
            //phone 
            "icon" =>  get_theme_mod('contact-1-icon'),
            "label" =>  get_theme_mod('contact-1-label'),
            "value" =>  get_theme_mod('contact-1-value'),
            "href"=>  get_theme_mod('contact-1-href'),
        ], [
            //email
            "icon" => get_theme_mod('contact-2-icon'),
            "label" => get_theme_mod('contact-2-label'),
            "value" => get_theme_mod('contact-2-value'),
            "href"=> get_theme_mod('contact-2-href'),
        ],[
            //время работы
            "icon" => get_theme_mod('contact-3-icon'),
            "label" => get_theme_mod('contact-3-label'),
            "value" => get_theme_mod('contact-3-value'),
            "value2"=> get_theme_mod('contact-3-value-2'),
        ],];
 ?>
<section id="contacts" class="py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
            <h2 class="text-3xl lg:text-4xl font-bold mb-4 text-gray-900"><?php
                echo $title;
            ?></h2>
            <p class="text-xl text-gray-600">
                <?php
                    echo $subtitle;
                ?>
            </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <?php
                foreach($items as $item) {
                    $icon = $item['icon'];
                    $label = $item['label'];
                    $value = $item['value'];
                    $value2 = $item['value2'] ?? ''; // или null, или любое значение по умолчанию
                    $href = $item['href'] ?? '#';
                    ?>
                    <div class="text-center p-6 bg-white rounded-lg shadow-md hover:bg-orange-50">
                        <div class="inline-flex items-center justify-center w-12 h-12 bg-orange-100 rounded-full mb-4">
                            <svg class="w-6 h-6 text-orange-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <?php echo $icon; ?>
                            </svg>
                        </div>
                        <h3 class="text-lg font-semibold mb-2 text-gray-900">
                            <?php echo $label; ?>
                        </h3>
                        <p class="text-gray-600">
                            <?php if(isset($href)) : ?>
                                <a href="<?php echo $href; ?>" target="_blank">
                            <?php endif; ?>
                                <?php echo $value; ?>
                                <?php if(isset($value2)) : ?> <br> <?php endif; ?>
                                <?php echo $value2; ?>
                            <?php if(isset($href)) : ?>
                                </a>
                            <?php endif; ?>
                        </p>
                    </div>
                    <?php
                }
            ?>
        </div>
    </div>
</section>