<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Education_Mind
 */

get_header(); ?>
<div class="custom_s">
	
	<center><?php 
	if (is_front_page()) { 
		echo do_shortcode('[rev_slider alias="slider-1"]'); 
	}
?></center>
	</div>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			

		<?php if ( have_posts() ) : ?>

			<?php if ( is_home() && ! is_front_page() ) : ?>
				<header>
					<h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
				</header>
			<?php endif; ?>

			<?php /* Start the Loop */ ?>
			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'template-parts/content' ); ?>

			<?php endwhile; ?>

			<?php
			/**
			 * Hook - education_mind_action_posts_navigation.
			 *
			 * @hooked: education_mind_custom_posts_navigation - 10
			 */
			do_action( 'education_mind_action_posts_navigation' ); ?>

		<?php else : ?>

			<?php get_template_part( 'template-parts/content', 'none' ); ?>

		<?php endif; ?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
	/**
	 * Hook - education_mind_action_sidebar.
	 *
	 * @hooked: education_mind_add_sidebar - 10
	 */
	do_action( 'education_mind_action_sidebar' );
?>

<?php get_footer(); ?>
