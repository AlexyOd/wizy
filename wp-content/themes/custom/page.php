<?php
/*
Template Name: Простая страница
*/

$def_title = get_field('def_title');
$default = get_field('default');


get_header(); ?>

<main class="main"> 
  <div class="container">
    <div class="row">
      <div class="col-12">
        <p class="global__scnd-title">
          <?php echo $def_title; ?>
        </p>
      </div>
    </div>
  </div>
  <div class="content">
    <?php
      foreach ($default as $key => $value) {
    ?>
      <?php
        $additional = get_template_directory() . '/parts/additional.php';
        $additionals =  [
          'top'     => $value['block_addTop'],
          'content' => $value['block_kontent'],
          'app'     => $value['block_app'],
          'img'     => $value['block_img'],
        ];
        if (file_exists($additional)) {
          include $additional;
        } else {
          echo 'Файл additional.php не найден';
        }
      ?>

    <?php 
      }
    ?>
  </div>


</main>





<?php get_footer(); ?> 