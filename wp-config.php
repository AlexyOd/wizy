<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'WPCACHEHOME', 'C:\OSPanel\domains\loc.wizy\wp-content\plugins\wp-super-cache/' );
define( 'DB_NAME', 'wizy' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', '' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );
// раскоментировать 
define('WP_CACHE', true);

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'eg>XH]Z/Yt#&6vED|*]Pj@ofm?ET]2hY,;jffn)nPUQx-pkUfr7,^X1uKGv`dexq' );
define( 'SECURE_AUTH_KEY',  'tbz  fX @9<SBoB<BZu-9$A>G]C}jucl%QH=H;IH`.b).wq=.zo^#/^yyA:SaGSu' );
define( 'LOGGED_IN_KEY',    '&uE4x^?2jI(WQU!| XbgRrsHv Zg;P$[R8GShh ?<$yRc@f.8#.<XBporl Ch_9c' );
define( 'NONCE_KEY',        'eOP=7xyJ)u__dByB(+ark20;-gi6sfh`Bssllr1w</0<{<pDUH5&5tS)l/E]G=f(' );
define( 'AUTH_SALT',        ';s0{SN@URdsSR/g&>s~?i7R7WZmr;75gO#WZ1rr)!Y ,s, CgjNcr/nBeC!lK^0^' );
define( 'SECURE_AUTH_SALT', 'y#EO_~QO@DF@io++k-flXUgK9v?a/Opj>lQ:uj.=Yz.ClB[9D$}#hTL>OU@vnbYi' );
define( 'LOGGED_IN_SALT',   'H.(G90ebo4,zGTtFj,E)-~JZJo:%rG;b&dA+`Xd&U1D0b9_Ad7<*:i?Q+ 1N6X~w' );
define( 'NONCE_SALT',       'yXMQk:y3;4.L&5tINOy=vi}I{/#Kv@`E*fWSK@Ckl3fYuGK9_5Z<;e9@e8[F|w9M' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
//define( 'WP_DEBUG', false );
// error_reporting(E_ALL); // включаем вывод ошибок
// ini_set('display_errors', 1); // включаем вывод ошибок на экран
// define('WP_DEBUG', true);
// define('WP_DEBUG_DISPLAY', true);

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}


/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
