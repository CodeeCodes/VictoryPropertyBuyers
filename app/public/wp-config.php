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
define('AUTH_KEY',         'K6HxpW3ikLzNwTeRlTov3ra+mcH35IsVoP/vCLNTRIvO3WQVZ7h2/PNhbwz4IkGBRgwnkeB4Zwphh19bmcuxBA==');
define('SECURE_AUTH_KEY',  '0z2ZYHxF1LgAqYsqfE8eW3ZAvIHYRush3HVQMjy+kD8HweTHyn4090VlQQ69L6ysojZMKIifyiUA0zju4ai1zw==');
define('LOGGED_IN_KEY',    'LRPFT6joNdT0OnET5isMrIExoMK/iSOOpACIXLu9VEusxxWToh5BwdBw1O0nDcdpRSSefvombEzUzHb1FRYM1Q==');
define('NONCE_KEY',        'p2TV9nFrA9nzdihdNwAPDcyssQ5WRtRnfdSxOFNGdxkssSvPNFqxpsh1A3rHMc89o1t8/758GJEH2QA+7Gqm7A==');
define('AUTH_SALT',        'tPqXQudP6S9zAw26EEt6FxX9kt55Kb6uUXei5MayHNWAi9pbO77B1O23HGVXauDoYRtKDw5gFgpiRkHuvgn/gA==');
define('SECURE_AUTH_SALT', '5urqwzLw0pCJQ+BqJk6BF887683Uy3IbbVKwgFlLjvL9BmTh5aVItXxHFArA6XglaG+ahuD5p3l61Qgj4nebRw==');
define('LOGGED_IN_SALT',   'M5flW4+VI2HIElSeRO6m7oNwS2Y2aHgAZ6FRACFzOhZ4ghMYglYURejyfHhP7gFnH1LfRZIG46MalKLiV2Z3oA==');
define('NONCE_SALT',       'UjNWtqGED66Z2MbHfnwPqlWDwk1CO3n9xsh79e2S5uNwl/tDsiVVGeSeq9K7tqBGYQyWukP3d+tubmYpRfohBQ==');

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
