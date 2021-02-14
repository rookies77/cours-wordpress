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
define( 'DB_NAME', 'wordpress' );

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
define( 'AUTH_KEY',         '~xJKaM8KZqzho io$Ri>v)[!E<B:B8$)E=?=,G<G_SVDAq7SB<4sg`pgFB[Q|-4n' );
define( 'SECURE_AUTH_KEY',  'CKuj4x@zpyu#umwOTY]<w[Ed5_z9i]|{71$pJy$cS.USPk E[4-&,plHBkoYI= (' );
define( 'LOGGED_IN_KEY',    'g&6&5H,q-a$.LCu,1@q*kZ9;1sR_0}_xnNiuSGEav~r,o|}*5yj6y}ya,u1OZk.v' );
define( 'NONCE_KEY',        ',2nQXM_vRcw8nbjoE&lGX!yR]/tCW-(!x+FALpOZup]i56|4Ju<+@@vbK}37+St>' );
define( 'AUTH_SALT',        'F#9&}VsfVI&#zfAF&CbGd#1Dc4|b2sm{ogIku)t_bOP=[kec@D4J+=r{~kW?/[Ba' );
define( 'SECURE_AUTH_SALT', '#027+XYa:<V|IScx+3YFz[pgbu!aAV)SaS[Pc)ANw+~.j*g_8-bn{eZ}l{F$o:y]' );
define( 'LOGGED_IN_SALT',   'WGG0d6_7|6a%+i`*C=G0;D01{WKtjkI9X=R2PG4PU=j2qB@qUaqs;E{rqPOR,pd1' );
define( 'NONCE_SALT',       'GjR;g//Z.Fq=X`[6&z+0/1?4+JE;M:wQW+i?LmS;E[<$RF//$ugYLW W8;p[&vUY' );
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
