<?php
/**
 * The Template for displaying all single products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

get_header( 'shop' ); ?>

	<?php
		/**
		 * woocommerce_before_main_content hook. //
		 *
		 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content) // Affiche les <div> d'ouverturedu contenu
		 * @hooked woocommerce_breadcrumb - 20 // Affiche le fil d'ariane
		 */
		do_action( 'woocommerce_before_main_content' );
	?>

		<?php while ( have_posts() ) : the_post(); ?>

			<?php wc_get_template_part( 'content', 'single-product' ); ?> <!-- // On fait ici l'inclusion du fichier /woocommerce/content-single-produit.php qui contient tout le code d'affichage du détails d'un produit -->

		<?php endwhile; // end of the loop. ?>

	<?php
		/**
		 * woocommerce_after_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content) //Affiche les </div> de fermeture du contenu
		 */
		do_action( 'woocommerce_after_main_content' );
	?>

	<?php
		/**
		 * woocommerce_sidebar hook.
		 *
		 * @hooked woocommerce_get_sidebar - 10 // Fait l'inclusion du fichier side-bar-shop.php s'il existe, sinon du fichier sidebar.php
		 */
		// do_action( 'woocommerce_sidebar' );
	?>

<?php get_footer( 'shop' );  // Inclusion du fichier footer-shop.php s'il existe sinon de footer.php

/* Omit closing PHP tag at the end of PHP files to avoid "headers already sent" issues. */
