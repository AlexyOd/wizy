<?php
/*
Template Name: Страница безопастность
*/

$ctnt = get_field('content');
get_header(); ?>

<main class="main">
  <?php if (!empty($ctnt) && is_array($ctnt)) : ?>
    <?php foreach ($ctnt as $content) : ?>
        <?php
            $topLinkTemplate = get_template_directory() . '/parts/safety.php';
            if (file_exists($topLinkTemplate)) {
                include $topLinkTemplate;
            }
        ?>
    <?php endforeach; ?>
<?php endif; ?>


</main>





<?php get_footer(); ?> 