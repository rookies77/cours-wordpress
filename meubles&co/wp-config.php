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
define( 'DB_NAME', 'meubles&co' );

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
define( 'AUTH_KEY',         '7rX&Bk(MK4x@Lr2s:S]N.kRTuBs;EKTEC)r(.PTpXR5UFv(8$C91MnVq>HC,[h4z' );
define( 'SECURE_AUTH_KEY',  'EBE;n]Sth%+ft^6uI;2~aKRoQ~#D/KIG+60g}E1jvR_jx^_]?LcTif;%45kL~1re' );
define( 'LOGGED_IN_KEY',    'RI:g$Asl)S?3_bnQ9Zq/{2KyZA~N1J% ypAOT2)Umk-Ez~K^_vo[q&O@e_u+Gi[f' );
define( 'NONCE_KEY',        'fda@,(y1E}3+lj5+[-3MZE=X:}AoZx7Cj=oDp u#]jK|Xc>xCD5Oe!uydAx!v9},' );
define( 'AUTH_SALT',        'RLpq_lEF{|5fNukI3{0E(~|ZxH2jDuT=qb<vv}n|Otkk`ck~IW?,6gSiI1q}K(.V' );
define( 'SECURE_AUTH_SALT', ' >;Sy}C5:ic>`E(~2qD*&2Ai4=?+Re:0J$QX;3YbST{c_E-7-Au!*jwZ~<3F.Lv!' );
define( 'LOGGED_IN_SALT',   ',RohY2e~L4j#3~cehAnG_2eUsP`@x%Y8B=c#|;OTnTM51GpODHNXa;w#G#4(Ua=t' );
define( 'NONCE_SALT',       '5m=)9eGX<+DjInhDFEM;-Lf~q[>!UQm$r*R@x_/q1JW+ueZMynIc9]jC)+M_El t' );
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
