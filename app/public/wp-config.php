<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Y5Do1eUFycyTrmGY1GU0iPDmOgqlpYExa5x7L5E3FXFnCepniHD1zuzvfsoSg8PxpKRPzrlGlz+ew8hGqp47+g==');
define('SECURE_AUTH_KEY',  'quzfd9IKpKsfamOrV3wdoDOVtde8YjFZrMxfNU50nXb25Ag1kbZD1rOgwe9NUmrtjjHmmKg37C1RFamv+azajA==');
define('LOGGED_IN_KEY',    'D46FyLAYnJmUxciFNFP3qqdMZJ2vW9TSQdPvAg7SLaug0Aig5qgn15lPBoLmZTvjalMYoNMi1W7BChAS3bL2Uw==');
define('NONCE_KEY',        'XWxF4WgYJina3PciyQpuP8JNlZ+63/Y1tYMacOWpbumCAjQsfZiCAaK/cz9O7WewGD/iIDxCb9xRO9XBwIJoGw==');
define('AUTH_SALT',        '3+DK8dFGolXOI3LLM1W4auCE6uNXVE6EJ4nvkTsFO7goxvn5XnMQ2oM6P2G5wDMwgcxgbNFYL9eQ4+mlkYmuxw==');
define('SECURE_AUTH_SALT', 'V895jR3hFCLunyoMwWknvEhRaf/9b5xDkcmBhSOEUaipRcdKh/0AAtLLKi5kXe/OJzHX5mRUUQSTDzI5Ahpc2A==');
define('LOGGED_IN_SALT',   'ajvMJSmMavraEV43MtURkvlecZUxc+p8nkimLjzTwSlkuJti7W26Ey0/pQ49dkh+Fe9sVliH6YxFeglWD/cpcw==');
define('NONCE_SALT',       'sa6fRVE+F/xRaGHzfeuKRBBqfG2N0yRM0YcmXLKPmLeXbRN3XmX0+KYx8CmHSgftkBa+Ii9TAq6G9ZZW2aFiew==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
