<!DOCTYPE html>
<html lang="<?php bloginfo('language'); ?>">

<head>
  <meta charset="<?php bloginfo('charset'); ?>">

  <title>
    <?php wp_title(); ?>
</title>

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
  <link rel="icon" type="image/png" sizes="192x192" href="/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/europe/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/europe/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/europe/favicon-16x16.png">
  <link rel="manifest" href="/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link rel="alternate" hreflang="ru-UA" href="<?php echo get_the_permalink(pll_get_post(get_the_ID(), 'ru')) ?>" />
  <link rel="alternate" hreflang="en-US" href="<?php echo get_the_permalink(pll_get_post(get_the_ID(), 'en')) ?>" />

  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

  <div class="wrapper">
    <div class="content">
      <!--HEADER-->
      <header class=" header <?php echo is_front_page() ? '' : 'other-page-class'; ?> fixed top-0 left-0 right-0 z-50 bg-[#0a0a0a]/95 backdrop-blur-sm border-b border-white/5">
        <div class="layout-container">
          <div class="flex items-center justify-between h-20">
            <a class="flex items-center group" href="/" data-discover="true">
              <div class="w-20 transition-transform group-hover:scale-105">
                <div class="relative size-full">
                  <div
                    class="-translate-x-1/2 -translate-y-1/2 absolute content-stretch flex flex-col items-center justify-center left-1/2 overflow-clip top-1/2 w-[100.027px]"
                    data-name="logo">
                    <div class="h-[43.492px] overflow-clip relative shrink-0 w-[100px]" data-name="sw-3.svg">
                      <div class="absolute contents inset-[0_0.08%_0.15%_0]" data-name="Group">
                        <div class="absolute contents inset-[0_49.45%_0.15%_0]" data-name="Group">
                          <div class="absolute inset-[0_49.45%_0.15%_0]" data-name="Group">
                            <svg
                              class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                              viewBox="0 0 50.5551 43.4262">
                              <g id="Group">
                                <path clip-rule="evenodd"
                                  d="M6.35781 4.61308C12.1729 0.551093 25.4033 -1.30635 32.894 1.01286C48.644 5.88889 51.5159 14.6337 50.3113 21.3982C49.0407 28.5387 45.5551 36.5407 32.52 42.2391C25.1791 45.4478 17.9054 41.4054 13.5252 38.9116C-0.695875 30.8166 -4.71244 12.3455 6.35781 4.61308ZM34.7762 13.392C30.5676 8.1389 26.1502 5.75977 20.0004 7.29799C16.3557 8.20915 12.3547 12.9426 12.6336 17.6255C13.051 24.61 15.7235 29.518 22.9611 34.3961C27.2122 37.2608 34.1047 38.422 37.8186 36.4395C41.0995 34.6874 45.1874 29.9447 46.9022 26.3538C49.0097 21.9395 48.7824 17.3662 47.7958 14.828C46.8599 12.4199 44.6078 10.581 40.9849 11.1275C39.4642 11.3579 37.9198 13.0242 37.3465 13.9643C36.456 15.423 35.5521 14.8569 34.7762 13.392Z"
                                  fill="var(--fill-0, #FFB100)" fill-rule="evenodd" id="Vector">
                                </path>
                              </g>
                            </svg>
                          </div>
                        </div>
                        <div class="absolute contents inset-[30.89%_64.63%_27.85%_20.47%]" data-name="Group">
                          <div class="absolute inset-[30.89%_64.63%_27.85%_20.47%]" data-name="Group">
                            <svg
                              class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                              viewBox="0 0 14.9038 17.9458">
                              <g id="Group">
                                <path clip-rule="evenodd"
                                  d="M10.1021 10.3642C5.77876 10.2888 3.86347 10.1711 1.58351 7.22787C0.307685 5.57911 -1.77082 1.45721 2.88104 0.152458C4.51637 -0.30622 8.88518 0.0408756 11.3883 4.45307C13.1548 7.5667 14.8139 13.1142 14.9038 17.9458C13.6197 14.2578 12.9513 10.4138 10.1021 10.3642Z"
                                  fill="var(--fill-0, white)" fill-rule="evenodd" id="Vector">
                                </path>
                              </g>
                            </svg>
                          </div>
                        </div>
                        <div class="absolute contents inset-[36.91%_53.88%_42.73%_37.82%]" data-name="Group">
                          <div class="absolute inset-[36.91%_53.88%_42.73%_37.82%]" data-name="Group">
                            <svg
                              class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                              viewBox="0 0 8.2975 8.85483">
                              <g id="Group">
                                <path clip-rule="evenodd"
                                  d="M0 8.85483C0.0878099 6.43024 1.38432 3.18436 2.40085 1.65853C3.44631 0.0903486 5.63844 -0.189604 6.6715 0.101718C8.59815 0.64304 8.49897 3.57795 7.96075 4.90542C7.42253 6.23187 5.90706 8.08725 3.44218 8.06142C2.2645 8.05006 1.42459 6.99532 0 8.85483Z"
                                  fill="var(--fill-0, white)" fill-rule="evenodd" id="Vector">
                                </path>
                              </g>
                            </svg>
                          </div>
                        </div>
                        <div class="absolute contents inset-[25.48%_0.08%_25.63%_56.38%]" data-name="Group">
                          <div class="absolute contents inset-[25.48%_0.08%_25.63%_56.38%]" data-name="Group">
                            <div class="absolute inset-[25.71%_35.01%_54.25%_56.75%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 8.24118 8.71424">
                                <g id="Group">
                                  <path
                                    d="M0.0871434 6.54813H4.91732C5.12895 6.54813 5.25344 6.52323 5.31569 6.46099C5.37793 6.39874 5.40283 6.3365 5.40283 6.27425C5.40283 6.13732 5.34059 6.03772 5.22854 5.97548C5.1165 5.92568 4.97957 5.87589 4.84263 5.83854L1.46897 4.89242C1.20755 4.83018 1.00836 4.73059 0.846527 4.59365C0.684691 4.46916 0.560202 4.34467 0.47306 4.23263C0.261428 3.95876 0.136939 3.64753 0.0871434 3.29896C0.0248988 2.95039 9.53674e-07 2.61427 9.53674e-07 2.2906C9.53674e-07 2.01672 0.0248988 1.71795 0.0871434 1.40673C0.136939 1.0955 0.286326 0.809179 0.547753 0.547752C0.684691 0.410814 0.883874 0.273876 1.1204 0.161836C1.35693 0.0497958 1.66816 0 2.04162 0H7.79302V2.16611H3.36121C3.19937 2.16611 3.08733 2.16611 3.02509 2.17856C2.96284 2.19101 2.9255 2.20346 2.9006 2.21591C2.81346 2.2657 2.76366 2.3404 2.76366 2.45244C2.76366 2.58937 2.8508 2.70141 3.01264 2.76366C3.17447 2.8259 3.33631 2.88815 3.49815 2.9255L6.43609 3.70978C6.62282 3.75957 6.83446 3.83427 7.07098 3.93386C7.29507 4.03345 7.4818 4.15794 7.64363 4.31977C7.78057 4.45671 7.88016 4.6061 7.96731 4.76793C8.05445 4.94222 8.11669 5.1165 8.15404 5.29079C8.19139 5.47752 8.21628 5.65181 8.22873 5.82609C8.24118 6.00038 8.24118 6.16221 8.24118 6.3116C8.24118 6.57303 8.21628 6.85935 8.17894 7.17058C8.14159 7.4818 8.0171 7.78057 7.81792 8.042C7.69343 8.20384 7.55649 8.34077 7.41955 8.42792C7.28262 8.51506 7.13323 8.58975 6.98384 8.6271C6.82201 8.66445 6.67262 8.68934 6.52323 8.70179C6.3614 8.71424 6.21201 8.71424 6.06262 8.71424H0.0871434V6.54813Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[25.48%_24.8%_54.02%_65.61%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 9.58568 8.91342">
                                <g id="Group">
                                  <path
                                    d="M2.88815 4.45671C2.88815 4.80528 2.91305 5.1165 2.95039 5.37793C2.98774 5.65181 3.07488 5.90079 3.21182 6.11242C3.29896 6.24936 3.411 6.3614 3.52304 6.44854C3.63508 6.53568 3.74712 6.61037 3.88406 6.64772C4.00855 6.68507 4.14549 6.70997 4.30732 6.72241C4.45671 6.73486 4.61855 6.74731 4.79283 6.74731C4.97957 6.74731 5.1414 6.73486 5.30324 6.72241C5.45262 6.70997 5.58956 6.68507 5.71405 6.64772C5.83854 6.61037 5.95058 6.53568 6.06262 6.44854C6.17466 6.3614 6.27425 6.24936 6.37385 6.11242C6.53568 5.87589 6.62282 5.62691 6.66017 5.36548C6.68507 5.10406 6.69752 4.80528 6.69752 4.45671V3.94631C6.68507 3.79692 6.67262 3.65998 6.66017 3.52304C6.64772 3.39855 6.61037 3.27406 6.57303 3.16202C6.52323 3.04998 6.46099 2.9255 6.37385 2.80101C6.18711 2.51468 5.96303 2.3404 5.71405 2.2657C5.46507 2.20346 5.15385 2.16611 4.79283 2.16611C4.6061 2.16611 4.44426 2.16611 4.29488 2.17856C4.14549 2.19101 4.00855 2.22836 3.87161 2.2657C3.73467 2.3155 3.62263 2.37774 3.51059 2.46489C3.39855 2.55203 3.29896 2.66407 3.21182 2.80101C3.04998 3.03754 2.96284 3.27406 2.93794 3.52304C2.9006 3.78447 2.88815 4.09569 2.88815 4.45671ZM4.79283 0C5.12895 0 5.46507 -1.60866e-07 5.81364 0.0124488C6.16221 0.0373466 6.51078 0.0622445 6.8469 0.124489C7.18302 0.186734 7.49425 0.273876 7.80547 0.385917C8.10424 0.510406 8.36567 0.684691 8.6022 0.896322C8.83873 1.10795 9.01301 1.36938 9.14995 1.65571C9.28689 1.94203 9.38648 2.25325 9.44873 2.56448C9.51097 2.8757 9.56077 3.19937 9.57322 3.52304C9.58567 3.85916 9.58567 4.17039 9.58567 4.45671C9.58567 4.74304 9.58567 5.05426 9.57322 5.37793C9.56077 5.7016 9.51097 6.02528 9.44873 6.3365C9.38648 6.64772 9.28689 6.95894 9.14995 7.24527C9.01301 7.53159 8.83873 7.79302 8.6022 8.0171C8.36567 8.22873 8.10424 8.40302 7.80547 8.51506C7.49425 8.63955 7.18302 8.72669 6.8469 8.78893C6.51078 8.85118 6.16221 8.88853 5.81364 8.90097C5.45263 8.91342 5.1165 8.91342 4.79283 8.91342C4.46916 8.91342 4.13304 8.91342 3.78447 8.90097C3.42345 8.88853 3.08733 8.85118 2.75121 8.78893C2.41509 8.72669 2.09142 8.63955 1.79264 8.51506C1.48142 8.40302 1.21999 8.22873 0.983464 8.0171C0.746935 7.79302 0.560201 7.53159 0.435712 7.24527C0.298774 6.95894 0.199183 6.64772 0.136938 6.3365C0.0746935 6.02528 0.0373468 5.7016 0.0248979 5.37793C0.0124489 5.05426 0 4.74304 0 4.45671C0 4.17039 0.0124489 3.85916 0.0248979 3.52304C0.0373468 3.19937 0.0746935 2.8757 0.136938 2.56448C0.199183 2.25325 0.298774 1.94203 0.435712 1.65571C0.560201 1.36938 0.746935 1.10795 0.983464 0.896322C1.21999 0.684691 1.48142 0.510406 1.79264 0.385917C2.09142 0.273876 2.41509 0.186734 2.75121 0.124489C3.08733 0.0622445 3.42345 0.0373466 3.77202 0.0124488C4.12059 -1.60866e-07 4.45671 0 4.79283 0Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[25.48%_9.76%_54.02%_75.2%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 15.0383 8.91342">
                                <g id="Group">
                                  <path
                                    d="M5.91323 0.946117C5.97548 0.722037 6.07507 0.547752 6.21201 0.423263C6.3365 0.298774 6.47344 0.199182 6.63527 0.136938C6.78466 0.0871421 6.93405 0.0373472 7.09588 0.0248983C7.25772 0.0124493 7.39465 0 7.51914 0C7.64363 0 7.78057 0.0124493 7.94241 0.0248983C8.10424 0.0373472 8.25363 0.0871421 8.41547 0.136938C8.56485 0.199182 8.70179 0.298774 8.83873 0.423263C8.96322 0.547752 9.06281 0.722037 9.12505 0.946117L10.4322 5.40283C10.4446 5.44018 10.4571 5.47752 10.4944 5.52732C10.5193 5.58956 10.5442 5.61446 10.5691 5.61446C10.5691 5.61446 10.6065 5.60201 10.6438 5.56467C10.6687 5.53977 10.6936 5.46507 10.731 5.35303L12.175 0.0995915H15.0383L12.9095 7.10833C12.7975 7.4818 12.673 7.78057 12.5485 8.0171C12.4116 8.25363 12.2622 8.42792 12.1003 8.56485C11.9261 8.70179 11.7269 8.78893 11.5152 8.83873C11.3036 8.88853 11.0546 8.91342 10.7683 8.91342C10.4322 8.91342 10.1583 8.87608 9.93423 8.80138C9.71015 8.73914 9.52342 8.63955 9.37403 8.50261C9.2122 8.37812 9.08771 8.21628 9.00057 8.02955C8.90097 7.84282 8.81383 7.64363 8.75159 7.40711L7.64363 3.62263C7.63118 3.58529 7.60629 3.54794 7.59384 3.4857C7.58139 3.42345 7.55649 3.39855 7.51914 3.39855C7.4818 3.39855 7.4569 3.42345 7.44445 3.4857C7.432 3.54794 7.4071 3.58529 7.39466 3.62263L6.2867 7.40711C6.22446 7.64363 6.13731 7.84282 6.05017 8.02955C5.95058 8.21628 5.82609 8.37812 5.67671 8.50261C5.51487 8.63955 5.32814 8.73914 5.10405 8.80138C4.87997 8.87608 4.6061 8.91342 4.26998 8.91342C3.98365 8.91342 3.73467 8.88853 3.52304 8.83873C3.31141 8.78893 3.11223 8.70179 2.95039 8.56485C2.77611 8.42792 2.62672 8.25363 2.48978 8.0171C2.35284 7.78057 2.2408 7.4818 2.12876 7.10833L0 0.0995915H2.86325L4.30732 5.35303C4.34467 5.46507 4.36957 5.53977 4.40692 5.56467C4.43181 5.60201 4.46916 5.61446 4.46916 5.61446C4.49406 5.61446 4.51896 5.58956 4.5563 5.52732C4.5812 5.47752 4.59365 5.44018 4.6061 5.40283L5.91323 0.946117Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[25.48%_0.08%_54.25%_89.49%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 10.4322 8.81383">
                                <g id="Group">
                                  <path
                                    d="M4.3198 5.02936H6.11244L5.32816 2.8259C5.31571 2.78856 5.29081 2.75121 5.27836 2.70141C5.25346 2.66407 5.21612 2.63917 5.21612 2.63917C5.21612 2.63917 5.17877 2.66407 5.16632 2.70141C5.14142 2.75121 5.11653 2.78856 5.10408 2.8259L4.3198 5.02936ZM3.22429 1.05816C3.28654 0.896322 3.37368 0.759384 3.46082 0.622446C3.54796 0.485508 3.67245 0.373467 3.82184 0.286325C3.97123 0.199183 4.15796 0.124489 4.38204 0.0746933C4.59367 0.0248976 4.88 0 5.21612 0C5.42775 0 5.62693 0.0124493 5.82612 0.0248983C6.01285 0.0497961 6.19958 0.0995915 6.37387 0.161836C6.5357 0.23653 6.69754 0.348569 6.84693 0.485507C6.98386 0.622445 7.10835 0.821628 7.20794 1.05816L10.4322 8.81383H7.46937L6.78468 7.02119H3.64756L2.96286 8.81383H2.26498e-05L3.22429 1.05816Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[54.33%_34.59%_25.63%_56.38%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 9.03792 8.71424">
                                <g id="Group">
                                  <path
                                    d="M3.11224 8.71424V2.16611H9.29832e-06V0H9.03792V2.16611H5.92569V8.71424H3.11224Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[54.11%_25.65%_25.63%_63.92%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 10.4322 8.81384">
                                <g id="Group">
                                  <path
                                    d="M4.31977 5.02937H6.11242L5.32814 2.82591C5.31569 2.78856 5.29079 2.75122 5.27834 2.70142C5.25344 2.66408 5.2161 2.63918 5.2161 2.63918C5.2161 2.63918 5.17875 2.66408 5.1663 2.70142C5.1414 2.75122 5.1165 2.78856 5.10406 2.82591L4.31977 5.02937ZM3.22427 1.05817C3.28651 0.896329 3.37366 0.759392 3.4608 0.622454C3.54794 0.485515 3.67243 0.373475 3.82182 0.286333C3.9712 0.19919 4.15794 0.124497 4.38202 0.0747009C4.59365 0.0249052 4.87997 7.62939e-06 5.2161 7.62939e-06C5.42773 7.62939e-06 5.62691 0.012457 5.82609 0.0249059C6.01283 0.0498037 6.19956 0.0995991 6.37384 0.161844C6.53568 0.236537 6.69752 0.348577 6.8469 0.485515C6.98384 0.622453 7.10833 0.821636 7.20792 1.05817L10.4322 8.81384H7.46935L6.78466 7.0212H3.64753L2.96284 8.81384H0L3.22427 1.05817Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[54.33%_16.51%_25.63%_73.61%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 9.88444 8.71424">
                                <g id="Group">
                                  <path
                                    d="M6.52323 8.71424L4.94222 6.26181L3.36121 8.71424H1.66893e-06L3.29896 4.29488L0.099593 0H3.4608L4.94222 2.32795L6.42364 0H9.78485L6.58548 4.29488L9.88444 8.71424H6.52323Z"
                                    fill="var(--fill-0, white)" id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                            <div class="absolute inset-[54.33%_13.45%_25.63%_83.74%]" data-name="Group">
                              <svg
                                class="absolute block inset-0 size-full" fill="none" preserveAspectRatio="none"
                                viewBox="0 0 2.81347 8.71424">
                                <g id="Group">
                                  <path d="M2.81347 0H1.33514e-05V8.71424H2.81347V0Z" fill="var(--fill-0, white)"
                                    id="Vector">
                                  </path>
                                </g>
                              </svg>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </a>
            <div class="hidden lg:flex items-center gap-4">
              <?php
                wp_nav_menu(
                  array(
                    'theme_location'  => 'main',
                    'container'       => 'nav',
                    'container_class' => 'flex items-center gap-1',
                    'menu_class'      => 'flex items-center gap-1 m-0 p-0 list-none',
                    'menu_id'         => '',
                    'fallback_cb'     => false,
                    'depth'           => 1,
                  )
                );
              ?>

              <?php get_template_part( 'parts/lang' ); ?>
            </div>
            <button type="button"
              class="lg:hidden flex items-center justify-center w-11 h-11 rounded-lg border border-white/10 text-white/90 hover:bg-white/5 transition-colors"
              aria-expanded="false" aria-label="Открыть меню">
              <svg xmlns="http://www.w3.org/2000/svg" width="24"
                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-menu w-6 h-6">
                <line x1="4" x2="20" y1="12" y2="12">

                </line>
                <line x1="4" x2="20" y1="6" y2="6">

                </line>
                <line x1="4" x2="20" y1="18" y2="18">

                </line>
              </svg>
            </button>
          </div>
        </div>
      </header>
<!--HEADER-END-->