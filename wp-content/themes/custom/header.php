<!DOCTYPE html>
<html lang="<?php bloginfo( 'language' ); ?>">

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">

  <title><?php wp_title(); ?></title>

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <link rel="apple-touch-icon" sizes="57x57" href="/europe/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/europe/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/europe/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/europe/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/europe/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/europe/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/europe/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/europe/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/europe/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/europe/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/europe/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/europe/favicon-16x16.png">
  <link rel="manifest" href="/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link rel="alternate" hreflang="ru-UA" href="<?php echo get_the_permalink(pll_get_post( get_the_ID(), 'ru' )) ?>" />
  <link rel="alternate" hreflang="en-US" href="<?php echo get_the_permalink(pll_get_post( get_the_ID(), 'en' )) ?>" />

  <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

<div class="wrapper">
  <div class="content">
    <!--HEADER-->
    <header class="header <?php echo is_front_page() ? '' : 'other-page-class'; ?>">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-6 col-xl-2">
            <a class="logo" href="<?php echo get_home_url(); ?>/">
              <img src="<?php echo get_template_directory_uri(); ?>/dist/img/logo.svg" class="d-xl-block" alt="FleetSoft">
            </a>
          </div>
          <div class="col-2 order-3 order-xl-2 col-xl-8">
            <div class="menu-main">
              <button class="menu-main__brgr d-xl-none">
                <span></span>
                <span></span>
                <span></span>
              </button>
              <div class="menu-main__menu">
                <div class="d-xl-none">
                  <a class="menu-main__menu-logo " href="<?php echo get_home_url(); ?>/">
                    <img src="<?php echo get_template_directory_uri(); ?>/dist/img/logo.svg" class="d-xl-block" alt="FleetSoft">
                  </a>
                  <button class="menu-main__close">
                    <svg width="11" height="11" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M0.5 0.5L10.5 10.5M0.5 10.5L10.5 0.5" stroke="black" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                  </button>
                </div>
                <?php
                  $args = array(
                    'container'     => '',
                    'theme_location' => 'main',
                    'menu_id' => '',
                  );
                  wp_nav_menu($args);
                ?>
              </div>
            </div>
          </div>
          <div class="col-4 order-2 order-xl-3 col-xl-2 d-flex">
            <?php
              $lang = get_template_directory() . '/parts/lang.php';
              if (file_exists($lang)) {
                include $lang;
              } else {
                echo 'Файл lang.php не найден';
              }
            ?>            
          </div>
        </div>
      </div>
    </header>
    <!--HEADER-END-->