<?php
/*
Template Name: Главная страница
*/
get_header(); ?>

<main class="main">
  <?php
    $top = get_template_directory() . '/parts/main/top.php';
    if (file_exists($top)) {
      include $top;
    } else {
      echo 'Файл top.php не найден';
    }
  ?>

   <?php
    $hiw = get_template_directory() . '/parts/main/hiw.php';
    if (file_exists($hiw)) {
      include $hiw;
    } else {
      echo 'Файл hiw.php не найден';
    }
  ?>
</main>


<?php
    $popups = get_template_directory() . '/parts/main/popups.php';
    if (file_exists($popups)) {
      include $popups;
    } else {
      echo 'Файл popups.php не найден';
    }
  ?>
</div>


<?php get_footer(); ?>