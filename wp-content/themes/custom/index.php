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
  <?php
    $format = get_template_directory() . '/parts/main/format.php';
    if (file_exists($format)) {
      include $format;
    } else {
      echo 'Файл format.php не найден';
    }
  ?>

  <?php
    $wywi = get_template_directory() . '/parts/main/wywi.php';
    if (file_exists($wywi)) {
      include $wywi;
    } else {
      echo 'Файл wywi.php не найден';
    }
  ?>
  <?php
    $intch = get_template_directory() . '/parts/main/intch.php';
    if (file_exists($intch)) {
      include $intch;
    } else {
      echo 'Файл intch.php не найден';
    }
  ?>

  <?php
    $safe = get_template_directory() . '/parts/main/safe.php';
    if (file_exists($safe)) {
      include $safe;
    } else {
      echo 'Файл safe.php не найден';
    }
  ?>
</main>
</div>


<?php get_footer(); ?>