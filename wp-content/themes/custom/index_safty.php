<?php
/*
Template Name: Страница безопастность
*/

$ctnt = get_field('content');
get_header(); ?>

<main class="main">

  <?php
    for ( $i = 0; $i < count($ctnt); $i++ ) {
      //var_dump($ctnt[$i]);
      $topLinkTemplate = get_template_directory() . '/parts/safety.php';
      $content = $ctnt[$i];
      if (file_exists($topLinkTemplate)) {
        include $topLinkTemplate;
      }
    }
  ?>


</main>





<?php get_footer(); ?> 