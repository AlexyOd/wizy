<?php
/*
Template Name: Простая страница
*/

$title  = get_field('title');
$video = get_field('video');

get_header(); ?>

<main class="main">
    <div class="header__skip"></div>
    <div class="bc">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <p class="bc__title">
              <?php
                echo $title;
              ?>
            </p>
            <?php if( function_exists('dimox_breadcrumbs') ) dimox_breadcrumbs(); ?>
          </div>
        </div>
        <a href="<?php echo esc_url(home_url('/')); ?>" class="btn__back">
          <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 19 19" fill="none">
            <path d="M13.1573 2.36714C13.0654 2.27499 12.9562 2.20187 12.836 2.15198C12.7157 2.1021 12.5869 2.07642 12.4567 2.07642C12.3265 2.07642 12.1976 2.1021 12.0774 2.15198C11.9572 2.20187 11.848 2.27499 11.7561 2.36714L5.17732 8.94589C5.10393 9.01913 5.0457 9.10613 5.00598 9.2019C4.96625 9.29767 4.9458 9.40033 4.9458 9.50402C4.9458 9.6077 4.96625 9.71037 5.00598 9.80614C5.0457 9.90191 5.10393 9.9889 5.17732 10.0621L11.7561 16.6409C12.144 17.0288 12.7694 17.0288 13.1573 16.6409C13.5452 16.253 13.5452 15.6276 13.1573 15.2396L7.42565 9.50006L13.1652 3.76048C13.5452 3.38048 13.5452 2.74714 13.1573 2.36714Z" fill="#383838" stroke="#383838" stroke-width="0.2"/>
          </svg>
        </a>
      </div>
    </div>

    
        
    <div class="container simple-page">
    <?php if(!empty($video)) : ?>
        <div class="row">
            <div class="col-12">
                <div class="iframe-container">
                    <?php
                        echo $video;
                    ?>
                </div>
            </div>
        </div>
    <?php endif; ?>
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