</div>

<footer id="footer" class="footer">
	<div class="container">
		<div class="row">
			<div class="col-12">
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
		<div class="row">
			<div class="col-12">
				<a class="logo" href="<?php echo get_home_url(); ?>/">
					<img src="<?php echo get_template_directory_uri(); ?>/dist/img/logo_footer.svg" class="d-xl-block" alt="FleetSoft">
				</a>

				<p class="footer__text">
					<?php
						echo pll__('footer__text');
					?>
				</p>
			</div>

			<div class="col-12">
				<div class="footer__app">
					<div class="footer__app--text">
						<?php
							echo pll__('footer_app_title');
						?>
					</div>

					<div class="footer__app--items">
						<a class="footer__app--apple footer__app--item">

							<svg xmlns="http://www.w3.org/2000/svg" width="34" height="41" viewBox="0 0 34 41" fill="none" class="footer__app--item-icon footer__app--apple-icon">
								<path d="M28.3285 39.355C26.1316 41.5187 23.733 41.177 21.4241 40.1522C18.9806 39.1045 16.7389 39.059 14.161 40.1522C10.9329 41.5642 9.22924 41.1543 7.30138 39.355C-3.6381 27.8993 -2.02408 10.4537 10.3949 9.81598C13.4212 9.97541 15.5284 11.5013 17.2994 11.638C19.9446 11.0914 22.4777 9.51991 25.3022 9.72488C28.6872 9.99818 31.2427 11.3647 32.924 13.8244C25.9299 18.0833 27.5887 27.4438 34 30.0629C32.7222 33.4791 31.0634 36.8726 28.3061 39.3778L28.3285 39.355ZM17.0752 9.67933C16.7389 4.60053 20.7964 0.409948 25.4591 0C26.1092 5.87593 20.2136 10.2487 17.0752 9.67933Z" fill="white"/>
							</svg>

							<div class="text">
								<p>Завантажити</p>
								<span>App Store</span>
							</div>

						</a>
						<a class="footer__app--googel footer__app--item">
							<svg width="34" height="38" viewBox="0 0 34 38" fill="none" xmlns="http://www.w3.org/2000/svg" class="footer__app--item-icon footer__app--googel-icon">
								<path d="M32.8063 21.0552L26.6231 24.5671L21.0772 19.0364L26.6672 13.4614L32.8063 16.9479C33.1686 17.1535 33.47 17.452 33.6798 17.8128C33.8895 18.1736 34 18.5838 34 19.0015C34 19.4193 33.8895 19.8295 33.6798 20.1903C33.47 20.5511 33.1686 20.8496 32.8063 21.0552ZM0.176709 1.46267C0.0601707 1.74809 0.000150067 2.05356 0 2.36202V35.6395C0 35.9831 0.070999 36.3029 0.195642 36.5895L17.7955 19.0348L0.176709 1.46267ZM19.4364 17.3992L24.5767 12.2723L3.51051 0.308401C3.0588 0.0484642 2.53307 -0.0513666 2.01795 0.0249792L19.4364 17.3992ZM19.4364 20.672L2.08106 37.9829C2.55123 38.0399 3.04665 37.9575 3.51051 37.6931L24.5325 25.7546L19.4364 20.672Z" fill="white"/>
							</svg>

							<div class="text">
								<p>Завантажити</p>
								<span>Google Play</span>
							</div>	
						</a>
					</div>
				</div>

			</div>
		</div>
		
	</div>
  <!-- Modal -->

</footer>
</div> 
</div>

<?php wp_footer(); ?>


</body>

</html>