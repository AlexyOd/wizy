<?php
/*
Template Name: Простая страница
*/
get_header(); ?>

<main class="main">
    <div class="header__skip"></div>
    <div class="bc">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <p class="bc__title">
              <?php
                echo get_the_title()
              ?>
            </p>
            <?php if( function_exists('dimox_breadcrumbs') ) dimox_breadcrumbs(); ?>
          </div>
        </div>
      </div>
    </div>

    <div class="container simple-page">
      <div class="row">
        <div class="col-12">
          <?php
            the_content()
          ?>
        </div> 
        <!-- col -->
      </div>
      <!-- row -->
    </div>
    <!-- container -->

</main>





<?php get_footer(); ?>
<?php
    $popups = get_template_directory() . '/parts/main/popups.php';
    if (file_exists($popups)) {
      include $popups;
    } else {
      echo 'Файл popups.php не найден';
    }
  ?>
</div>