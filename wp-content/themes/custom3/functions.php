<?php
add_theme_support( 'post-thumbnails' ); // для всех типов постов
add_theme_support( 'html5', array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption' ) );

register_nav_menus();

// function remove_wp_version_param( $src ) {
//     if ( strpos( $src, 'ver=' ) )
//         $src = remove_query_arg( 'ver', $src );
//     return $src;
// }
// add_filter( 'style_loader_src', 'remove_wp_version_param', 10, 2 );
// add_filter( 'script_loader_src', 'remove_wp_version_param', 10, 2 );



add_action( 'template_redirect', function () {
	global $wpseo_og;

	if ( isset( $wpseo_og ) ) {
		remove_action( 'wpseo_opengraph', [ $wpseo_og, 'locale' ], 1 );
	}
}, 1000 );


add_action( 'wp_print_styles', 'wps_deregister_styles', 100 );
function wps_deregister_styles() {
	wp_deregister_style( 'contact-form-7' );
}



add_action( 'wp_footer', 'add_scripts' ); // приклеем ф-ю на добавление скриптов в футер
function add_scripts() {
	if ( is_admin() ) {
		return false;
	}
	//wp_enqueue_script( 'aos', get_template_directory_uri() . '/libs/aos/aos.js', '', '', true );
	wp_enqueue_script( 'main', get_template_directory_uri() . '/dist/js/common.js', '', '', true ); // и скрипты шаблона
}

add_action( 'wp_print_styles', 'add_styles' ); // приклеем ф-ю на добавление стилей в хедер
function add_styles() {
	if ( is_admin() ) {
		return false;
	}
	$version_css = filemtime( get_template_directory() . '/dist/css/main.css' );

	// wp_enqueue_style( 'aos', get_template_directory_uri() . '/libs/aos/aos.css' );
	// wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/dist/css/bootstrap-5.3.3/scss/bootstrap.css' );
	wp_enqueue_style( 'main', get_template_directory_uri() . '/dist/css/main.css', [], $version_css );
}

// changing excerpt length
add_filter( 'excerpt_length', function () {
	return 20;
} );


//Reordering inputs in comments section
add_filter( 'comment_form_fields', 'energy_reorder_comment_fields' );
function energy_reorder_comment_fields( $fields ) {

	$new_fields = array();

	$myorder = array( 'author', 'email', 'comment' );

	foreach ( $myorder as $key ) {
		$new_fields[ $key ] = $fields[ $key ];
		unset( $fields[ $key ] );
	}

	return $new_fields;
}

//Cancelling redirect after comment post
add_filter( 'comment_post_redirect', 'redirect_after_first_comment', 5, 2 );
function redirect_after_first_comment( $url, $comment ) {
	$comment_count = get_comments(
		array(
			'author_email' => $comment->comment_author_email,
			'count'        => true
		)
	);
	if ( $comment_count == 1 ) {
		wp_redirect( '/' ); /* Сюда подставляете URL своей страницы приветствия */
		exit();
	}

	return $url = get_comment_link();
}

//Use separate templates for posts with diff category via its name
add_filter( 'single_template', 'post_template' );
function post_template( $the_template ) {
	foreach ( (array) get_the_category() as $cat ) {
		if ( file_exists( TEMPLATEPATH . "/single-{$cat->slug}.php" ) ) {
			return TEMPLATEPATH . "/single-{$cat->slug}.php";
		}
	}

	return $the_template;
};

function add_excerpt_to_pages()
{
	add_post_type_support( 'page', 'excerpt' );
}
add_action('init', 'add_excerpt_to_pages');

//Register nav menus
add_action( 'after_setup_theme', function () {
	register_nav_menus( [
		'main'     => 'Меню в шапке',
		'footer'   => 'Меню в подвале',
	] );
} );

//old
pll_register_string( 'header', 'call-to-us' );
pll_register_string( 'form', 'error_req');
pll_register_string( 'form', 'error_phone');
pll_register_string( 'popup__error', 'error_title');
pll_register_string( 'popup__error', 'error_descr');
pll_register_string( 'popup__success', 'success_title');
pll_register_string( 'popup__success', 'success_descr');
pll_register_string( 'global', 'text-main');
//old eld

pll_register_string( 'footer', 'footer__text');
pll_register_string( 'footer', 'footer__copyright');
pll_register_string( 'footer', 'footer__menu_title');
pll_register_string( 'footer', 'footer__menu_title_contact');
pll_register_string( 'footer', 'footer__text_n');

function getPostViews( $postID ) {
	$count_key = 'post_views_count';
	$count     = get_post_meta( $postID, $count_key, true );
	if ( $count == '' ) {
		delete_post_meta( $postID, $count_key );
		add_post_meta( $postID, $count_key, '0' );

		return "0";
	}

	return $count;
}

function setPostViews( $postID ) {
	$count_key = 'post_views_count';
	$count     = get_post_meta( $postID, $count_key, true );
	if ( $count == '' ) {
		$count = 0;
		delete_post_meta( $postID, $count_key );
		add_post_meta( $postID, $count_key, '0' );
	} else {
		$count ++;
		update_post_meta( $postID, $count_key, $count );
	}
}


//Breadcrumbs
function dimox_breadcrumbs() {
	$text_home = pll__( 'text-main' );

	/* === OPTIONS === */
	$text['home']     = $text_home; // text for the 'Home' link
	$text['category'] = 'Archive by Category "%s"'; // text for a category page
	$text['search']   = 'Search Results for "%s" Query'; // text for a search results page
	$text['tag']      = 'Posts Tagged "%s"'; // text for a tag page
	$text['author']   = 'Articles Posted by %s'; // text for an author page
	$text['404']      = 'Error 404'; // text for the 404 page
	$text['page']     = 'Page %s'; // text 'Page N'
	$text['cpage']    = 'Comment Page %s'; // text 'Comment Page N'

	$wrap_before = '<ul class="breadcrumbs" itemscope itemtype="http://schema.org/BreadcrumbList">'; // the opening wrapper tag
	$wrap_after  = '</ul><!-- .breadcrumbs -->'; // the closing wrapper tag
	$sep         = '<span class="sep"> / </span>'; // separator between crumbs
	$before      = '<li class="breadcrumbs__item">'; // tag before the current crumb
	$after       = '</li>'; // tag after the current crumb

	$show_on_home   = 0; // 1 - show breadcrumbs on the homepage, 0 - don't show
	$show_home_link = 1; // 1 - show the 'Home' link, 0 - don't show
	$show_current   = 1; // 1 - show current page title, 0 - don't show
	$show_last_sep  = 1; // 1 - show last separator, when current page title is not displayed, 0 - don't show
	/* === END OF OPTIONS === */

	global $post;
	$home_url  = home_url( '/' );
	$link      = '<li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">';
	$link      .= '<a href="%1$s" itemprop="item"><span itemprop="name">%2$s</span></a>';
	$link      .= '<meta itemprop="position" content="%3$s" />';
	$link      .= '</li>';
	$parent_id = ( $post ) ? $post->post_parent : '';
	$home_link = sprintf( $link, $home_url, $text['home'], 1 );

	if ( is_home() || is_front_page() ) {

		if ( $show_on_home ) {
			echo $wrap_before . $home_link . $wrap_after;
		}

	} else {

		$position = 0;

		echo $wrap_before;

		if ( $show_home_link ) {
			$position += 1;
			echo $home_link;
		}

		if ( is_category() ) {
			$parents = get_ancestors( get_query_var( 'cat' ), 'category' );
			foreach ( array_reverse( $parents ) as $cat ) {
				$position += 1;
				if ( $position > 1 ) {
					echo $sep;
				}
				echo sprintf( $link, get_category_link( $cat ), get_cat_name( $cat ), $position );
			}
			if ( get_query_var( 'paged' ) ) {
				$position += 1;
				$cat      = get_query_var( 'cat' );
				echo $sep . sprintf( $link, get_category_link( $cat ), get_cat_name( $cat ), $position );
				echo $sep . $before . sprintf( $text['page'], get_query_var( 'paged' ) ) . $after;
			} else {
				if ( $show_current ) {
					if ( $position >= 1 ) {
						echo $sep;
					}
					echo $before . sprintf( $text['category'], single_cat_title( '', false ) ) . $after;
				} elseif ( $show_last_sep ) {
					echo $sep;
				}
			}

		} elseif ( is_search() ) {
			if ( get_query_var( 'paged' ) ) {
				$position += 1;
				if ( $show_home_link ) {
					echo $sep;
				}
				echo sprintf( $link, $home_url . '?s=' . get_search_query(), sprintf( $text['search'], get_search_query() ), $position );
				echo $sep . $before . sprintf( $text['page'], get_query_var( 'paged' ) ) . $after;
			} else {
				if ( $show_current ) {
					if ( $position >= 1 ) {
						echo $sep;
					}
					echo $before . sprintf( $text['search'], get_search_query() ) . $after;
				} elseif ( $show_last_sep ) {
					echo $sep;
				}
			}

		} elseif ( is_year() ) {
			if ( $show_home_link && $show_current ) {
				echo $sep;
			}
			if ( $show_current ) {
				echo $before . get_the_time( 'Y' ) . $after;
			} elseif ( $show_home_link && $show_last_sep ) {
				echo $sep;
			}

		} elseif ( is_month() ) {
			if ( $show_home_link ) {
				echo $sep;
			}
			$position += 1;
			echo sprintf( $link, get_year_link( get_the_time( 'Y' ) ), get_the_time( 'Y' ), $position );
			if ( $show_current ) {
				echo $sep . $before . get_the_time( 'F' ) . $after;
			} elseif ( $show_last_sep ) {
				echo $sep;
			}

		} elseif ( is_day() ) {
			if ( $show_home_link ) {
				echo $sep;
			}
			$position += 1;
			echo sprintf( $link, get_year_link( get_the_time( 'Y' ) ), get_the_time( 'Y' ), $position ) . $sep;
			$position += 1;
			echo sprintf( $link, get_month_link( get_the_time( 'Y' ), get_the_time( 'm' ) ), get_the_time( 'F' ), $position );
			if ( $show_current ) {
				echo $sep . $before . get_the_time( 'd' ) . $after;
			} elseif ( $show_last_sep ) {
				echo $sep;
			}

		} elseif ( is_single() && ! is_attachment() ) {
			if ( get_post_type() != 'post' ) {
				$position  += 1;
				$post_type = get_post_type_object( get_post_type() );
				if ( $position > 1 ) {
					echo $sep;
				}
				echo sprintf( $link, get_post_type_archive_link( $post_type->name ), $post_type->labels->name, $position );
				if ( $show_current ) {
					echo $sep . $before . get_the_title() . $after;
				} elseif ( $show_last_sep ) {
					echo $sep;
				}
			} else {
				$cat       = get_the_category();
				$catID     = $cat[0]->cat_ID;
				$parents   = get_ancestors( $catID, 'category' );
				$parents   = array_reverse( $parents );
				$parents[] = $catID;
				foreach ( $parents as $cat ) {
					$position += 1;
					if ( $position > 1 ) {
						echo $sep;
					}
					echo sprintf( $link, get_category_link( $cat ), get_cat_name( $cat ), $position );
				}
				if ( get_query_var( 'cpage' ) ) {
					$position += 1;
					echo $sep . sprintf( $link, get_permalink(), get_the_title(), $position );
					echo $sep . $before . sprintf( $text['cpage'], get_query_var( 'cpage' ) ) . $after;
				} else {
					if ( $show_current ) {
						echo $sep . $before . get_the_title() . $after;
					} elseif ( $show_last_sep ) {
						echo $sep;
					}
				}
			}

		} elseif ( is_post_type_archive() ) {
			$post_type = get_post_type_object( get_post_type() );
			if ( get_query_var( 'paged' ) ) {
				$position += 1;
				if ( $position > 1 ) {
					echo $sep;
				}
				echo sprintf( $link, get_post_type_archive_link( $post_type->name ), $post_type->label, $position );
				echo $sep . $before . sprintf( $text['page'], get_query_var( 'paged' ) ) . $after;
			} else {
				if ( $show_home_link && $show_current ) {
					echo $sep;
				}
				if ( $show_current ) {
					echo $before . $post_type->label . $after;
				} elseif ( $show_home_link && $show_last_sep ) {
					echo $sep;
				}
			}

		} elseif ( is_attachment() ) {
			$parent    = get_post( $parent_id );
			$cat       = get_the_category( $parent->ID );
			$catID     = $cat[0]->cat_ID;
			$parents   = get_ancestors( $catID, 'category' );
			$parents   = array_reverse( $parents );
			$parents[] = $catID;
			foreach ( $parents as $cat ) {
				$position += 1;
				if ( $position > 1 ) {
					echo $sep;
				}
				echo sprintf( $link, get_category_link( $cat ), get_cat_name( $cat ), $position );
			}
			$position += 1;
			echo $sep . sprintf( $link, get_permalink( $parent ), $parent->post_title, $position );
			if ( $show_current ) {
				echo $sep . $before . get_the_title() . $after;
			} elseif ( $show_last_sep ) {
				echo $sep;
			}

		} elseif ( is_page() && ! $parent_id ) {
			if ( $show_home_link && $show_current ) {
				echo $sep;
			}
			if ( $show_current ) {
				echo $before . get_the_title() . $after;
			} elseif ( $show_home_link && $show_last_sep ) {
				echo $sep;
			}

		} elseif ( is_page() && $parent_id ) {
			$parents = get_post_ancestors( get_the_ID() );
			foreach ( array_reverse( $parents ) as $pageID ) {
				$position += 1;
				if ( $position > 1 ) {
					echo $sep;
				}
				echo sprintf( $link, get_page_link( $pageID ), get_the_title( $pageID ), $position );
			}
			if ( $show_current ) {
				echo $sep . $before . get_the_title() . $after;
			} elseif ( $show_last_sep ) {
				echo $sep;
			}

		} elseif ( is_tag() ) {
			if ( get_query_var( 'paged' ) ) {
				$position += 1;
				$tagID    = get_query_var( 'tag_id' );
				echo $sep . sprintf( $link, get_tag_link( $tagID ), single_tag_title( '', false ), $position );
				echo $sep . $before . sprintf( $text['page'], get_query_var( 'paged' ) ) . $after;
			} else {
				if ( $show_home_link && $show_current ) {
					echo $sep;
				}
				if ( $show_current ) {
					echo $before . sprintf( $text['tag'], single_tag_title( '', false ) ) . $after;
				} elseif ( $show_home_link && $show_last_sep ) {
					echo $sep;
				}
			}

		} elseif ( is_author() ) {
			$author = get_userdata( get_query_var( 'author' ) );
			if ( get_query_var( 'paged' ) ) {
				$position += 1;
				echo $sep . sprintf( $link, get_author_posts_url( $author->ID ), sprintf( $text['author'], $author->display_name ), $position );
				echo $sep . $before . sprintf( $text['page'], get_query_var( 'paged' ) ) . $after;
			} else {
				if ( $show_home_link && $show_current ) {
					echo $sep;
				}
				if ( $show_current ) {
					echo $before . sprintf( $text['author'], $author->display_name ) . $after;
				} elseif ( $show_home_link && $show_last_sep ) {
					echo $sep;
				}
			}

		} elseif ( is_404() ) {
			if ( $show_home_link && $show_current ) {
				echo $sep;
			}
			if ( $show_current ) {
				echo $before . $text['404'] . $after;
			} elseif ( $show_last_sep ) {
				echo $sep;
			}

		} elseif ( has_post_format() && ! is_singular() ) {
			if ( $show_home_link && $show_current ) {
				echo $sep;
			}
			echo get_post_format_string( get_post_format() );
		}

		echo $wrap_after;

	}
}

//custom function
function add_customizer_setting_and_control($customizer, $setting_id, $label, $section, $default = '#', $type = 'text') {
    // Добавляем настройку
    $customizer->add_setting(
        $setting_id,
        array( 'default' => $default )
    );

    // Добавляем контроль
    $customizer->add_control(
        $setting_id,
        array(
            'label'   => $label,
            'section' => $section,
            'type'    => $type,
        )
    );
}


//Customizer
add_action( 'customize_register', function ( $customizer ) {

    // Секция "Контактные данные"
    $customizer->add_section(
        'contacts',
        array(
            'title'    => 'Контактные данные',
            'priority' => 11,
        )
    );

	// // Подменю "Связатся с нами"
	// $customizer->add_setting(
	// 	'contact_to_us',
	// 	array(
	// 		'default'           => '',
	// 		'sanitize_callback' => '__return_false',
	// 	)
	// );
	// $customizer->add_control(
	// 	new WP_Customize_Control(
	// 		$customizer,
	// 		'contact_to_us',
	// 		array(
	// 			'label'    => __( 'Связатся с нами', 'theme_textdomain' ),
	// 			'section'  => 'contacts',
	// 			'settings' => 'contact_to_us',
	// 			'type'     => 'hidden',
	// 		)
	// 	)
	// );

	// // Настройки и контроли для "Связатся с нами"
	// add_customizer_setting_and_control($customizer, 'phone', 'Телефон', 'contacts');

    // Подменю "Адрес"
    $customizer->add_setting(
        'contact_heading',
        array(
            'default'           => '',
            'sanitize_callback' => '__return_false',
        )
    );
    $customizer->add_control(
        new WP_Customize_Control(
            $customizer,
            'contact_heading',
            array(
                'label'    => __( 'АДРЕС', 'theme_textdomain' ),
                'section'  => 'contacts',
                'settings' => 'contact_heading',
                'type'     => 'hidden',
            )
        )
    );

    // Настройки и контроли для "Адрес"
    add_customizer_setting_and_control($customizer, 'contact-icon', 'Иконка', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-label', 'Лейбл', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-value', 'Адресс', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-href', 'Ссылка на гугл картах', 'contacts');

    add_customizer_setting_and_control($customizer, 'contact-add-1-value', 'Адресс', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-add-1-href', 'Ссылка на гугл картах', 'contacts');
	
	add_customizer_setting_and_control($customizer, 'contact-add-2-value', 'Адресс', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-add-2-href', 'Ссылка на гугл картах', 'contacts');

    // Подменю "Телефон"
    $customizer->add_setting(
        'contact_1_heading',
        array(
            'default'           => '',
            'sanitize_callback' => '__return_false',
        )
    );
    $customizer->add_control(
        new WP_Customize_Control(
            $customizer,
            'contact_1_heading',
            array(
                'label'    => __( 'ТЕЛЕФОН', 'theme_textdomain' ),
                'section'  => 'contacts',
                'settings' => 'contact_1_heading',
                'type'     => 'hidden',
            )
        )
    );

    // Настройки и контроли для "Телефон"
    add_customizer_setting_and_control($customizer, 'contact-1-icon', 'Иконка', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-1-label', 'Лейбл', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-1-value', 'Значение', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-1-href', 'Ссылка', 'contacts');

    // Подменю "Email"
    $customizer->add_setting(
        'contact_2_heading',
        array(
            'default'           => '',
            'sanitize_callback' => '__return_false',
        )
    );
    $customizer->add_control(
        new WP_Customize_Control(
            $customizer,
            'contact_2_heading',
            array(
                'label'    => __( 'Email', 'theme_textdomain' ),
                'section'  => 'contacts',
                'settings' => 'contact_2_heading',
                'type'     => 'hidden',
            )
        )
    );

    // Настройки и контроли для "Ссылка"
    add_customizer_setting_and_control($customizer, 'contact-2-icon', 'Иконка', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-2-label', 'Лейбл', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-2-value', 'Значение', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-2-href', 'Ссылка', 'contacts');

	  // Подменю "Время работы"
    $customizer->add_setting(
        'contact_3_heading',
        array(
            'default'           => '',
            'sanitize_callback' => '__return_false',
        )
    );
    $customizer->add_control(
        new WP_Customize_Control(
            $customizer,
            'contact_3_heading',
            array(
                'label'    => __( 'Время работы', 'theme_textdomain' ),
                'section'  => 'contacts',
                'settings' => 'contact_3_heading',
                'type'     => 'hidden',
            )
        )
    );

    // Настройки и контроли для "Время работы"
    add_customizer_setting_and_control($customizer, 'contact-3-icon', 'Иконка', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-3-label', 'Лейбл', 'contacts');
    add_customizer_setting_and_control($customizer, 'contact-3-value', 'Значение Пн-Пт', 'contacts');
	add_customizer_setting_and_control($customizer, 'contact-3-value-2', 'Значение Сб-Вс', 'contacts');

	

	
    // Секция "Контактные данные"
    $customizer->add_section(
        'socials',
        array(
            'title'    => 'Соцсети',
            'priority' => 10,
        )
    );

	$customizer->add_setting(
        'telega',
        array(
            'default'           => '',
            'sanitize_callback' => '__return_false',
        )
    );

    // Настройки и контроли для "Ссылка"
	add_customizer_setting_and_control($customizer, 'telegram', 'Телtelegramеграмм', 'socials');
	add_customizer_setting_and_control($customizer, 'watsapp', 'Watsapp', 'socials');
	add_customizer_setting_and_control($customizer, 'viber', 'Viber', 'socials');
} );


/**
 * Альтернатива wp_pagenavi. Создает ссылки пагинации на страницах архивов.
 *
 * @param string $before - текст до навигации
 * @param string $after - текст после навигации
 * @param bool $echo - возвращать или выводить результат
 * @param array $args - аргументы функции
 * @param array $wp_query - объект WP_Query на основе которого строится пагинация. По умолчанию глобальная переменная $wp_query
*/
function kama_pagenavi( $before = '', $after = '', $echo = true, $args = array(), $wp_query = null ) {
	if ( ! $wp_query ) {
		global $wp_query;
	}

	if (pll_current_language('slug') === 'ru') {
		$svg_next = '<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path d="M24.7071 8.70711C25.0976 8.31658 25.0976 7.68342 24.7071 7.29289L18.3431 0.928932C17.9526 0.538408 17.3195 0.538408 16.9289 0.928932C16.5384 1.31946 16.5384 1.95262 16.9289 2.34315L22.5858 8L16.9289 13.6569C16.5384 14.0474 16.5384 14.6805 16.9289 15.0711C17.3195 15.4616 17.9526 15.4616 18.3431 15.0711L24.7071 8.70711ZM0 9H24V7H0V9Z" >
		</svg>
		';
		$svg_pref = '<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path d="M0.292892 7.29289C-0.0976315 7.68342 -0.0976315 8.31658 0.292892 8.70711L6.65685 15.0711C7.04738 15.4616 7.68054 15.4616 8.07107 15.0711C8.46159 14.6805 8.46159 14.0474 8.07107 13.6569L2.41421 8L8.07107 2.34315C8.46159 1.95262 8.46159 1.31946 8.07107 0.928932C7.68054 0.538408 7.04738 0.538408 6.65685 0.928932L0.292892 7.29289ZM25 7H1V9H25V7Z" />
		</svg>
		';
		$default_args = array(
			'text_num_page'   => '',
			'num_pages'       => 10,
			'step_link'       => 10,
			'dotright_text'   => '…',
			'dotright_text2'  => '…',
			'back_text'       => $svg_pref,
			'next_text'       => $svg_next,
			'first_page_text' => 'К началу',
			'last_page_text'  => 'В конец »',
		);
	} else {
		$default_args = array(
			'text_num_page'   => '',
			'num_pages'       => 10,
			'step_link'       => 10,
			'dotright_text'   => '…',
			'dotright_text2'  => '…',
			'back_text'       => $svg_pref,
			'next_text'       => $svg_next,
			'first_page_text' => 'Beginning',
			'last_page_text'  => 'End',
		);
	}



	$default_args = apply_filters( 'kama_pagenavi_args', $default_args ); // чтобы можно было установить свои значения по умолчанию

	$args = array_merge( $default_args, $args );

	extract( $args );

	$posts_per_page = (int) $wp_query->query_vars['posts_per_page'];
	$paged          = (int) $wp_query->query_vars['paged'];
	$max_page       = $wp_query->max_num_pages;

	//проверка на надобность в навигации
	if ( $max_page <= 1 ) {
		return false;
	}

	if ( empty( $paged ) || $paged == 0 ) {
		$paged = 1;
	}

	$pages_to_show         = intval( $num_pages );
	$pages_to_show_minus_1 = $pages_to_show - 1;

	$half_page_start = floor( $pages_to_show_minus_1 / 2 ); //сколько ссылок до текущей страницы
	$half_page_end   = ceil( $pages_to_show_minus_1 / 2 ); //сколько ссылок после текущей страницы

	$start_page = $paged - $half_page_start; //первая страница
	$end_page   = $paged + $half_page_end; //последняя страница (условно)

	if ( $start_page <= 0 ) {
		$start_page = 1;
	}
	if ( ( $end_page - $start_page ) != $pages_to_show_minus_1 ) {
		$end_page = $start_page + $pages_to_show_minus_1;
	}
	if ( $end_page > $max_page ) {
		$start_page = $max_page - $pages_to_show_minus_1;
		$end_page   = (int) $max_page;
	}

	if ( $start_page <= 0 ) {
		$start_page = 1;
	}

	//выводим навигацию
	$out = '';

	// создаем базу чтобы вызвать get_pagenum_link один раз
	$link_base = str_replace( 99999999, '___', get_pagenum_link( 99999999 ) );
	$first_url = get_pagenum_link( 1 );
	if ( false === strpos( $first_url, '?' ) ) {
		$first_url = user_trailingslashit( $first_url );
	}

	$out .= $before . "<div class='pagination__inner'>\n";

	if ( $text_num_page ) {
		$text_num_page = preg_replace( '!{current}|{last}!', '%s', $text_num_page );
		$out           .= sprintf( "<span class='pages'>$text_num_page</span> ", $paged, $max_page );
	}
	// назад
	if ( $back_text && $paged != 1 ) {
		$out .= '<a class="prev" href="' . ( ( $paged - 1 ) == 1 ? $first_url : str_replace( '___', ( $paged - 1 ), $link_base ) ) . '">' . $back_text . '</a> ';
	}
	// в начало
	if ( $start_page >= 2 && $pages_to_show < $max_page ) {
		$out .= '<a class="first" href="' . $first_url . '">' . ( $first_page_text ? $first_page_text : 1 ) . '</a> ';
		if ( $dotright_text && $start_page != 2 ) {
			$out .= '<span class="extend">' . $dotright_text . '</span> ';
		}
	}
	// пагинация
	for ( $i = $start_page; $i <= $end_page; $i ++ ) {
		if ( $i == $paged ) {
			$out .= '<span class="pagination__current">' . $i . '</span> ';
		} elseif ( $i == 1 ) {
			$out .= '<a href="' . $first_url . '">1</a> ';
		} else {
			$out .= '<a href="' . str_replace( '___', $i, $link_base ) . '">' . $i . '</a> ';
		}
	}

	//ссылки с шагом
	$dd = 0;
	if ( $step_link && $end_page < $max_page ) {
		for ( $i = $end_page + 1; $i <= $max_page; $i ++ ) {
			if ( $i % $step_link == 0 && $i !== $num_pages ) {
				if ( ++ $dd == 1 ) {
					$out .= '<span class="extend">' . $dotright_text2 . '</span> ';
				}
				$out .= '<a href="' . str_replace( '___', $i, $link_base ) . '">' . $i . '</a> ';
			}
		}
	}
	// в конец
	if ( $end_page < $max_page ) {
		if ( $dotright_text && $end_page != ( $max_page - 1 ) ) {
			$out .= '<span class="extend">' . $dotright_text2 . '</span> ';
		}
		$out .= '<a class="last" href="' . str_replace( '___', $max_page, $link_base ) . '">' . ( $last_page_text ? $last_page_text : $max_page ) . '</a> ';
	}
	// вперед
	if ( $next_text && $paged != $end_page ) {
		$out .= '<a class="next" href="' . str_replace( '___', ( $paged + 1 ), $link_base ) . '">' . $next_text . '</a> ';
	}

	$out .= "</div>" . $after . "\n";

	$out = apply_filters( 'kama_pagenavi', $out );

	if ( $echo ) {
		return print $out;
	}

	return $out;
}
