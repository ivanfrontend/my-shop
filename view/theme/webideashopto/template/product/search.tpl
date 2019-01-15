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

    <div id="content" class="<?php echo $class; ?> smt-30"><?php echo $content_top; ?>
      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-2">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-sm-3">
          <select name="category_id" class="form-control">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-sm-3">
          <label class="checkbox-inline">
            <?php if ($sub_category) { ?>
            <input type="checkbox" name="sub_category" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="sub_category" value="1" />
            <?php } ?>
            <?php echo $text_sub_category; ?></label>
        </div>
        <div class="col-sm-3">
          <p>
            <label class="checkbox-inline">
              <?php if ($description) { ?>
              <input type="checkbox" name="description" value="1" id="description" checked="checked" />
              <?php } else { ?>
              <input type="checkbox" name="description" value="1" id="description" />
              <?php } ?>
              <?php echo $entry_description; ?></label>
          </p>
        </div>
        <div class="col-sm-1">
            <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
      </div>
      </div>
      <h2 class="my-margin-40"><?php echo $text_search; ?></h2>
      <?php if ($products) { ?>
      <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <div class="producy__view__container">
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
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?>
        </div>
    </div>
</section>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>
