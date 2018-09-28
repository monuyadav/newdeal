<?php get_header(); ?>
   <div class="middle_deal_m">
    <div class="row">

                <?php
                    // Only run on shop archive pages, not single products or other pages
                    if ( is_shop() || is_product_category() || is_product_tag() ) {
                        // Products per page
                        $per_page = 20;
                        if ( get_query_var( 'taxonomy' ) ) { // If on a product taxonomy archive (category or tag)
                            $args = array(
                                'post_type' => 'product',
                                'posts_per_page' => $per_page,
                                'paged' => get_query_var( 'paged' ),
                                'tax_query' => array(
                                    array(
                                        'taxonomy' => get_query_var( 'taxonomy' ),
                                        'field'    => 'slug',
                                        'terms'    => get_query_var( 'term' ),
                                    ),
                                ),
                            );
                        } else { // On main shop page
                            $args = array(
                                'post_type' => 'product',
                                'orderby' => 'date',
                                'order' => 'DESC',
                                'posts_per_page' => $per_page,
                                'paged' => get_query_var( 'paged' ),
                            );
                        }
                        // Set the query
                        $products = new WP_Query( $args );
                        // Standard loop
                      
                        if ( $products->have_posts() ) :
                            foreach ($products->posts as $key => $post) {
                                # code...
                               
                                $start  = date_create($post->post_date);
								$end 	= date_create(date('Y-m-d h:i:s')); // Current time and date
								$diff  	= date_diff( $start, $end );
								if(!empty($diff->y)){
									$days = $diff->y.' year ago';
								}elseif($diff->m){
									$days = $diff->m.' month ago';
								}elseif ($diff->d) {
									$days = $diff->d.' day ago';
								}elseif ($diff->h) {
									$days = $diff->h.' hour ago';
								}elseif ($diff->i) {
									$days = $diff->i.' minute ago';
								}elseif ($diff->s) {
									$days = $diff->s.' second ago';
								}

								
                                // Your new HTML markup goes here
                                $thumbnail_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), array('220','220'), true );
                                $thumbnail_url = $thumbnail_url[0];
                               $imageurl =  ( !empty($thumbnail_url) ) ? $thumbnail_url : 'No thumb!';
                                $_product = wc_get_product( $post->ID );
                                $regular_price = $_product->get_regular_price();
                               
                                $sale_price = $_product->get_sale_price();
                               
                                $price = $_product->get_price();
                                 
                                
                                
                               
                                ?>
                               <div class="col-md-3">
                                        <div class="mid_deal_block">
                                            <span class="total_disc_m"><?=  get_post_meta($post->ID, 'total_discount_in_percentage', TRUE); ?></span>
                                            <span class="launching_time_m"><?= $days; ?></span>

                                          <div class="mid_deal_block_img"><a href="http://fkrt.it/Xn9i22NNNN" target="_blank"><img alt="img" src="<?php echo $imageurl; ?>" /> </a></div>
                                          <div class="mid_deal_block_img_tittle">
                                            <h5><?= get_post_meta($post->ID, 'vendor_name', TRUE); ?></h5>
                                            <p><?php echo $post->post_title; ?> </p>
                                          </div>
                                          <div class="price row"><span class="final-price"><span class="c-inr">Rs.</span><?= $sale_price; ?></span> <span class="scratch"><?= $regular_price; ?></span> <span class="buynow_btn"><a href="<?= get_post_permalink($post->ID); ?>" target="_blank">Buy Now</a></span></div>
                                        </div>
                                </div>
                                <?php
                               
                           }
                            wp_reset_postdata();
                        endif;
                    } else { // If not on archive page (cart, checkout, etc), do normal operations
                        woocommerce_content();
                    }
                ?>

           
    </div>
</div>
<?php get_footer(); ?>