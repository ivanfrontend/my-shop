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
                          <!-- <a class="breadcrumb-item" href="index.html">Home</a>
                          <span class="brd-separetor">/</span>
                          <span class="breadcrumb-item active">sticky right</span> -->
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
                  <!-- Start Range -->
                  <div class="htc-grid-range">
                      <h4 class="section-title-4">FILTER BY PRICE</h4>
                      <div class="content-shopby">
                          <div class="price_filter s-filter clear">
                              <form action="#" method="GET">
                                  <div id="slider-range"></div>
                                  <div class="slider__range--output">
                                      <div class="price__output--wrap">
                                          <div class="price--output">
                                              <span>Price :</span><input type="text" id="amount" readonly>
                                          </div>
                                          <div class="price--filter">
                                              <a href="#">Filter</a>
                                          </div>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </div>
                  </div>
                  <!-- End Range -->
                  <!-- Start Product Cat -->
                  <div class="htc__shop__cat">
                      <h4 class="section-title-4">PRODUCT CATEGORIES</h4>
                      <ul class="sidebar__list">
                          <li><a href="#">Accessories <span>3</span></a></li>
                          <li><a href="#">Book <span>4</span></a></li>
                          <li><a href="#">Clothing <span>3</span></a></li>
                          <li><a href="#">Homelife <span>6</span></a></li>
                          <li><a href="#">Kids & Baby <span>10</span></a></li>
                          <li><a href="#">Stationery <span>3</span></a></li>
                          <li><a href="#">Health & Beauty <span>12</span></a></li>
                          <li><a href="#">Home Appliances <span>15</span></a></li>
                      </ul>
                  </div>
                  <!-- End Product Cat -->
                  <!-- Start Color Cat -->
                  <div class="htc__shop__cat">
                      <h4 class="section-title-4">CHOOSE COLOUR</h4>
                      <ul class="sidebar__list">
                          <li class="black"><a href="#"><i class="zmdi zmdi-circle"></i>Black<span>3</span></a></li>
                          <li class="blue"><a href="#"><i class="zmdi zmdi-circle"></i>Blue <span>4</span></a></li>
                          <li class="brown"><a href="#"><i class="zmdi zmdi-circle"></i>Brown <span>3</span></a></li>
                          <li class="red"><a href="#"><i class="zmdi zmdi-circle"></i>Red <span>6</span></a></li>
                          <li class="orange"><a href="#"><i class="zmdi zmdi-circle"></i>Orange <span>10</span></a></li>
                      </ul>
                  </div>
                  <!-- End Color Cat -->
                  <!-- Start Size Cat -->
                  <div class="htc__shop__cat">
                      <h4 class="section-title-4">PRODUCT CATEGORIES</h4>
                      <ul class="sidebar__list">
                          <li><a href="#">xl <span>3</span></a></li>
                          <li><a href="#">l <span>4</span></a></li>
                          <li><a href="#">lm <span>3</span></a></li>
                          <li><a href="#">ml <span>6</span></a></li>
                          <li><a href="#">m <span>10</span></a></li>
                          <li><a href="#">ml <span>3</span></a></li>
                      </ul>
                  </div>
                  <!-- End Size Cat -->
                  <!-- Start Tag Area -->
                  <div class="htc__shop__cat">
                      <h4 class="section-title-4">Tags</h4>
                      <ul class="htc__tags">
                          <li><a href="#">All</a></li>
                          <li><a href="#">Clothing</a></li>
                          <li><a href="#">Kids</a></li>
                          <li><a href="#">Accessories</a></li>
                          <li><a href="#">Stationery</a></li>
                          <li><a href="#">Homelife</a></li>
                          <li><a href="#">Appliances</a></li>
                          <li><a href="#">Clothing</a></li>
                          <li><a href="#">Baby</a></li>
                          <li><a href="#">Beauty</a></li>
                      </ul>
                  </div>
                  <!-- End Tag Area -->
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
                            <div class="order-single-btn">
                                <select class="select-color selectpicker">
                                  <option>Sort by newness</option>
                                  <option>Match</option>
                                  <option>Updated</option>
                                  <option>Title</option>
                                  <option>Category</option>
                                  <option>Rating</option>
                                </select>
                            </div>
                            <div class="shp__pro__show">
                                <span>Showing 1 - 4 of 25 results</span>
                            </div>
                        </div>
                        <!-- End Short Form -->
                        <!-- Start List And Grid View -->
                        <ul class="view__mode" role="tablist">
                            <li role="presentation" class="grid-view active"><a href="#grid-view" role="tab" data-toggle="tab"><i class="zmdi zmdi-grid"></i></a></li>
                            <li role="presentation" class="list-view"><a href="#list-view" role="tab" data-toggle="tab"><i class="zmdi zmdi-view-list"></i></a></li>
                        </ul>
                        <!-- End List And Grid View -->
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
        </div>

        </div>
    </div>
</section>
<?php echo $footer; ?>
