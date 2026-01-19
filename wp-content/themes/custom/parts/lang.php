<div class="language-switcher">
    <div class="language-switcher__current">
        
            <?php
                $current_language = pll_current_language('flag');
                echo $current_language;
            ?>
        
    </div>
    <ul class="language-switcher__list">
        <?php
            $languages = pll_the_languages(array('raw'=>1));
            $isCurrent = false;
            foreach ($languages as $language) {
                $currlang =  pll_current_language('slug');

                if ($currlang == $language['slug']) {
                    $isCurrent = true;
                } else {
                    $isCurrent = false;
                }
        ?>

            <li class="language-switcher__item">
                <a href="<?php echo $language['url']; ?>" class="language-switcher__item-link <?php echo $isCurrent ? 'active' : '' ?>">
                    <?php echo mb_substr($language['name'], 0, 3); ?>
                </a>
            </li>
            <li class="language-switcher__spred"> | </li>
        <?php
            }
        ?>
    </ul>
</div>