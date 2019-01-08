<?php
  if ($home == $og_url) {
    $class = 'col-md-9';
  }else{
    $class = 'col-md-12';
  }
 ?>
<div class="<?php echo $class; ?>">
    <div class="product-style-tab">
        <div class="product-tab-list">
            <!-- Nav tabs -->
            <ul class="tab-style" role="tablist">
                <li class="active">
                    <a href="#home1" data-toggle="tab">
                        <div class="tab-menu-text">
                            <div class="seil_produkts"><?php echo $heading_title; ?> </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
          <?php foreach ($products as $product) { ?>
       <?php } ?>
        <div class="tab-content another-product-style jump">
            <div class="tab-pane active" id="home1">
                <div class="row">
                    <div class="product-slider-active owl-carousel">
                      <?php foreach ($products as $product) { ?>
                        <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                            <div class="product">
                                <div class="product__inner">
                                    <div class="pro__thumb">
                                        <a href="<?php echo $product['href']; ?>">
                                            <img src="<?php echo $product['thumb'] ?>" alt="<?php echo $product['name']; ?>">
                                        </a>
                                    </div>
                                    <div class="product__hover__info">
                                        <ul class="product__action">
                                            <li><button type="button" id="my_test" class="cart__menu" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="ti-shopping-cart"></span> <span class="hidden-xs hidden-sm hidden-md"></span></button></li>
                                            <li><button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" class="cart__menu" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="ti-heart"></span></button></li>
                                            <li><button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" class="cart__menu" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="ti-exchange-vertical"></span></button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product__details">
                                    <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                                    <ul class="product__price">
                                      <?php if($product['special']){ ?>
                                        <li class="old__price"><?php echo $product['price']; ?></li>
                                        <li class="new__price"><?php echo $product['special']; ?></li>
                                      <?php }else{ ?>
                                        <li class="new__price"><?php echo $product['price']; ?></li>
                                      <?php }; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                      <?php }; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
