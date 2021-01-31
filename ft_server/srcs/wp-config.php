<?php
define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', 'root' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define('AUTH_KEY',         '0#H<h$gC|L;]YaZl>csXi^vAY$r%:><tq^A;HQmC MiL#qh6(u2,E<i8(R#26ne7');
define('SECURE_AUTH_KEY',  '2/bKQn#xuzMn99TtYeI>OHJGaSZ*OE#-$5}NF=uMX9jMgXaaRQzIoS$#_^)bulO]');
define('LOGGED_IN_KEY',    ' FI6F?C<PBSY*wv@*[P}J`K*g?{Uwqbx/P*l=S)~{-X=1bGB&|G4YNZ6|8^G|jFJ');
define('NONCE_KEY',        'ciy$,Lzy]5D$7?$_^zlOJ27S8A[2$,I-~^CUk.A-AU_ob2z.YX1Cl1YYlVxT#r5|');
define('AUTH_SALT',        'ja-qoQLO=+1+zlT-C6Kl6#!),+-`SdUCjnngRy=m:MPOfN-Kg&w4_N|}}bb9C0b+');
define('SECURE_AUTH_SALT', '5RZ&A:S6g[@%{aE#c$Qs@_92@Y2:y2`[)(%Fi1@1QzOy4$+LOIlb]XFzap.?~^1K');
define('LOGGED_IN_SALT',   'IOcyz^:kkDyLE42W_6z2uPN?j!0BN*!;.:.-Sj<C5&<(~DFlAdB4d|q+:bJ8y!.Z');
define('NONCE_SALT',       'l|1U~@<*l|:r-$~SJ>I__5reSL-?q|wcsMi@%XOyi_p4s9s7bd&1dyX>PUt(^I9]');
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';