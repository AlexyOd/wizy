<div class="language-switcher">
    <div class="language-switcher__current">
        <button class="language-switcher__btn ">
            <?php
                $current_language = pll_current_language('slug');
                echo $current_language;
            ?>
        </button>
    </div>
    <ul class="language-switcher__list">
        <?php
            $languages = pll_the_languages(array('raw'=>1));
            // var_dump($languages);
            foreach ($languages as $language) {
                $currlang =  pll_current_language('slug');
                
                if ($currlang == $language['slug']) {
                    continue;
                }
        ?>

            <li class="language-switcher__item">
                <a href="<?php echo $language['url']; ?>" class="language-switcher__item-link">
                    <?php echo $language['slug']; ?>
                    <!-- <img class="language-switcher__item-img" src="<?php echo $language['flag']; ?>" alt="<?php echo $language['name']; ?>"> -->
                </a>
            </li>
        <?php
            }
        ?>
    </ul>
</div>