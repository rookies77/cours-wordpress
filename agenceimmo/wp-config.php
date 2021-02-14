<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'agenceimmo' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Yg}Sx*D4u&k0FWc{IKy3b_0Yu^8SG >i]#uTf@}]*i[QFQ$:F.&SeaA37sqE[**3' );
define( 'SECURE_AUTH_KEY',  'L?}-l9l*^iubDYwWk&Q)/}kjzGlo`3|_eew&R:ur<DoA1=M|Mj|a+@1S8j!rEtwt' );
define( 'LOGGED_IN_KEY',    'n/Q`xL*x[oK4GzRl ,b`h}HMaa[1kl%=~+((B(%cki?)_ZHujER1efVb5-[|2*Go' );
define( 'NONCE_KEY',        ':TOZR?8F TVv7I7yrAf=BBzK;#k`63*S~ctMl8;NISl(awtRa#+#L75%vvKA*IT}' );
define( 'AUTH_SALT',        '>r7w|0^5qvb QRypoP8LrcEy?gXeU$b?T/v!qC2:<8`U}~8:.E/&3R()|v~TB&dT' );
define( 'SECURE_AUTH_SALT', 'oF+_a~:tC]u40)Hy !LKOsJ4<%:,)4-dNH-aR`x)ee@4RY[g#_2{@~VLNsx3.[tu' );
define( 'LOGGED_IN_SALT',   'GH[mFca|3/eXL$5eS-aiW?4!zHW#~*S;,Y[YYQ(lVwUy+eW:o;cr/Wp?7zF`57)l' );
define( 'NONCE_SALT',       'xGilQK+B=A&,7D~(4=D4dynH`c72UX<p?2X4L8[7tmsJcQ1[J,oh{VQvv{]`xi i' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
