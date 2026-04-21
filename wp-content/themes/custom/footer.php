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
			<div class="col-12 col-xl-6">
				<a class="logo" href="<?php echo get_home_url(); ?>/">
					<img src="<?php echo get_template_directory_uri(); ?>/dist/img/logo_footer.svg" class="d-xl-block" alt="FleetSoft">
				</a>

				<p class="footer__text">
					<?php
						echo pll__('footer__text');
					?>
				</p>
			</div>

			<div class="col-12 col-xl-6">
				<div class="hiw__app">
					<p class="hiw__app--title global__mtitle">
						<?php
							echo pll__('footer_app_title');
						?>
					</p>

					<div class="hiw__app--holder">
						<?php
							$topLinkTemplate = get_template_directory() . '/parts/main/top_link.php';

							$appApple['link']['url'] =  get_theme_mod('app-apple');
							$appApple['img'] = get_theme_mod('app-apple-img');
							if(pll_current_language() == 'en') {
								$appApple['img'] = get_theme_mod('app-apple-en-img');
							};
							/* Первый линк */
							$topLinkData = $appApple;
							if (file_exists($topLinkTemplate)) {
								include $topLinkTemplate;
							}

							/* Второй линк */
							$appGoogle['link']['url'] =  get_theme_mod('app-google');
							$appGoogle['img'] = get_theme_mod('app-google-img');
							if(pll_current_language() == 'en') {
								$appGoogle['img'] = get_theme_mod('app-google-en-img');
							};
							$topLinkData = $appGoogle;
							if (file_exists($topLinkTemplate)) {
								include $topLinkTemplate;
							}
						?>
					</div>
				</div>
				<div class="footer-social d-none d-xxl-flex">
					<?php
						$ytube = get_theme_mod('ytube');
						$insta = get_theme_mod('insta');
						$tiktoc = get_theme_mod('tiktoc');
						$email = get_theme_mod('email');
					?>

					<a class="footer-social__item footer-social__item-email" href="mailto:<?php echo $email; ?>">
						<?php echo $email; ?>
					</a>
					<br>
					<a class="footer-social__item footer-social__item-ytube" href="<?php echo $ytube; ?>" target="_blank">
						<svg width="32" height="23" viewBox="0 0 32 23" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M18.75 11.3999L13.5 14.3999V8.3999L18.75 11.3999Z" fill="white" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M0.75 12.462V10.338C0.75 5.9955 0.75 3.8235 2.1075 2.427C3.4665 1.029 5.6055 0.969 9.882 0.8475C11.907 0.7905 13.977 0.75 15.75 0.75C17.523 0.75 19.5915 0.7905 21.618 0.8475C25.8945 0.969 28.0335 1.029 29.391 2.427C30.7485 3.825 30.75 5.997 30.75 10.338V12.4605C30.75 16.8045 30.75 18.975 29.3925 20.373C28.0335 21.7695 25.896 21.831 21.618 21.951C19.593 22.0095 17.523 22.05 15.75 22.05C13.977 22.05 11.9085 22.0095 9.882 21.951C5.6055 21.831 3.4665 21.771 2.1075 20.373C0.7485 18.975 0.75 16.803 0.75 12.462Z" stroke="white" stroke-width="1.5"/>
						</svg>
					</a>

					<a class="footer-social__item footer-social__item-tiktoc" href="<?php echo $tiktoc; ?>" target="_blank">
						<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M30.75 9.08333V22.4167C30.75 24.6268 29.872 26.7464 28.3092 28.3092C26.7464 29.872 24.6268 30.75 22.4167 30.75H9.08333C6.8732 30.75 4.75358 29.872 3.19078 28.3092C1.62797 26.7464 0.75 24.6268 0.75 22.4167V9.08333C0.75 6.8732 1.62797 4.75358 3.19078 3.19078C4.75358 1.62797 6.8732 0.75 9.08333 0.75H22.4167C24.6268 0.75 26.7464 1.62797 28.3092 3.19078C29.872 4.75358 30.75 6.8732 30.75 9.08333Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M12.416 15.75C11.4271 15.75 10.4604 16.0432 9.63817 16.5927C8.81592 17.1421 8.17506 17.923 7.79662 18.8366C7.41818 19.7502 7.31917 20.7555 7.51209 21.7255C7.70502 22.6954 8.18122 23.5863 8.88048 24.2855C9.57975 24.9848 10.4707 25.461 11.4406 25.6539C12.4105 25.8469 13.4158 25.7478 14.3294 25.3694C15.2431 24.991 16.024 24.3501 16.5734 23.5279C17.1228 22.7056 17.416 21.7389 17.416 20.75V5.75C17.971 7.41667 20.0827 10.75 24.0827 10.75" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>

					</a>
					
					<a class="footer-social__item footer-social__item-insta" href="<?php echo $insta; ?>" target="_blank" >
						<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M15 20C16.3261 20 17.5979 19.4732 18.5355 18.5355C19.4732 17.5979 20 16.3261 20 15C20 13.6739 19.4732 12.4021 18.5355 11.4645C17.5979 10.5268 16.3261 10 15 10C13.6739 10 12.4021 10.5268 11.4645 11.4645C10.5268 12.4021 10 13.6739 10 15C10 16.3261 10.5268 17.5979 11.4645 18.5355C12.4021 19.4732 13.6739 20 15 20Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M3.75 20V10C3.75 8.3424 4.40848 6.75269 5.58058 5.58058C6.75269 4.40848 8.3424 3.75 10 3.75H20C21.6576 3.75 23.2473 4.40848 24.4194 5.58058C25.5915 6.75269 26.25 8.3424 26.25 10V20C26.25 21.6576 25.5915 23.2473 24.4194 24.4194C23.2473 25.5915 21.6576 26.25 20 26.25H10C8.3424 26.25 6.75269 25.5915 5.58058 24.4194C4.40848 23.2473 3.75 21.6576 3.75 20Z" stroke="white" stroke-width="1.5"/>
							<path d="M21.875 8.13912L21.8892 8.12354" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>
					</a>
				</div>
			</div>

			<div class="col-12 d-xxl-none">
				<div class="footer-social">
					<?php
						$ytube = get_theme_mod('ytube');
						$insta = get_theme_mod('insta');
						$tiktoc = get_theme_mod('tiktoc');
						$email = get_theme_mod('email');
					?>

					<a class="footer-social__item footer-social__item-email" href="mailto:<?php echo $email; ?>">
						<?php echo $email; ?>
					</a>
					<br>
					<a class="footer-social__item footer-social__item-ytube" href="<?php echo $ytube; ?>" target="_blank">
						<svg width="32" height="23" viewBox="0 0 32 23" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M18.75 11.3999L13.5 14.3999V8.3999L18.75 11.3999Z" fill="white" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M0.75 12.462V10.338C0.75 5.9955 0.75 3.8235 2.1075 2.427C3.4665 1.029 5.6055 0.969 9.882 0.8475C11.907 0.7905 13.977 0.75 15.75 0.75C17.523 0.75 19.5915 0.7905 21.618 0.8475C25.8945 0.969 28.0335 1.029 29.391 2.427C30.7485 3.825 30.75 5.997 30.75 10.338V12.4605C30.75 16.8045 30.75 18.975 29.3925 20.373C28.0335 21.7695 25.896 21.831 21.618 21.951C19.593 22.0095 17.523 22.05 15.75 22.05C13.977 22.05 11.9085 22.0095 9.882 21.951C5.6055 21.831 3.4665 21.771 2.1075 20.373C0.7485 18.975 0.75 16.803 0.75 12.462Z" stroke="white" stroke-width="1.5"/>
						</svg>
					</a>

					<a class="footer-social__item footer-social__item-tiktoc" href="<?php echo $tiktoc; ?>" target="_blank">
						<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M30.75 9.08333V22.4167C30.75 24.6268 29.872 26.7464 28.3092 28.3092C26.7464 29.872 24.6268 30.75 22.4167 30.75H9.08333C6.8732 30.75 4.75358 29.872 3.19078 28.3092C1.62797 26.7464 0.75 24.6268 0.75 22.4167V9.08333C0.75 6.8732 1.62797 4.75358 3.19078 3.19078C4.75358 1.62797 6.8732 0.75 9.08333 0.75H22.4167C24.6268 0.75 26.7464 1.62797 28.3092 3.19078C29.872 4.75358 30.75 6.8732 30.75 9.08333Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M12.416 15.75C11.4271 15.75 10.4604 16.0432 9.63817 16.5927C8.81592 17.1421 8.17506 17.923 7.79662 18.8366C7.41818 19.7502 7.31917 20.7555 7.51209 21.7255C7.70502 22.6954 8.18122 23.5863 8.88048 24.2855C9.57975 24.9848 10.4707 25.461 11.4406 25.6539C12.4105 25.8469 13.4158 25.7478 14.3294 25.3694C15.2431 24.991 16.024 24.3501 16.5734 23.5279C17.1228 22.7056 17.416 21.7389 17.416 20.75V5.75C17.971 7.41667 20.0827 10.75 24.0827 10.75" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>

					</a>
					
					<a class="footer-social__item footer-social__item-insta" href="<?php echo $insta; ?>" target="_blank" >
						<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M15 20C16.3261 20 17.5979 19.4732 18.5355 18.5355C19.4732 17.5979 20 16.3261 20 15C20 13.6739 19.4732 12.4021 18.5355 11.4645C17.5979 10.5268 16.3261 10 15 10C13.6739 10 12.4021 10.5268 11.4645 11.4645C10.5268 12.4021 10 13.6739 10 15C10 16.3261 10.5268 17.5979 11.4645 18.5355C12.4021 19.4732 13.6739 20 15 20Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M3.75 20V10C3.75 8.3424 4.40848 6.75269 5.58058 5.58058C6.75269 4.40848 8.3424 3.75 10 3.75H20C21.6576 3.75 23.2473 4.40848 24.4194 5.58058C25.5915 6.75269 26.25 8.3424 26.25 10V20C26.25 21.6576 25.5915 23.2473 24.4194 24.4194C23.2473 25.5915 21.6576 26.25 20 26.25H10C8.3424 26.25 6.75269 25.5915 5.58058 24.4194C4.40848 23.2473 3.75 21.6576 3.75 20Z" stroke="white" stroke-width="1.5"/>
							<path d="M21.875 8.13912L21.8892 8.12354" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="copy">
		<p class="copy__text">
			<?php
				echo pll__('footer__copyright');
			?>
		</p>
	</div>

</footer>
</div> 
</div>

<?php wp_footer(); ?>


</body>

</html>