<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' | '; } ?><?php bloginfo('name'); ?></title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <link href='https://fonts.googleapis.com/css?family=Dosis:400,800,700,500' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/animate.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/jquery.magnific-popup.css">

	<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico" />

	<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.waypoints.min.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/assets/js/wow.min.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/assets/js/script.js"></script>

	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <section id="main-wrap">
        <div id="main-banner" class="center">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/banner.png" alt="">
        </div>
       
        <header id="main-header">
            <section class="actions clear">
                <h1 id="logo"><i class="fa fa-fw fa-search"></i> <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" alt=""></a> <i class="fa fa-bars fa-fw menu-toggle"></i></h1>
                
                <div class="search">
                    <input type="search" placeholder="Pesquisar"><i class="fa fa-search"></i>
                </div>
                <div class="main-menu">
                    <?php wp_nav_menu( array('theme_location'=>'main-menu') ); ?>
                </div>
            </section>
            <section class="acessados">
                <h2>+ Acessados</h2>
                <div class="justify">
                    <a href="#">Salão do Automóvel</a>
                    <a href="#">Renegade</a>
                    <a href="#">Novo Sandero</a>
                    <a href="#">Novo Fox</a>
                    <a href="#">Novo KA</a>
                    <a href="#">HB 20</a>
                    <a href="#">Duster</a>
                    <a href="#">Golf</a>
                    <a href="#">Corolla</a>
                    <a href="#">Civic</a>
                    <a href="#">| A - Z |</a>
                </div>
            </section>
        </header>