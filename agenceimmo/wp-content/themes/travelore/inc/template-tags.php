<?php
/**
 * Custom Travelore template tags
 *
 * Eventually, some of the functionality here could be replaced by core features.
 *
 * @package Travelore
 */

if ( ! function_exists( 'travelore_entry_meta' ) ) :
	/**
	 * Prints HTML with meta information for the categories, tags.
	 *
	 * Create your own travelore_entry_meta() function to override in a child theme.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_entry_meta() {
		if ( in_array( get_post_type(), array( 'post', 'attachment' ) ) ) {
			travelore_entry_posted_on();
		}

		$format = get_post_format();
		if ( current_theme_supports( 'post-formats', $format ) ) {
			printf( '<span class="entry-format">%1$s<a href="%2$s">%3$s</a></span>',
				sprintf( '<span class="screen-reader-text">%s </span>', _x( 'Format', 'Used before post format.', 'travelore' ) ),
				esc_url( get_post_format_link( $format ) ),
				get_post_format_string( $format )
			);
		}

		if ( 'post' === get_post_type() ) {
			travelore_entry_taxonomies();
		}

		if ( ! is_singular() && ! post_password_required() && ( comments_open() || get_comments_number() ) ) {
			echo '<span class="comments-link">'  . travelore_get_svg( array( 'icon' => 'comment' ) );
			comments_popup_link( sprintf( __( 'Leave a comment<span class="screen-reader-text"> on %s</span>', 'travelore' ), get_the_title() ) );
			echo '</span>';
		}
	}
endif;

if ( ! function_exists( 'travelore_entry_posted_on' ) ) :
	/**
	 * Prints HTML with date information for current post.
	 *
	 * Create your own travelore_entry_posted_on() function to override in a child theme.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_entry_posted_on() {
		$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';

		if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
			$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
		}

		$time_string = sprintf( $time_string,
			esc_attr( get_the_date( 'c' ) ),
			get_the_date(),
			esc_attr( get_the_modified_date( 'c' ) ),
			get_the_modified_date()
		);

		printf( '<span class="posted-on">Posted on '  . '<span class="date-label screen-reader-text">%1$s</span><a href="%2$s" rel="bookmark">%3$s</a></span>',
			_x( 'Posted on', 'Used before publish date.', 'travelore' ),
			esc_url( get_permalink() ),
			$time_string
		);
	}
endif;

if ( ! function_exists( 'travelore_entry_taxonomies' ) ) :
	/**
	 * Prints HTML with category and tags for current post.
	 *
	 * Create your own travelore_entry_taxonomies() function to override in a child theme.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_entry_taxonomies() {
		travelore_entry_category();

		travelore_entry_tags();
	}
endif;

if ( ! function_exists( 'travelore_entry_category_date' ) ) :
	/**
	 * Prints HTML with category and tags for current post.
	 *
	 * Create your own travelore_entry_category_date() function to override in a child theme.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_entry_category_date() {
		echo '<div class="entry-meta">';

		travelore_entry_category();

		travelore_entry_posted_on();

		echo '</div><!-- .entry-meta -->';
	}
endif;

if ( ! function_exists( 'travelore_entry_header' ) ) :
	/**
	 * Prints HTML with meta information for the date and author
	 *
	 * Create your own travelore_entry_header() function to override in a child theme.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_entry_header() {
		echo '<div class="entry-meta">';

		travelore_entry_posted_on();

		// Get the author name; wrap it in a link.
		printf(
			/* translators: %s: post author */
			__( '<span class="byline">By <span class="author-label"></span>%s', 'travelore' ),
			'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . get_the_author() . '</a></span></span>'
		);


		echo '</div><!-- .entry-meta -->';
	}
endif;

if ( ! function_exists( 'travelore_entry_category' ) ) :
	/**
	 * Prints HTML with category for current post.
	 */
	function travelore_entry_category() {
		$portfolio_categories_list = get_the_term_list( get_the_ID(), 'jetpack-portfolio-type', '<span class="portfolio-entry-meta entry-meta">', esc_html_x( ', ', 'Used between list items, there is a space after the comma.', 'travelore' ), '</span>' );

		if ( 'jetpack-portfolio' === get_post_type() ) {
			printf( '<span class="cat-links">' . '<span class="cat-label screen-reader-text">%1$s</span>%2$s</span>',
				sprintf( _x( 'Categories', 'Used before category names.', 'travelore' ) ),
				$portfolio_categories_list
			);
		}

		$categories_infiltered_list = get_the_category();

		if ( $categories_infiltered_list && travelore_categorized_blog( ) ) {
			$categories_list = array();
			foreach ( $categories_infiltered_list as $category ) {
				$cat_id = $category->term_id;
				$term_meta = get_option( "taxonomy_$cat_id" );

				if ( ( isset( $term_meta['color'] ) && '#ffffff' !== $term_meta['color'] ) || ( isset( $term_meta['bg_color'] ) && '#47CF73' !== $term_meta['bg_color'] ) ) {
					$categories_list[] = '<a style="background-color:' . esc_attr( $term_meta['bg_color'] ) . '; color:' . esc_attr( $term_meta['color'] ) . ';" href="' . esc_url( get_category_link( $cat_id ) ) . '" rel="category tag"> ' . esc_html( $category->name ) . ' </a>';
				} else {
					$categories_list[] = '<a href="' . esc_url( get_category_link( $cat_id ) ) . '" rel="category tag"> ' . esc_html( $category->name ) . ' </a>';
				}
			}

			$categories_list = implode( ' ', $categories_list );

			printf( '<span class="cat-links">' . '<span class="cat-label screen-reader-text">%1$s</span>%2$s</span>',
				sprintf( _x( 'Categories', 'Used before category names.', 'travelore' ) ),
				$categories_list
			);
		}
	}
endif;

if ( ! function_exists( 'travelore_slider_entry_category' ) ) :
/**
 * Prints HTML with category and tags for current post.
 *
 * Create your own travelore_entry_category_date() function to override in a child theme.
 *
 * @since Travelore 1.0
 */
function travelore_slider_entry_category() {
	$meta = '<div class="entry-meta">';

	$portfolio_categories_list = get_the_term_list( get_the_ID(), 'jetpack-portfolio-type', '<span class="portfolio-entry-meta entry-meta">', esc_html_x( ', ', 'Used between list items, there is a space after the comma.', 'travelore' ), '</span>' );

	if ( 'jetpack-portfolio' === get_post_type( ) ) {
		$meta .= sprintf( '<span class="cat-links">' .'<span class="cat-label screen-reader-text">%1$s</span>%2$s</span>',
			sprintf( _x( 'Categories', 'Used before category names.', 'travelore' ) ),
			$portfolio_categories_list
		);
	}

	$categories_list = get_the_category_list( _x( ', ', 'Used between list items, there is a space after the comma.', 'travelore' ) );
	if ( $categories_list && travelore_categorized_blog( ) ) {
		$meta .= sprintf( '<span class="cat-links">' . '<span class="cat-label screen-reader-text">%1$s</span>%2$s</span>',
			sprintf( _x( 'Categories', 'Used before category names.', 'travelore' ) ),
			$categories_list
		);
	}

	$meta .= '</div><!-- .entry-meta -->';

	return $meta;

}
endif;

if ( ! function_exists( 'travelore_entry_date_author' ) ) :
/**
 * Prints HTML with category and tags for current post.
 *
 * Create your own travelore_entry_category_date() function to override in a child theme.
 *
 * @since Travelore 1.0
 */
function travelore_entry_date_author( $date = true, $author = true ) {
	if ( ! $date && ! $author ) {
		return;
	}

	$meta = '<div class="entry-meta">';

	if ( $date ) {
		$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';

		if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
			$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
		}

		$time_string = sprintf( $time_string,
			esc_attr( get_the_date( 'c' ) ),
			esc_html( get_the_date() ),
			esc_attr( get_the_modified_date( 'c' ) ),
			esc_html( get_the_modified_date() )
		);

		$meta .= sprintf( '<span class="posted-on">%3$s' . '<span class="date-label screen-reader-text">%1$s</span><a href="%2$s" rel="bookmark">%4$s</a></span>',
			_x( 'Posted on', 'Used before publish date.', 'travelore' ),
			esc_url( get_permalink() ),
			esc_html__( 'Posted on ', 'travelore' ),
			$time_string
		);
	}

	if ( $author ) {
		// Get the author name; wrap it in a link.
		$byline = sprintf(
			/* translators: %s: post author */
			__( '<span class="author-label screen-reader-text">By </span>%s', 'travelore' ),
			'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . get_the_author() . '</a></span>'
		);

		$meta .= sprintf( '<span class="byline">%1$s%2$s</span>',
			esc_html__( ' By ', 'travelore' ),
			$byline
		);
	}


	$meta .= '</div><!-- .entry-meta -->';

	return $meta;

}
endif;

if ( ! function_exists( 'travelore_entry_tags' ) ) :
	/**
	 * Prints HTML with tags for current post.
	 */
	function travelore_entry_tags() {
		$tags_list = get_the_tag_list();
		if ( $tags_list ) {
			printf( '<span class="tags-links"><p class="tags-links-label">Tags:</p>' . '<span class="tag-label screen-reader-text">%1$s</span>%2$s</span>',
				_x( 'Tags', 'Used before tag names.', 'travelore' ),
				$tags_list
			);
		}
	}
endif;

if ( ! function_exists( 'travelore_entry_footer' ) ) :
	/**
	 * Prints HTML with meta information for the categories, tags and comments.
	 */
	function travelore_entry_footer() {
		// We don't want to output .entry-footer if it will be empty, so make sure its not.
		if ( has_tag() || ( ! post_password_required() && ( comments_open() || get_comments_number() ) ) || get_edit_post_link() ) {

			echo '<footer class="entry-footer">';

				echo '<div class="entry-meta">';

					travelore_entry_tags();

				echo '</div><!-- .entry-meta -->';

				// Show author box only in single posts page and if it has description.
				if ( is_singular() && '' !== get_the_author_meta( 'description' ) ) {
					get_template_part( 'template-parts/biography' );
				}

			echo '</footer> <!-- .entry-footer -->';
		}
	}
endif;

if ( ! function_exists( 'travelore_edit_link' ) ) :
	/**
	 * Returns an accessibility-friendly link to edit a post or page.
	 *
	 * This also gives us a little context about what exactly we're editing
	 * (post or page?) so that users understand a bit more where they are in terms
	 * of the template hierarchy and their content. Helpful when/if the single-page
	 * layout with multiple posts/pages shown gets confusing.
	 */
	function travelore_edit_link() {
		edit_post_link(
			sprintf(
				/* translators: %s: Name of current post */
				__( 'Edit<span class="screen-reader-text"> "%s"</span>', 'travelore' ),
				get_the_title()
			),
			'<span class="edit-link">',
			'</span>'
		);
	}
endif;

if ( ! function_exists( 'travelore_post_thumbnail' ) ) :
/**
 * Displays an optional post thumbnail.
 *
 * Wraps the post thumbnail in an anchor element on index views, or a div
 * element when on single views.
 *
 * Create your own travelore_post_thumbnail() function to override in a child theme.
 *
 * @since Travelore 1.0
 */
function travelore_post_thumbnail( $size = 'post-thumbnail' ) {
	if ( post_password_required() || is_attachment() || ! has_post_thumbnail() ) {
		return;
	}

	if ( is_singular() ) :
	?>

	<div class="post-thumbnail">
		<?php the_post_thumbnail( $size ); ?>
	</div><!-- .post-thumbnail -->

	<?php else : ?>

	<div class="post-thumbnail">	
		<a href="<?php the_permalink(); ?>" aria-hidden="true">
			<?php the_post_thumbnail( $size, array( 'alt' => the_title_attribute( 'echo=0' ) ) ); ?>
		</a>
	</div><!-- .post-thumbnail -->

	<?php endif; // End is_singular()
}
endif;

if ( ! function_exists( 'travelore_excerpt' ) ) :
	/**
	 * Displays the optional excerpt.
	 *
	 * Wraps the excerpt in a div element.
	 *
	 * Create your own travelore_excerpt() function to override in a child theme.
	 *
	 * @since Travelore 1.0
	 *
	 * @param string $class Optional. Class string of the div element. Defaults to 'entry-summary'.
	 */
	function travelore_excerpt( $class = 'entry-summary' ) {
		$class = esc_attr( $class );

		if ( has_excerpt() || is_search() ) : ?>
			<div class="<?php echo $class; ?>">
				<?php the_excerpt(); ?>
			</div><!-- .<?php echo $class; ?> -->
		<?php endif;
	}
endif;

if ( ! function_exists( 'travelore_excerpt_length' ) ) :
	/**
	 * Sets the post excerpt length to n words.
	 *
	 * function tied to the excerpt_length filter hook.
	 * @uses filter excerpt_length
	 *
	 * @since Travelore 1.0
	 */
	function travelore_excerpt_length( $length ) {
		if ( is_admin() ) {
			return $length;
		}

		// Getting data from Customizer Options.
		$length	= get_theme_mod( 'travelore_excerpt_length', 15 );

		return absint( $length );
	}
endif; //catch-travelore_excerpt_length
add_filter( 'excerpt_length', 'travelore_excerpt_length' );

if ( ! function_exists( 'travelore_excerpt_more' ) ) :
	/**
	 * Replaces "[...]" (appended to automatically generated excerpts) with ... and a option from customizer.
	 * @return string option from customizer prepended with an ellipsis.
	 */
	function travelore_excerpt_more( $more ) {
		if ( is_admin() ) {
			return $more;
		}

		$more_tag_text = get_theme_mod( 'travelore_excerpt_more_text',  esc_html__( 'Continue Reading', 'travelore' ) );

		$link = sprintf( '<a href="%1$s" class="more-link"><span class="more-button">%2$s</span></a>',
			esc_url( get_permalink( get_the_ID() ) ),
			/* translators: %s: Name of current post */
			wp_kses_data( $more_tag_text ) . '<span class="screen-reader-text">' . get_the_title( get_the_ID() ) . '</span>'
		);

		return ' &hellip; ' . $link;
	}
endif;
add_filter( 'excerpt_more', 'travelore_excerpt_more' );

if ( ! function_exists( 'travelore_custom_excerpt' ) ) :
	/**
	 * Adds Read More link to more tag excerpts.
	 *
	 * function tied to the get_the_excerpt filter hook.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_custom_excerpt( $output ) {

		if ( has_excerpt() && ! is_attachment() ) {
			$more_tag_text = get_theme_mod( 'travelore_excerpt_more_text', esc_html__( 'Read More &gt;', 'travelore' ) );

			$link = sprintf( '<a href="%1$s" class="more-link"><span class="more-button">%2$s</span></a>',
				esc_url( get_permalink( get_the_ID() ) ),
				/* translators: %s: Name of current post */
				wp_kses_data( $more_tag_text ) . '<span class="screen-reader-text">' . get_the_title( get_the_ID() ) . '</span>'
			);

			$output .= ' &hellip; ' . $link;
		}

		return $output;
	}
endif; // travelore_custom_excerpt.
add_filter( 'get_the_excerpt', 'travelore_custom_excerpt' );

if ( ! function_exists( 'travelore_more_link' ) ) :
	/**
	 * Replacing Read More link to the_content more.
	 *
	 * function tied to the the_content_more_link filter hook.
	 *
	 * @since Travelore 1.0
	 */
	function travelore_more_link( $more_link, $more_link_text ) {
		$more_tag_text = get_theme_mod( 'travelore_excerpt_more_text', esc_html__( 'Read More &gt;', 'travelore' ) );

		return str_replace( $more_link_text, wp_kses_post( $more_tag_text ), $more_link );
	}
endif; // travelore_more_link.
add_filter( 'the_content_more_link', 'travelore_more_link', 10, 2 );

if ( ! function_exists( 'travelore_categorized_blog' ) ) :
/**
 * Determines whether blog/site has more than one category.
 *
 * Create your own travelore_categorized_blog() function to override in a child theme.
 *
 * @since Travelore 1.0
 *
 * @return bool True if there is more than one category, false otherwise.
 */
function travelore_categorized_blog() {
	if ( false === ( $all_the_cool_cats = get_transient( 'travelore_categories' ) ) ) {
		// Create an array of all the categories that are attached to posts.
		$all_the_cool_cats = get_categories( array(
			'fields'     => 'ids',
			// We only need to know if there is more than one category.
			'number'     => 2,
		) );

		// Count the number of categories that are attached to the posts.
		$all_the_cool_cats = count( $all_the_cool_cats );

		set_transient( 'travelore_categories', $all_the_cool_cats );
	}

	if ( $all_the_cool_cats > 1 ) {
		// This blog has more than 1 category so travelore_categorized_blog should return true.
		return true;
	} else {
		// This blog has only 1 category so travelore_categorized_blog should return false.
		return false;
	}
}
endif;

/**
 * Flushes out the transients used in travelore_categorized_blog().
 *
 * @since Travelore 1.0
 */
function travelore_category_transient_flusher() {
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
		return;
	}
	// Like, beat it. Dig?
	delete_transient( 'travelore_categories' );
}
add_action( 'edit_category', 'travelore_category_transient_flusher' );
add_action( 'save_post',     'travelore_category_transient_flusher' );

if ( ! function_exists( 'travelore_the_custom_logo' ) ) :
	/**
	 * Displays the optional custom logo.
	 *
	 * Does nothing if the custom logo is not available.
	 *
	 * @since Travelore 1.2
	 */
	function travelore_the_custom_logo() {
		if ( function_exists( 'the_custom_logo' ) ) {
			the_custom_logo();
		}
	}
endif;

/**
 * Footer Text
 *
 * @get footer text from theme options and display them accordingly
 * @display footer_text
 * @action travelore_footer
 *
 * @since Travelore 1.0
 */
function travelore_footer_content() {
	$theme_data = wp_get_theme();

	$footer_content = sprintf( _x( 'Copyright &copy; %1$s %2$s %3$s', '1: Year, 2: Site Title with home URL, 3: Privacy Policy Link', 'travelore' ), esc_attr( date_i18n( __( 'Y', 'travelore' ) ) ), '<a href="'. esc_url( home_url( '/' ) ) .'">'. esc_attr( get_bloginfo( 'name', 'display' ) ) . '</a>', function_exists( 'get_the_privacy_policy_link' ) ? get_the_privacy_policy_link() : '' ) . '<span class="sep"> | </span>' . $theme_data->get( 'Name' ) . '&nbsp;' . esc_html__( 'by', 'travelore' ) . '&nbsp;<a target="_blank" href="' . $theme_data->get( 'AuthorURI' ) . '">' . esc_html( $theme_data->get( 'Author' ) ) . '</a>';

	echo '<div class="site-info">' . $footer_content . '</div><!-- .site-info -->';
}
add_action( 'travelore_credits', 'travelore_footer_content', 10 );

if ( ! function_exists( 'travelore_comment' ) ) :
	/**
	 * Template for comments and pingbacks.
	 * Used as a callback by wp_list_comments() for displaying the comments.
	 */
	function travelore_comment( $comment, $args, $depth ) {
		if ( 'pingback' == $comment->comment_type || 'trackback' == $comment->comment_type ) : ?>

		<li id="comment-<?php comment_ID(); ?>" <?php comment_class(); ?>>
			<div class="comment-body">
				<?php esc_html_e( 'Pingback:', 'travelore' ); ?> <?php comment_author_link(); ?> <?php edit_comment_link( esc_html__( 'Edit', 'travelore' ), '<span class="edit-link">', '</span>' ); ?>
			</div>

		<?php else : ?>

		<li id="comment-<?php comment_ID(); ?>" <?php comment_class( empty( $args['has_children'] ) ? '' : 'parent' ); ?>>
			<article id="div-comment-<?php comment_ID(); ?>" class="comment-body">

				<div class="comment-author vcard">
					<?php if ( 0 != $args['avatar_size'] ) echo get_avatar( $comment, $args['avatar_size'] ); ?>
				</div><!-- .comment-author -->

				<div class="comment-container">
					<header class="comment-meta">
						<?php printf( __( '%s <span class="says screen-reader-text">says:</span>', 'travelore' ), sprintf( '<cite class="fn author-name">%s</cite>', get_comment_author_link() ) ); ?>

						<a class="comment-permalink entry-meta" href="<?php echo esc_url( get_comment_link( $comment->comment_ID ) ); ?>">
						<?php echo travelore_get_svg( array( 'icon' => 'clock-o' ) ); ?>
						<time datetime="<?php comment_time( 'c' ); ?>">  <?php printf( esc_html__( '%s ago', 'travelore' ), human_time_diff( get_comment_time( 'U' ), current_time( 'timestamp' ) ) ); ?></time></a>
					<?php edit_comment_link( esc_html__( 'Edit', 'travelore' ), '<span class="edit-link">', '</span>' ); ?>
					</header><!-- .comment-meta -->

					<?php if ( '0' == $comment->comment_approved ) : ?>
						<p class="comment-awaiting-moderation"><?php esc_html_e( 'Your comment is awaiting moderation.', 'travelore' ); ?></p>
					<?php endif; ?>

					<div class="comment-content">
						<?php comment_text(); ?>
					</div><!-- .comment-content -->

					<?php
						comment_reply_link( array_merge( $args, array(
							'add_below' => 'div-comment',
							'depth'     => $depth,
							'max_depth' => $args['max_depth'],
							'before'    => '<span class="reply">',
							'after'     => '</span>',
						) ) );
					?>
				</div><!-- .comment-content -->

			</article><!-- .comment-body -->
		<?php /* No closing </li> is needed.  WordPress will know where to add it. */ ?>

		<?php
		endif;
	}
endif; // ends check for travelore_comment()
