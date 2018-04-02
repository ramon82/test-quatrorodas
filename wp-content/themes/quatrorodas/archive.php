<?php 
//ini_set('display_errors', 1);
//error_reporting(E_ALL);
get_header(); 

$atletas_ids = get_popular_posts_ids(4, 'atleta');
$atletas = [];

foreach ($atletas_ids as $atleta) {
	$atletas[] = get_post($atleta);
}
?>
<section id="atleta-topo">
	<div class="table">
		<div class="row">
			<div class="w66 bg-photo-black">
				<div class="card-lutador h600 p40 bbox bg-trans bg-cover" style="background-image:url(<?php echo get_thumb_by_id(get_field('banner_destaque', $atletas[0]->ID), 'lutador'); ?>);">
					<div class="desc">
						<h1 class="orange upper fs24 bold mb20">Em Destaque</h1>
						<?php echo get_field('cinturao', $atletas[0]->ID)?'<i class="badge ouro"></i>':''; ?>
						<h2 class="fs50 mtb15"><a href="<?php echo get_permalink($atletas[0]->ID); ?>"><?php echo $atletas[0]->post_title; ?></a></h2>
						<h3 class="fs18"><?php echo get_field('recorde', $atletas[0]->ID); ?></h3>
						<a href="<?php echo get_permalink($atletas[0]->ID); ?>" class="mt40 go orange fright">Confira a página do lutador</a>
					</div>
				</div>
			</div>
			<div class="w33">
				<?php 
					unset($atletas[0]);

					foreach ($atletas as $key => $atleta) { ?>
						<div class="table bg-photo-orange">
							<a href="<?php echo get_permalink($atleta->ID); ?>" class="row">
								<div class="w50 bg-cover" style="background-image:url(<?php echo get_thumb_by_id(get_field('foto_frontal', $atleta->ID), 'lutador-front'); ?>);"></div>
								<div class="w50 h200 black vamiddle">
									<strong>Pra ficar de olho:</strong>
									<h2 class="fs40 mt10"><?php echo $atleta->post_title; ?></h2>
									<p><?php echo get_field('recorde', $atleta->ID); ?></p>
								</div>
							</a>
						</div>
				<?php
					}
				?>
			</div>
		</div>
	</div>
</section>

<section id="atleta-list">
	<div class="table">
		<div class="row">
			<div class="w66">
				<header>
					<h1>Categorias</h1>
				</header>
				<div class="table card-rows">
					<div class="row">
						<div class="w33"></div>
						<div class="w33"></div>
						<div class="w33"></div>
					</div>
					<?php 
						$categorias_all = get_terms( 'categoria-atleta' );
						$categorias_page = array_chunk($categorias_all, 3);

						foreach ($categorias_page as $categorias) { ?>
							<div class="row">
								<?php 
									foreach ($categorias as $categoria) { 
										$the_query = new WP_Query(array('post_type'=>'atleta', 'posts_per_page'=>1, 'tax_query'=>array(
											array(
												'taxonomy' => 'categoria-atleta',
												'field'    => 'slug',
												'terms'    => $categoria->slug,
											),
											'orderby'=>'time',
											'order'=>'ASC'
										)));

										while ( $the_query->have_posts() ) {
											$the_query->the_post(); ?>
												<a href="<?php bloginfo('url'); ?>/ranking?category=<?php echo $categoria->slug; ?>" class="w33 black-border">
													<div class="head bg-dark-gray p5"><span class="orange"><?php echo $categoria->name; ?></span></div>
													<div class="photo h300 bg-white bg-cover relative" style="background-image:url(<?php echo get_thumb_by_id(get_field('foto_do_perfil', get_the_ID()), 'lutador'); ?>);">
														<div class="force-bottom p20 white">
															<h1 class="fs28 bold"><?php the_title(); ?></h1>
															<p><?php echo get_field('recorde'); ?></p>
														</div>
													</div>
													<div class="foot bg-dark-gray ovhidden p10"><span class="go orange fright">Ranking da categoria</span></div>
												</a>
											<?php
										}
										?>
									<?php 
									}
								?>
							</div>
						<?php 
						}
					?>
				</div>
			</div>
			<div class="w33 bg-dark-gray">
				<header class="bg-black">
					<h1>&nbsp;</h1>
				</header>
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>