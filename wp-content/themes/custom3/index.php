<?php
/*
Template Name: Главная страница
*/
get_header(); ?>

<main class="main">
   <?php
    $Hero = get_template_directory() . '/parts/main/Hero.php';
    if (file_exists($Hero)) {
      include $Hero;
    } else {
      echo 'Файл Hero.php не найден';
    }
  ?>
  <?php
    $partners = get_template_directory() . '/parts/main/partners.php';
    if (file_exists($partners)) {
      include $partners;
    } else {
      echo 'Файл partners.php не найден';
    }
  ?>

   <?php
    $Advantages = get_template_directory() . '/parts/main/Advantages.php';
    if (file_exists($Advantages)) {
      include $Advantages;
    } else {
      echo 'Файл Advantages.php не найден';
    }
  ?>
   <?php
    $Conditions = get_template_directory() . '/parts/main/Conditions.php';
    if (file_exists($Conditions)) {
      include $Conditions;
    } else {
      echo 'Файл Conditions.php не найден';
    }
  ?>
  <?php
    $Application = get_template_directory() . '/parts/main/Application.php';
    if (file_exists($Application)) {
      include $Application;
    } else {
      echo 'Файл Application.php не найден';
    }
  ?>
  <?php
    $faq = get_template_directory() . '/parts/main/faq.php';
    if (file_exists($faq)) {
      include $faq;
    } else {
      echo 'Файл faq.php не найден';
    }
  ?>
  
  <?php
    $contacts = get_template_directory() . '/parts/main/contacts.php';
    if (file_exists($contacts)) {
      include $contacts;
    } else {
      echo 'Файл contacts.php не найден';
    }
  ?>
  
</main>
<?php get_footer(); ?>
</div>