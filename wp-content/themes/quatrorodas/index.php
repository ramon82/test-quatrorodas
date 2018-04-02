<?php 
/* Template Name: Home */
get_header(); 

/*we don't need the main loop*/
query_posts(array('post_type'=>'noticia'));

$post_offset = 3;
$main_posts = [];

$i = 0;
while ( have_posts() ) {
    the_post();

    if($i<=$post_offset) {
        $main_posts[$i] = get_post(get_the_ID()); 
        $i++;
    }
}
?>
    <section id="main-content">
        <div class="table block tile-grid">
            <div class="row">
                <article class="w50 tile big h500" style="background-image:url(<?php echo get_thumb_by_post($main_posts[0]->ID, 'tile'); ?>);">
                    <h2><?php echo get_post_main_category($main_post[0]->ID); ?></h2>
                    <h1><?php echo $main_posts[0]->post_title; ?></h1>
                </article>
                <div class="w50">
                    <div class="table h500">
                        <div class="row">
                            <article class="w50 h50 tile" style="background-image:url(<?php echo get_thumb_by_post($main_posts[1]->ID, 'tile'); ?>);">
                                <h2><?php echo get_post_main_category($main_post[1]->ID); ?></h2>
                                <h1><?php echo $main_posts[1]->post_title; ?></h1>
                            </article>
                            <article class="w50 h50 tile img-full">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/banner-tile.png" alt="">
                            </article>
                        </div>
                        <div class="row">
                            <article class="w50 h50 tile" style="background-image:url(<?php echo get_thumb_by_post($main_posts[2]->ID, 'tile'); ?>);">
                                <h2><?php echo get_post_main_category($main_post[2]->ID); ?></h2>
                                <h1><?php echo $main_posts[2]->post_title; ?></h1>                                
                            </article>
                            <article class="w50 h50 tile" style="background-image:url(<?php echo get_thumb_by_post($main_posts[3]->ID, 'tile'); ?>);">
                                <h2><?php echo get_post_main_category($main_post[3]->ID); ?></h2>
                                <h1><?php echo $main_posts[3]->post_title; ?></h1>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="table block gutter">
            <div class="row">
                <?php
                    $i = 0;

                    while ( have_posts() ) {
                        the_post();

                        if($i>$post_offset) {
                            echo '
                            <article class="w25 tile-featured">
                                <div class="img" style="background-image:url('.get_thumb_by_post(get_the_ID(), 'featured-small').');">
                                    <h2>'.get_post_main_category(get_the_ID()).'</h2>
                                </div>
                                <div class="desc">
                                    <h1>'.get_the_title().'</h1>
                                    <p>'.get_the_excerpt().'</p>
                                    <a href="#">+ Troller T4 x Jeep Renegade</a>
                                </div>
                            </article>';
                        }

                        $i++;
                    }
                ?>
            </div>
        </div>
    </section>
<?php get_footer(); ?>