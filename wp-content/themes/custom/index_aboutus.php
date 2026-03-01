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
  $aboutus_aditions= get_field('aditions');

  $aboutus_additiona = [
    'top'     => get_field('addTop'),
    'content' => get_field('kontent'),
    'app'     => get_field('app'),
    'img'     => get_field('img'),
  ];
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

    <div class="about-aditional">
      <div class="additional"></div>
      <?php
        $additional = get_template_directory() . '/parts/additional.php';
        $additionals = $aboutus_additiona; 
        if (file_exists($additional)) {
          include $additional;
        } else {
          echo 'Файл additional.php не найден';
        }
      ?>
    </div>

    <div class="about-philosophy">
      <?php
        $phil_title = get_field('phil_title');
        $phil_subtitle = get_field('phil_subtitle');
        $tphil_text = get_field('tphil_text');
      ?>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <p class="about-philosophy__title">
              <?php echo $phil_title; ?>
            </p>
          </div>
          <div class="col-12 col-md-10 col-xxl-8 mx-auto justify-content-center">
            <p class="about-philosophy__subtitle"> <?php echo $phil_subtitle; ?></p>
          </div>
          <div class="col-12 col-md-10 col-xxl-8 mx-auto justify-content-center">
            <p class="about-philosophy__text">
              <?php echo $tphil_text; ?>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>

</main>
</div>


<?php get_footer(); ?>