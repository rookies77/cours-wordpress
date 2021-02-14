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
define( 'DB_NAME', 'woocommerce' );

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
define( 'AUTH_KEY',         ' w1l:31U>_`FCAtS>*Zg|owod(vKal4cK%(]yucl]r#hx(FeRc}lsxs23V6dv>{n' );
define( 'SECURE_AUTH_KEY',  'bZ~GP@?<|1!S$HYiHYm< :3)sYuBeV%&V4gT07-=FHsyP+3qqdHOy9uE@9.,eGdU' );
define( 'LOGGED_IN_KEY',    'n!4UYR$Jo_f8Vm8%K==Zq3|,e~yDy)`T:r=ndANuf7S~V^`5MTD9&Q^[^.Y<JR}s' );
define( 'NONCE_KEY',        'F|5M^;RjgNh=//n.:*fDpl3ZBilW#[OhCz7F!`Huy2GL&_2V25hlReD` VXqd^.#' );
define( 'AUTH_SALT',        'Iu*/a<CG,NMdjd;4JD}n25A,jX1y^bZcTQjRC<o>V/{=CF(7X*`O.2V_v`V:?Y|n' );
define( 'SECURE_AUTH_SALT', 'Xp>+ch~6CYJ)}ik|SnL*o]Dl*5<.=rJs7*Q`~dkE8s8 x3|,O4b`Q6]BpwNAQ>6`' );
define( 'LOGGED_IN_SALT',   '}`1J5jmRXJhB6Gy{u>Y^#E4L]S_kD1>N__)kW4GW~rL=n1~!w-v^L<q$pD[rK6A:' );
define( 'NONCE_SALT',       'eKrv-ls^BVmWnCRwK0-Yx<.+HoiVOoU2DfO/Wz1vf&pN;d<QfaKlnYNdMdANtMq]' );
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
