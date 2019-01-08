<?php echo $header; ?>
<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(catalog/view/theme/webideashopto/assets/images/bg/2.jpg) no-repeat scroll center center / cover ;">
    <div class="ht__bradcaump__wrap">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title"><?php echo $heading_title; ?></h2>
                        <nav class="bradcaump-inner">
                          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                          <span class="brd-separetor">/</span>
                          <?php } ?>
                          <?php if($description): ?>
                          <div class=""> <?php echo $description; ?></div>
                        <?php endif; ?>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Bradcaump area -->

<!-- Start Our ShopSide Area -->
<section class="htc__shop__sidebar bg__white ptb--120">
    <div class="container">
        <div class="row">
          <?php
          if($column_left){
            $class = 'col-md-9 col-lg-9 col-sm-12 col-xs-12';
          }else{
            $class = 'col-md-12 col-lg-12 col-sm-12 col-xs-12';
          };
           ?>
          <?php if($column_left){ ?>
          <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12">
              <div class="htc__shop__left__sidebar">
                <!-- Start Product Cat -->
                  <?php echo  $column_left;?>

                <!-- End Product Cat -->



              </div>
          </div>
        <?php }; ?>

        <div class="<?php echo $class; ?> smt-30">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="producy__view__container">
                      <!-- Start Short Form -->
                      <?php if($categories){ ?>
                        <div class="my_width100">
                          <h4 class="section-title-4">Подкатегории</h4>
                          <div class="product__list__option">

                              <div class="my_shp__pro__show shp__pro__show">
                                  <?php foreach ($categories as $categorie) { ?>
                                  <span><a href="<?php echo $categorie['href'] ?>"><?php echo $categorie['name']; ?></a></span>
                                <?php }; ?>
                              </div>
                          </div>
                      </div>
                    <?php }; ?>
                      <!-- End Short Form -->
                        <!-- Start Short Form -->
                        <div class="product__list__option">
                          <div class="form-group input-group input-group-sm">
                            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
                            <select id="input-sort" class="form-control" onchange="location = this.value;">
                              <?php foreach ($sorts as $sorts) { ?>
                              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                              <?php } ?>
                              <?php } ?>
                            </select>
                          </div>
                          <div class="form-group input-group input-group-sm">
                            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
                            <select id="input-limit" class="form-control" onchange="location = this.value;">
                              <?php foreach ($limits as $limits) { ?>
                              <?php if ($limits['value'] == $limit) { ?>
                              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                              <?php } ?>
                              <?php } ?>
                            </select>
                          </div>
                            <div class="shp__pro__show">
                                <span><?php echo $results; ?></span>
                            </div>
                        </div>
                        <!-- End Short Form -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="shop__grid__view__wrap another-product-style">
                    <!-- Start Single View -->
                    <div role="tabpanel" id="grid-view" class="single-grid-view tab-pane fade in active clearfix">

                        <!-- Start Single Product -->
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
                        <!-- End Single Product -->

                        <!-- End Single Product -->
                    </div>
                    <!-- End Single View -->

                </div>
            </div>
            <div class="col-sm-12 text-right"><?php echo $pagination; ?></div>
        </div>

        </div>
    </div>
</section>
<?php echo $footer; ?>
