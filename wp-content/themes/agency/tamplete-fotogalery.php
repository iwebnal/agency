<?php 
/* 
Template name: Фотогалерея
*/
 ?>

<?php get_header(); ?>

<div class="clearfix"></div>

<section class="ah-galery">
	<div class="container">
		<div class="row">
			<span class="ah-appeal-text2"><?php the_title(); ?></span>
			<?php wp_reset_query(); ?>
			<?php $wp_query = new WP_Query('page_id=53'); ?>
			<?php if($wp_query->have_posts()) { $wp_query->the_post(); ?>
			<?php $image1 = get_field('картинка_1'); ?>
			<?php $image2 = get_field('картинка_2'); ?>
			<?php $image3 = get_field('картинка_3'); ?>
			<?php $image4 = get_field('картинка_4'); ?>
			<?php $image5 = get_field('картинка_5'); ?>
			<?php $image6 = get_field('картинка_6'); ?>
			<?php $image7 = get_field('картинка_7'); ?>
			<?php $image8 = get_field('картинка_8'); ?>
			<?php $image9 = get_field('картинка_9'); ?>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image1['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image1['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image2['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image2['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image3['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image3['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image4['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image4['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image5['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image5['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image6['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image6['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image7['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image7['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image8['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image8['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ah-galery-box">
					<a href="<?php echo $image9['url']; ?>" class="ah-popup-link1"><img src="<?php echo $image9['url']; ?>" class="img-responsive"></a>
				</div>
			</div>
			<?php } ?>
			<?php wp_reset_query(); ?>
		</div>
	</div>
</section>

<div class="clearfix"></div>



<?php get_footer(); ?>
