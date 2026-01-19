
</div>


<footer class="bg-gray-900 text-white">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="py-12 grid grid-cols-1 md:grid-cols-4 gap-8">
			<div class="col-span-1 md:col-span-2">
				<img src="<?php echo get_template_directory_uri() ?>/dist/img/logo.png" alt="Level Drive Partner" class="h-10 w-auto mb-4 brightness-0 invert">
				<p class="text-gray-300 mb-4 max-w-md"> 
					<?php echo pll__('footer__text'); ?>
					
				</p>
				<p class="text-gray-400 mb-4 text-sm">
					<?php echo pll__('footer__copyright');?>
				</p>

				<?php
					$soc = get_template_directory() . '/parts/main/socials.php';
					if (file_exists($soc)) {
						include $soc;
					} else {
						echo 'Файл soc.php не найден';
					}
				?>

			</div>
			<div>
				<h3 class="text-lg font-semibold mb-4">
					<?php echo pll__('footer__menu_title'); ?>
				</h3>
				<?php
                  class Footer_Walker_Nav_Anchor_main extends Walker_Nav_Menu {
                      // Меняем вывод каждого пункта меню
                      function start_el(&$output, $item, $depth = 0, $args = [], $id = 0) {
                          $title = apply_filters('the_title', $item->title, $item->ID);
                          $url = $item->url;
                          $classes = 'hover:text-orange-400 transition-colors'; // твои классы

                          $output .= '<li><a href="' . esc_url($url) . '" class="' . esc_attr($classes) . '">' . esc_html($title) . '</a></li>';
                      }

                      // Убираем end_el
                      function end_el(&$output, $item, $depth = 0, $args = []) {}
                  }
                ?>
				<?php
					wp_nav_menu(array(
						'theme_location' => 'main',
						'container' => false,
						'items_wrap' => '<ul class="space-y-2 text-gray-300">%3$s</ul>',
						'walker' => new Footer_Walker_Nav_Anchor_main(),
						'fallback_cb' => false
					));
				?>
			</div>
			<div>
				<?php
					///Телефон 
					$itemPhone = get_theme_mod('contact-1-value');
					$itemPhoneHref = get_theme_mod('contact-1-href');
					///Email
					$itemEmail = get_theme_mod('contact-2-value');
					$itemEmailHref = get_theme_mod('contact-2-href');
					//Aдрес
					$itemAddress = get_theme_mod('contact-value');
					$itemAddressHref = get_theme_mod('contact-href');

					$itemAddress1 = get_theme_mod('contact-add-1-value');
					$itemAddressHref1 = get_theme_mod('contact-add-1-href');
					$itemAddress2 = get_theme_mod('contact-add-2-value');
					$itemAddressHref2 = get_theme_mod('contact-add-2-href');
				?>
				<h3 class="text-lg font-semibold mb-4">
					<?php echo pll__('footer__menu_title_contact');?>
				</h3>
				<ul class="space-y-2 text-gray-300">
					
					<li>
						<a href="tel:<?php echo $itemPhoneHref; ?>" class="hover:text-orange-400 transition-colors">
							<?php echo $itemPhone; ?>
						</a>
					</li>
					<li>
						<a href="mailto:<?php echo $itemEmailHref; ?>" class="hover:text-orange-400 transition-colors">
							<?php echo $itemEmail; ?>
						</a>
					</li>
					<li class="text-sm"> <a href="<?php echo $itemAddressHref; ?>" class="hover:text-orange-400 transition-colors"> <?php echo $itemAddress; ?> </a> </li>
					<li class="text-sm"> <a href="<?php echo $itemAddressHref1; ?>" class="hover:text-orange-400 transition-colors"> <?php echo $itemAddress1; ?> </a> </li>
					<li class="text-sm"> <a href="<?php echo $itemAddressHref2; ?>" class="hover:text-orange-400 transition-colors"> <?php echo $itemAddress2; ?> </a> </li>
				</ul>
			</div>
		</div>
		<div class="border-t border-gray-800 py-6">
			<div class="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
				<?php
					class Footer_Walker_Nav_Anchor_footer extends Walker_Nav_Menu {
						// Меняем вывод каждого пункта меню
						function start_el(&$output, $item, $depth = 0, $args = [], $id = 0) {
							$title = apply_filters('the_title', $item->title, $item->ID);
							$url = $item->url;
							$classes = 'hover:text-orange-400 transition-colors'; // твои классы

							$output .= '<li><a href="' . esc_url($url) . '" class="' . esc_attr($classes) . '">' . esc_html($title) . '</a></li>';
						}

						// Убираем end_el
						function end_el(&$output, $item, $depth = 0, $args = []) {}
					}
                ?>
				<?php
					wp_nav_menu(array(
						'theme_location' => 'footer',
						'container' => false,
						'items_wrap' => '<ul class="flex space-x-6 text-sm text-gray-400">%3$s</ul>',
						'walker' => new Footer_Walker_Nav_Anchor_footer(),
						'fallback_cb' => false
					));
				?>
				

				
				<p class="text-sm text-gray-400">
					<?php echo pll__('footer__text_n');?>
				</p>
			</div>
		</div>
	</div>
	<!-- Success/Error Messages -->
	<div id="toast" class="fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-full transition-transform duration-300 z-50">
		<p id="toast-message">
			
		</p>
	</div>
</footer>

  <div style="display: none;">
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

<?php wp_footer(); ?>
<script> // Accordion functionality document.addEventListener('DOMContentLoaded', function() { const triggers = document.querySelectorAll('.accordion-trigger'); triggers.forEach(trigger => { trigger.addEventListener('click', function() { const targetId = this.dataset.target; const content = document.getElementById(targetId); const chevron = this.querySelector('.chevron'); // Close all other accordions triggers.forEach(otherTrigger => { if (otherTrigger !== this) { const otherId = otherTrigger.dataset.target; const otherContent = document.getElementById(otherId); const otherChevron = otherTrigger.querySelector('.chevron'); otherContent.classList.remove('active'); otherTrigger.classList.remove('active'); } }); // Toggle current accordion content.classList.toggle('active'); this.classList.toggle('active'); }); }); // Form submission const form = document.getElementById('applicationForm'); form.addEventListener('submit', function(e) { e.preventDefault(); const name = document.getElementById('name').value; const phone = document.getElementById('phone').value; const city = document.getElementById('city').value; if (!name || !phone || !city) { showToast('Пожалуйста, заполните все поля', 'error'); return; } showToast('Заявка отправлена! Мы свяжемся с вами в ближайшее время.', 'success'); form.reset(); }); }); // Toast notification function showToast(message, type = 'success') { const toast = document.getElementById('toast'); const toastMessage = document.getElementById('toast-message'); toastMessage.textContent = message; if (type === 'error') { toast.className = 'fixed top-4 right-4 bg-red-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-0 transition-transform duration-300 z-50'; } else { toast.className = 'fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-0 transition-transform duration-300 z-50'; } setTimeout(() => { toast.className = 'fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg transform translate-x-full transition-transform duration-300 z-50'; }, 3000); } // Smooth scrolling for navigation links document.querySelectorAll('a[href^="#"]').forEach(anchor => { anchor.addEventListener('click', function (e) { e.preventDefault(); const target = document.querySelector(this.getAttribute('href')); if (target) { target.scrollIntoView({ behavior: 'smooth', block: 'start' }); } }); }); </script>


</body>

</html>