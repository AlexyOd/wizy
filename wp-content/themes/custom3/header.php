<!DOCTYPE html>
<html lang="<?php bloginfo( 'language' ); ?>">

<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">

  <title><?php wp_title(); ?></title>

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!-- <?php if(false) : ?>
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
  <?php endif; ?> -->
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
  <link rel="manifest" href="/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link rel="alternate" hreflang="ru-UA" href="<?php echo get_the_permalink(pll_get_post( get_the_ID(), 'ru' )) ?>" />
  <link rel="alternate" hreflang="en-US" href="<?php echo get_the_permalink(pll_get_post( get_the_ID(), 'en' )) ?>" />

  <?php wp_head(); ?>
</head>
<body <?php body_class('bg-white text-gray-900 leading-relaxed'); ?>>
  <header class="bg-white shadow-sm border-b">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <div class="flex items-center">
                  <a class="logo" href="<?php echo get_home_url(); ?>/">
                    <img src="<?php echo get_template_directory_uri() ?>/dist/img/logo2.png" alt="Level Drive Partner" class="h-10 w-auto">
                  </a>
                </div>
                <?php
                  class Walker_Nav_Anchor extends Walker_Nav_Menu {
                      // Меняем вывод каждого пункта меню
                      function start_el(&$output, $item, $depth = 0, $args = [], $id = 0) {
                          $title = apply_filters('the_title', $item->title, $item->ID);
                          $url = $item->url;
                          $classes = 'text-gray-700 hover:text-orange-500 transition-colors'; // твои классы

                          $output .= '<a href="' . esc_url($url) . '" class="' . esc_attr($classes) . '">' . esc_html($title) . '</a>';
                      }

                      // Убираем end_el
                      function end_el(&$output, $item, $depth = 0, $args = []) {}
                  }
                ?>
                <nav class="hidden md:flex space-x-8">
                    <?php
                    wp_nav_menu(array(
                        'theme_location' => 'main',
                        'container' => false,
                        'items_wrap' => '%3$s', // убираем <ul>
                        'walker' => new Walker_Nav_Anchor(),
                        'fallback_cb' => false
                    ));
                    ?>
                </nav>
            </div>
        </div>
    </header>
    <!--HEADER-END-->