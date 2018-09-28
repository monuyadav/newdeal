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
define('DB_NAME', 'smart-commerce');

/** MySQL database username */
define('DB_USER', 'phpmyadmin');

/** MySQL database password */
define('DB_PASSWORD', 'Welcome12#');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Js3xYo?{@mFBXiF1Q9@JBn8NzN/8y;UUd#p&uErYB|u3EfCJHVtQfFk44S{MN-yK');
define('SECURE_AUTH_KEY',  'PPvR}+}LRc%c,7nvW,jrtM7 _zbuY[CgRO* g[Cn0>h(+ mJb45u3mv55rr;lGs1');
define('LOGGED_IN_KEY',    'FTBR:Ed@{%Rt[6JnJ,u>Os540,Fw=q)@7>).c>%;lojP|Nf.G]/TdGg!Uf4a{m^#');
define('NONCE_KEY',        '@.jn `$q~vj/<oj+^?h Rn52Y~n_g9K+W{q:`;0}mMlz5Js*jsFf()I4D#~$TVR7');
define('AUTH_SALT',        'nh&1T1xAL1W3+uV$O[GSHSwnIfC~s`UsKWD=oI{N3m:|v-}-Tfeg-tl&9.s(9!d$');
define('SECURE_AUTH_SALT', 'p8/_m!M5&Ba3eL9Q?zeWwh;46>Vi {EC,@Vz-42W7]aJ<p];&9U NPN)#[_*g&FG');
define('LOGGED_IN_SALT',   'pl5&ws-ox|M2;Xp&VW[Q#poNGqqF1e,r@jSt5 ZKseaytk`*-3j#kj-?v.rZ-9r$');
define('NONCE_SALT',       'NlF%G*^VG}:>{A8DWZwQvwBO[eqT[qwklhR9.<Mr]%N:0(>:.XVAH1CoAP4Ij>Ra');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'tbl_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
