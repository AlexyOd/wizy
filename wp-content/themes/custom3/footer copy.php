
</div>

<footer id="footer" class="footer">
	<div class="container">
		<div class="footer__inner">
			<div class="row footer__row">
				<div class="col-12 col-lg-4">
					<div class="footer__lside">
						<a href="<?php echo get_home_url(); ?>/" class="footer__logo">
						<img src="<?php echo get_template_directory_uri() ?>/dist/img/icons/footer_logo.svg" alt="footer_logo" style="max-width: 133px">
						</a>
						
					</div>
				</div>
				<div class="col-12 d-lg-none">
					<p class="footer__text">
						<?php
							echo pll__('footer__text');
						?>
					</p>
				</div>
				<div class="col-12 col-lg-8">
					<div class="footer__rside">
						<?php
							$contacts = get_template_directory() . '/parts/main/contacts.php';
							if (file_exists($contacts)) {
								include $contacts;
							} else {
								echo 'Файл contacts.php не найден';
							}
						?>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 d-none d-lg-block">
					<p class="footer__text">
						<?php
							echo pll__('footer__text');
						?>
					</p>
				</div>
				<div class="col-12 col-lg-8">
					<div class="footer__rside">
						<div class="footer__menu">
							<?php
								$args = array(
									'container'     => '',
									'theme_location' => 'footer',
									'menu_id' => '',
								);
								wp_nav_menu($args);
							?>
						</div>
					</div>
				</div>
				<div class="col-12 d-lg-none">
					<?php
						$socials = get_template_directory() . '/parts/main/socials.php';
						if (file_exists($socials)) {
							include $socials;
						} else {
							echo 'Файл socials.php не найден';
						}
					?>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<hr class="footer__hr">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<p class="footer__copyright"><?php echo pll__('footer__copyright'); ?></p>
				</div>
				<div class="col-12 col-lg-8 d-none d-lg-block">
					<ul class="socials">
						<?php
							$telegram = get_theme_mod('telegram');
							$insta = get_theme_mod('insta');
							$watsapp = get_theme_mod('watsapp');
							$youtube = get_theme_mod('youtube');
						?>
						<?php if(!empty($telegram)) : ?>
							<li>
								<a href="<?php echo $telegram; ?>" target="_blank">
									<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
										<g clip-path="url(#clip0_1_805)">
											<path d="M0.517645 6.89389L3.68014 8.07423L4.90421 12.0109C4.98254 12.263 5.29084 12.3562 5.49548 12.1889L7.25831 10.7518C7.44309 10.6012 7.70629 10.5937 7.8994 10.7339L11.0789 13.0423C11.2978 13.2014 11.608 13.0814 11.6629 12.8169L13.992 1.61324C14.052 1.32428 13.768 1.08323 13.4929 1.18964L0.513939 6.19653C0.193646 6.32005 0.196437 6.77353 0.517645 6.89389ZM4.70694 7.44591L10.8876 3.63922C10.9987 3.571 11.113 3.7212 11.0176 3.80968L5.91675 8.55117C5.73745 8.71807 5.6218 8.94142 5.58904 9.18385L5.41528 10.4715C5.39227 10.6434 5.15076 10.6605 5.10332 10.4941L4.43505 8.14602C4.35851 7.8782 4.47005 7.59212 4.70694 7.44591Z" fill="white"/>
										</g>
										<defs>
											<clipPath id="clip0_1_805">
												<rect width="13.7249" height="13.7249" fill="white" transform="translate(0.275101 0.275085)"/>
											</clipPath>
										</defs>
									</svg>
								</a>
							</li>
						<?php endif; ?>
						<?php if(!empty($insta)) : ?>
							<li>
								<a href="<?php echo $insta; ?>" target="_blank">
									<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
										<g clip-path="url(#clip0_1_814)">
											<path d="M7.00209 6.10352e-05H6.99859C3.13896 6.10352e-05 0.000335693 3.13956 0.000335693 7.00006C0.000335693 8.53131 0.493836 9.95056 1.33296 11.1029L0.460586 13.7034L3.15121 12.8433C4.25809 13.5766 5.57846 14.0001 7.00209 14.0001C10.8617 14.0001 14.0003 10.8597 14.0003 7.00006C14.0003 3.14044 10.8617 6.10352e-05 7.00209 6.10352e-05ZM11.0752 9.88494C10.9063 10.3618 10.2361 10.7573 9.70146 10.8728C9.33571 10.9507 8.85796 11.0128 7.24971 10.3461C5.19259 9.49381 3.86784 7.40344 3.76459 7.26781C3.66571 7.13219 2.93334 6.16094 2.93334 5.15644C2.93334 4.15194 3.44346 3.66281 3.64909 3.45281C3.81796 3.28044 4.09709 3.20169 4.36484 3.20169C4.45146 3.20169 4.52934 3.20606 4.59934 3.20956C4.80496 3.21831 4.90821 3.23056 5.04384 3.55519C5.21271 3.96206 5.62396 4.96656 5.67296 5.06981C5.72284 5.17306 5.77271 5.31306 5.70271 5.44869C5.63709 5.58869 5.57934 5.65081 5.47609 5.76981C5.37284 5.88881 5.27484 5.97981 5.17159 6.10756C5.07709 6.21869 4.97034 6.33769 5.08934 6.54331C5.20834 6.74456 5.61959 7.41569 6.22509 7.95469C7.00646 8.65031 7.63996 8.87256 7.86659 8.96706C8.03546 9.03706 8.23671 9.02044 8.36009 8.88919C8.51671 8.72031 8.71009 8.44031 8.90696 8.16469C9.04696 7.96694 9.22371 7.94244 9.40921 8.01244C9.59821 8.07806 10.5983 8.57244 10.804 8.67481C11.0096 8.77806 11.1452 8.82706 11.1951 8.91369C11.2441 9.00031 11.2441 9.40719 11.0752 9.88494Z" fill="white"/>
										</g>
										<defs>
											<clipPath id="clip0_1_814">
												<rect width="14" height="14" fill="white"/>
											</clipPath>
										</defs>
									</svg>
								</a>
							</li>
						
						<?php endif; ?>
						<?php if(!empty($watsapp)) : ?>
							<li>
								<a href="<?php echo $watsapp; ?>" target="_blank">
									<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
										<g clip-path="url(#clip0_1_822)">
											<path d="M11.0696 2.59039C10.8823 2.59039 10.7298 2.74289 10.7298 2.93028C10.7298 3.11766 10.8823 3.27016 11.0696 3.27016C11.2571 3.27016 11.4095 3.11769 11.4095 2.93028C11.4095 2.74286 11.2571 2.59039 11.0696 2.59039Z" fill="white"/>
											<path d="M7.00009 3.98676C5.33863 3.98676 3.98692 5.33847 3.98692 6.99993C3.98692 8.66139 5.33863 10.0131 7.00009 10.0131C8.66158 10.0131 10.0133 8.66142 10.0133 6.99995C10.0133 5.33849 8.66158 3.98676 7.00009 3.98676Z" fill="white"/>
											<path d="M10.1622 -0.000183105H3.83796C1.72174 -0.000183105 6.86646e-05 1.72149 6.86646e-05 3.83773V10.1619C6.86646e-05 12.2782 1.72174 13.9998 3.83796 13.9998H10.1622C12.2784 13.9998 14.0001 12.2781 14.0001 10.1619V3.83773C14.0001 1.72149 12.2784 -0.000183105 10.1622 -0.000183105ZM7.00007 10.8398C4.88271 10.8398 3.16016 9.11718 3.16016 6.99982C3.16016 4.88245 4.88273 3.15993 7.00007 3.15993C9.1174 3.15993 10.84 4.88248 10.84 6.99982C10.84 9.11715 9.1174 10.8398 7.00007 10.8398ZM11.0697 4.0969C10.4264 4.0969 9.90302 3.57354 9.90302 2.93025C9.90302 2.28696 10.4264 1.76357 11.0697 1.76357C11.713 1.76357 12.2363 2.28693 12.2363 2.93022C12.2363 3.57351 11.713 4.0969 11.0697 4.0969Z" fill="white"/>
										</g>
										<defs>
											<clipPath id="clip0_1_822">
												<rect width="14" height="14" fill="white"/>
											</clipPath>
										</defs>
									</svg>
								</a>
							</li>
							
						<?php endif; ?>
						<?php if(!empty($youtube)) : ?>
							<li>
								<a href="<?php echo $youtube; ?>" target="_blank">
									<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
										<g clip-path="url(#clip0_1_836)">
											<path d="M11.0922 2.04663H2.9074C1.30157 2.04663 -0.000217438 3.34842 -0.000217438 4.95425V9.04576C-0.000217438 10.6516 1.30157 11.9534 2.9074 11.9534H11.0922C12.698 11.9534 13.9998 10.6516 13.9998 9.04576V4.95425C13.9998 3.34842 12.698 2.04663 11.0922 2.04663ZM9.12576 7.19908L5.29748 9.02493C5.19547 9.07358 5.07764 8.99921 5.07764 8.88621V5.12037C5.07764 5.00576 5.19857 4.93148 5.30079 4.98328L9.12907 6.92327C9.24289 6.98094 9.24092 7.14417 9.12576 7.19908Z" fill="white"/>
										</g>
										<defs>
											<clipPath id="clip0_1_836">
												<rect width="14" height="14" fill="white"/>
											</clipPath>
										</defs>
									</svg>
								</a>
							</li>
						<?php endif; ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
  <!-- Modal -->

</footer>
</div>
  <div style="display: none;">
    <?php
      // Путь к файлу svg_icons.php относительно текущей темы
      $svg_icons_php_path = get_template_directory() . '/parts/svg_icons.php';

      // Проверяем, существует ли файл
      if (file_exists($svg_icons_php_path)) {
        // Включаем содержимое svg_icons.php
        include $svg_icons_php_path;
      } else {
        // Если файл не найден, выводим сообщение об ошибке
        echo 'Файл svg_icons.php не найден';
      }
    ?>
  <div data-validate_error="phone">
      <?php
			echo pll__('error_phone');
      ?>
  </div>
  <div data-validate_error="req">
      <?php
			echo pll__('error_req');
      ?>
  </div>
</div>
</div>

<?php wp_footer(); ?>


</body>

</html>