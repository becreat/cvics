<?php
define('WP_AUTO_UPDATE_CORE', 'minor');// This setting is required to make sure that WordPress updates can be properly managed in WordPress Toolkit. Remove this line if this WordPress website is not managed by WordPress Toolkit anymore.
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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'cvics_wpp' );

/** MySQL database username */
define( 'DB_USER', 'cvics_wpuu' );

/** MySQL database password */
define( 'DB_PASSWORD', 'GdVMgw2BIMNR' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'GQB~3mG.QaQ=Qf8+A83zu`,4qsRaigZM[,1}~W?qF_Wl^RTqrX9Dd[d6`xE~`hPq' );
define( 'SECURE_AUTH_KEY',  'imeeL7z&|S]6`E`g![]OXx+VR#z=g@K)vV,+k%K&hY[KA.N0__%VtuUb|*}>UFq3' );
define( 'LOGGED_IN_KEY',    'F,@?L7N2.MLK!eUuV^qn.]QC~*8m|)oB].#Uv)N+iT2MT:__gpKVL:a0jLu>]!].' );
define( 'NONCE_KEY',        ':d/J=iuF6hNQdFx`JUQ6f_N~k^s+42^YDxcoRlT.:pq|ZzBs;}MdD`X}ln#bc{M}' );
define( 'AUTH_SALT',        '= %z^BuAN6di^!F7eW>MB d-Tn| 9UlivO5PB^X%UTvWis)Q}Ih*QFgV>P6}zD?y' );
define( 'SECURE_AUTH_SALT', '8~Ho}`HLZxqD7(Ieox=G*6h`,ltK2nmUtzh6P27*H%lMO5nG//X56p:LIyBaxKBI' );
define( 'LOGGED_IN_SALT',   'WCQ8h[`pRT]V*!Jmn@=lP,~1eZAU PDnTz7S?FWdiu$FhjP@b;}J}pQ^UWiN+)~K' );
define( 'NONCE_SALT',       'YXv9su&KJ%AUv3(eO`5$?[lu<&(T6<Cf=4%$w:Ou?O*I.J/5.B`|,f-<s?F;guHN' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
