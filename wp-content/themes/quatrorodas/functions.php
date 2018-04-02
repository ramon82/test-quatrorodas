<?php
add_theme_support('menus');
add_theme_support('post-thumbnails');

add_image_size( 'tile', 610, 500 ); 
add_image_size( 'featured-small', 330, 210 ); 

function human_time(){
    return single_post_timestamp();
}

function register_menu() {
    register_nav_menus(array(
        'main-menu' => 'Principal'
    ));
}


function create_post_type() {    
    register_post_type('noticia',
        array(
            'labels' => array(
                'name' => 'Notícias', 
                'singular_name' => 'Notícia'
            ),
            'public' => true,
            'has_archive' => true,
            'exclude_from_search' => true,
            'rewrite' => array('slug'=>'noticias'),
            'menu_icon' => 'dashicons-media-document',

            'supports' => array(
                'title',
                'editor',
                'thumbnail',
                'excerpt'
            )
        )
    );
}

function create_taxonomy() {

    $labels = array(
        'name' => 'Categorias',
        'singular_name' => 'categoria',
        'search_items' =>  'Buscar',
        'all_items' => 'Todas',
        'parent_item' => 'Categoria Pai',
        'parent_item_colon' => 'Categoria Pai',
        'edit_item' => 'Editar', 
        'update_item' => 'Atualizar',
        'add_new_item' => 'Adicionar nova',
        'new_item_name' => 'Nome da nova'
    );

    register_taxonomy('categoria', array('noticia'), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,      
        'query_var' => true,        
        'rewrite' => array( 'slug' => 'categoria' )
    ));
}

add_action('init', 'register_menu');
add_action('init', 'create_post_type');
add_action( 'init', 'create_taxonomy');

function get_thumb_by_id($id, $size){
    $thumb = wp_get_attachment_image_src($id, $size);
    return $thumb[0];
}

function get_thumb_by_post($id, $size){
    $thumb = wp_get_attachment_image_src(get_post_thumbnail_id($id), $size);
    return $thumb[0];
}

function get_post_main_category($id){
    return 'Categoria';
}

function catch_that_image() {
    global $post, $posts;
    $first_img = '';
    ob_start();
    ob_end_clean();
    $output = preg_match_all('/<img.+src=[\'"]([^\'"]+)[\'"].*>/i', $post->post_content, $matches);
    if($matches[1]){
        $first_img = $matches[1][0];
    }

    if(empty($first_img)){ //Defines a default image
        $first_img = get_template_directory_uri().'/logo.png';
    } else {
        $first_img = str_replace(get_bloginfo('url'), '', $first_img);
        list($width, $height) = @getimagesize($first_img);
        if($width>199&&$height>199){
            $first_img = get_bloginfo('url').$first_img;
        } else {
            $first_img = get_template_directory_uri().'/logo.png';
        }

    }

    return $first_img;
}

function custom_menu_page_removing() {
    //remove_submenu_page('index.php', 'update-core.php');

    remove_menu_page('edit.php');
    remove_menu_page('upload.php');
    remove_menu_page('edit.php?post_type=page');
    remove_menu_page('edit-comments.php');
    remove_menu_page('edit.php?post_type=acf');
    //remove_menu_page('options-general.php');
    //remove_menu_page('tools.php');
    remove_menu_page('plugins.php');
    //remove_menu_page('users.php');
    remove_menu_page('mail-subscribe-list/index.php');
    remove_menu_page('useful-banner-manager/banners.php');
    remove_menu_page('acf-options');
    remove_menu_page('yop-polls');
}

add_action( 'admin_menu', 'custom_menu_page_removing', 999 );

function admin_bar_remove() {
        global $wp_admin_bar;

        /* Remove their stuff */
        $wp_admin_bar->remove_menu('wp-logo');
        $wp_admin_bar->remove_menu('updates');          // Remove the updates link
        $wp_admin_bar->remove_menu('comments');         // Remove the comments link
        $wp_admin_bar->remove_menu('new-content');      // Remove the content link
}

add_action('wp_before_admin_bar_render', 'admin_bar_remove', 0);


function get_youtube_id($url){
    $video_id = '';

    if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $url, $match)) {
        $video_id = $match[1];
    }

    return $video_id;
}

function get_gallery_count($id) {
    return (int)count(explode(',',get_post_meta( $id, '_product_image_gallery', true )));
}

/**
 * Disable responsive image support (test!)
 */

// Clean the up the image from wp_get_attachment_image()
add_filter( 'wp_get_attachment_image_attributes', function( $attr )
{
    if( isset( $attr['sizes'] ) )
        unset( $attr['sizes'] );

    if( isset( $attr['srcset'] ) )
        unset( $attr['srcset'] );

    return $attr;

 }, PHP_INT_MAX );

// Override the calculated image sizes
add_filter( 'wp_calculate_image_sizes', '__return_false',  PHP_INT_MAX );

// Override the calculated image sources
add_filter( 'wp_calculate_image_srcset', '__return_false', PHP_INT_MAX );

// Remove the reponsive stuff from the content
remove_filter( 'the_content', 'wp_make_content_images_responsive' );
?>
