<?php
/*
Template Name: Про нас
*/
get_header(); ?>

<?php
  $aboutus_title = get_field('aboutus_title');
  $aboutus_subtitle = get_field('aboutus_subtitle');
  $aboutus_block = get_field('aboutus_block');
  $aboutus_block2 = get_field('aboutus_block2');
?>

<main class="main about">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <p class="global__scnd-title">
          <?php echo $aboutus_title; ?>
        </p>
        <p class="global__scnd-subtitle">
          <?php echo $aboutus_subtitle; ?>
        </p>
      </div>
    </div>

    <div class="about-block">
      <?php
        $b2title = $aboutus_block['aboutus_b2_title'];
        $items = $aboutus_block['items'];
        $decor= $aboutus_block['decor'];
        $bapptitle = $aboutus_block['app_title'];
        $bapp = $aboutus_block['app'];
      ?>
      <div class="row">
        <div class="col-12 col-md-6">
          <p class="about-block__title">
            <?php
              echo $b2title;
            ?>
          </p>

          <div class="about-block__itrems">
            <div class="about-block__item">
              <?php
                foreach ($items as $index => $item) {
                  $title = $item['title'];
                  $descr = $item['descr'];
              ?>
                  <p class="about-block__item--title"> <?php echo $title; ?> </p>
                  <p class="about-block__item--descr"> <?php echo $descr; ?> </p>
              <?php
                }
              ?>
            </div>
          </div>

          <p class="about-block__app-title d-none d-md-flex">
            <?php echo $bapptitle; ?>
          </p>          
          <div class="about-block__app d-none d-md-flex">
            <?php
              $topLinkTemplate = get_template_directory() . '/parts/main/top_link.php';

              /* Первый линк */
              $topLinkData = $aboutus_block['applink'];
              if (file_exists($topLinkTemplate)) {
                  include $topLinkTemplate;
              }

              /* Второй линк */
              $topLinkData = $aboutus_block['applinkScnd'];
              if (file_exists($topLinkTemplate)) {
                  include $topLinkTemplate;
              }
            ?>
          </div>
        </div>
        <div class="col-12 col-md-6">
          <img src="<?php echo $decor?>" alt="b2decor">
        </div>
        <div class="col-12 d-md-none">
          <p class="about-block__app-title">
            <?php echo $bapptitle; ?>
          </p>          

          <div class="about-block__app ">
            <?php
              $topLinkTemplate = get_template_directory() . '/parts/main/top_link.php';

              /* Первый линк */
              $topLinkData = $aboutus_block['applink'];
              if (file_exists($topLinkTemplate)) {
                  include $topLinkTemplate;
              }

              /* Второй линк */
              $topLinkData = $aboutus_block['applinkScnd'];
              if (file_exists($topLinkTemplate)) {
                  include $topLinkTemplate;
              }
            ?>
          </div>
        </div>
      </div>
    </div>
</main>
</div>


<?php get_footer(); ?>