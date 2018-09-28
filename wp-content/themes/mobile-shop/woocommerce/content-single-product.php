<?php
	$thumbnail_url = wp_get_attachment_image_src(get_post_thumbnail_id(get_the_ID()), '', true );
	$thumbnail_url = $thumbnail_url[0];
	$imageurl =  ( !empty($thumbnail_url) ) ? $thumbnail_url : 'No thumb!';
	$_product = wc_get_product( get_the_ID() );
	$regular_price = $_product->get_regular_price();
	$sale_price = $_product->get_sale_price();
	$price = $_product->get_price();
?>

<div class="container">
    <div class="col-md-6">
        <div class="left_product_slider_m">        	
                <img alt="img" src="<?php echo $imageurl; ?>" />
        </div>  
    </div>  

    <div class="col-md-6">
        <div class="right_product_slider_m">
            <h1><?= get_the_title(get_the_ID()); ?></h1>
            <p class="sold-by"><span>Sold By </span><a href="<?= get_post_meta(get_the_ID(), 'custom_url', TRUE); ?>"><?= get_post_meta(get_the_ID(), 'vendor_name', TRUE); ?></a></p>
            <p class="cut-price-details"><del>Rs <?=  $regular_price; ?></del></p>
            <p class="main-price-details">Rs <?=  $sale_price; ?></p>

            <div class="sitelink txt-13 pull-left"> 
                <a target="_blank" href="<?= get_post_meta(get_the_ID(), 'custom_url', TRUE); ?>" class="prositelink white-txt text-none new-shop-now" style="border:0px;">SHOP NOW<img src="<?= get_template_directory_uri(); ?>/images/product_cart.png" alt="buy" class="left-10"></a> 
            </div>

            <div class="clearfix"></div>


           <div class="discription_m"><?= the_content(); ?></div>

         </div> 
     </div> 



 
</div>