<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package storeone
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url', 'display' ); ?>">
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<div class="logo">
  <div class="container">
    <div class="row">
      <div class="col-md-4 logo_img">
       <?php //the_custom_logo();?>
      <!--  <a href="index.html"><img alt="logo" src="images/gazabkideal_logo.png" width="300" /></a> -->
       </div>
      <div class="col-md-8">
        <div class="long_small_ad"><script type="text/javascript" language="javascript">
      //var aax_size='728x90';
      //var aax_pubname = '229874-21';
      //var aax_src='302';
    </script><script type="text/javascript" language="javascript" src="http://c.amazon-adsystem.com/aax2/assoc.js"></script>
</div>
      </div>
    </div>
  </div>
</div>
<div class="main_navi_bg">
  <div class="container">
    <nav class="navbar" role="navigation"> 
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      
      <!-- Collect the nav links, forms, and other content for toggling -->
     <?php 
                $args = array(
                        'theme_location'    => 'primary',
                        'depth'             =>  0,
                        'container'         => 'div',
                        'container_class'   => 'collapse navbar-collapse',
                        'container_id'      => 'TF-Navbar',
                        'menu_class'        => 'nav navbar-nav',
                        'fallback_cb'       => 'storeone_fallback_page_menu',
                        'walker'            => new storeone_nav_walker()
                    );
                wp_nav_menu($args);
              ?>
      <!-- /.navbar-collapse --> 
    </nav>
  </div>
</div>
<?php  if(is_home()){ ?>
<div class="container">
  <div class="header">
    <div class="header_ad">
      <?php echo do_shortcode('[wonderplugin_carousel id="1"]'); ?>
        <!-- Controls --></div>
    </div>
    <h3 class="text-center">Best Online Deals, Coupons, Offers and Free stuff Personalized</h3>
  </div>
<?php } ?>
