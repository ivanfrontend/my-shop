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
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Bradcaump area -->
<!-- Start Product Details -->
<section class="htc__product__details pt--100 pb--100 bg__white">
    <div class="container">
        <div class="scroll-active">
            <div class="row">
                <div class="col-md-7 col-lg-7 col-sm-5 col-xs-12">
                  <?php if ($thumb || $images) {  ?>
                  <div id="slider_products" class="product__details__container product-details-5 ">
                    <div class="slider-for">

                      <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                      <div>
                        <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                      </div>
                      <?php }; ?>
                    <?php }; ?>
                    </div>
                    <div  class=" slider-nav">

                      <?php if ($images) { ?>
                        <?php foreach ($images as $image) {?>
                      <div>
                        <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                      </div>
                      <?php }; ?>
                    <?php }; ?>
                    </div>
                </div>
              <?php }; ?>
                </div>
                <div class="<!--sidebar-active--> col-md-5 col-lg-5 col-sm-7 col-xs-12 ">
                    <div class="htc__product__details__inner ">
                        <div class="pro__detl__title">
                            <h2><?php echo $heading_title; ?></h2>
                        </div>

                        <ul class="list-unstyled">
                          <?php if ($manufacturer) { ?>
                          <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
                          <?php } ?>
                          <li><?php echo $text_model; ?> <?php echo $model; ?></li>
                          <?php if ($reward) { ?>
                          <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
                          <?php } ?>
                          <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>

                          <?php foreach ($attribute_groups as $attribute_group) { ?>
                            <?php // echo "<pre>" ?>
                            <?php // print_r($attribute_group); ?>
                            <?php // echo "/<pre>" ?>
                          <?php } ?>

                        </ul>
                        <ul class="pro__dtl__prize">
                          <?php if (!$special) { ?>
                          <li ><?php echo $price; ?></li>
                          <?php } else { ?>
                          <li class="old__prize"><?php echo $price; ?></li>
                          <li><?php echo $special; ?></li>
                          <?php } ?>
                        </ul>


                        <div id="product">
                          <?php if ($options) { ?>
                          <hr>
                          <h3><?php echo $text_option; ?></h3>
                          <?php foreach ($options as $option) { ?>
                          <?php if ($option['type'] == 'select') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                              <option value=""><?php echo $text_select; ?></option>
                              <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                              <?php if ($option_value['price']) { ?>
                              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                              <?php } ?>
                              </option>
                              <?php } ?>
                            </select>
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'radio') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                              <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <div class="radio">
                                <label>
                                  <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                  <?php if ($option_value['image']) { ?>
                                  <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                                  <?php } ?>
                                  <?php echo $option_value['name']; ?>
                                  <?php if ($option_value['price']) { ?>
                                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                  <?php } ?>
                                </label>
                              </div>
                              <?php } ?>
                            </div>
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'checkbox') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                              <?php foreach ($option['product_option_value'] as $option_value) { ?>
                              <div class="checkbox">
                                <label>
                                  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                  <?php if ($option_value['image']) { ?>
                                  <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                                  <?php } ?>
                                  <?php echo $option_value['name']; ?>
                                  <?php if ($option_value['price']) { ?>
                                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                  <?php } ?>
                                </label>
                              </div>
                              <?php } ?>
                            </div>
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'text') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'textarea') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'file') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'date') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group date">
                              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                              <span class="input-group-btn">
                              <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                              </span></div>
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'datetime') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group datetime">
                              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                              <span class="input-group-btn">
                              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                              </span></div>
                          </div>
                          <?php } ?>
                          <?php if ($option['type'] == 'time') { ?>
                          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group time">
                              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                              <span class="input-group-btn">
                              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                              </span></div>
                          </div>
                          <?php } ?>
                          <?php } ?>
                          <?php } ?>
                          <?php if ($recurrings) { ?>
                          <hr>
                          <h3><?php echo $text_payment_recurring; ?></h3>
                          <div class="form-group required">
                            <select name="recurring_id" class="form-control">
                              <option value=""><?php echo $text_select; ?></option>
                              <?php foreach ($recurrings as $recurring) { ?>
                              <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                              <?php } ?>
                            </select>
                            <div class="help-block" id="recurring-description"></div>
                          </div>
                          <?php } ?>
                          <div class="form-group">
                            <div class="product-action-wrap">
                                <div class="prodict-statas"><span><?php echo $entry_qty; ?> :</span></div>
                                <div class="product-quantity">
                                  <input type="text" name="quantity" value="<?php  echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                                  <input type="hidden" name="product_id" value="<?php  echo $product_id; ?>" />
                                </div>
                            </div>

                            <ul class="pro__dtl__btn">
                                <li class="buy__now__btn"><button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="cart__menu my_width_lg my_style_btn_product <!--btn btn-primary btn-lg btn-block-->"><?php echo $button_cart; ?></button></li>
                                <li><button class="my_style_btn_product my_width_xs cart__menu" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><span class="ti-heart"></span></button></li>
                                <li><button class="my_style_btn_product my_width_xs cart__menu" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><span class="ti-exchange-vertical"></span></button></li>
                            </ul>
                          </div>
                          <?php if ($minimum > 1) { ?>
                          <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                          <?php } ?>
                        </div>
                        <div class="pro__social__share">
                            <h2 class="title_social_networc">Поделиться: </h2>
                            <ul class="pro__soaial__link">
                              <!-- AddThis Button BEGIN -->
                              <li><div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div></li>
                              <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                              <!-- AddThis Button END -->
                                <!-- <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                                <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="zmdi zmdi-google-plus"></i></a></li> -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Product Details -->
<!-- Start Product tab -->
<section class="htc__product__details__tab bg__white pb--120">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                <ul class="product__deatils__tab mb--60" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#description" role="tab" data-toggle="tab"><?php echo $tab_description; ?></a>
                    </li>
                    <?php if ($attribute_groups) { ?>
                    <li role="presentation">
                        <a href="#sheet" role="tab" data-toggle="tab"><?php echo $tab_attribute; ?></a>
                    </li>
                  <?php }; ?>
                  <?php if ($review_status) { ?>
                    <li role="presentation">
                        <a href="#reviews" role="tab" data-toggle="tab"><?php echo $tab_review; ?></a>
                    </li>
                  <?php }; ?>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="my_margin_bottom70 product__details__tab__content">
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="description" class="product__tab__content fade in active">
                        <div class="product__description__wrap">
                            <div class="product__desc">
                              <?php echo $description; ?>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Content -->
                    <!-- Start Single Content -->
                    <?php if ($attribute_groups) { ?>
                    <div role="tabpanel" id="sheet" class="product__tab__content fade">
                        <div class="pro__feature">
                          <?php foreach ($attribute_groups as $attribute_group) { ?>
                                <div class="title_atribyts"><?php echo $attribute_group['name']; ?></div>
                                <ul class="feature__list">
                                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                    <li><i class="ti-info-alt"></i> <span class="attribute-name"><?php echo $attribute['name']; ?> : </span> <span class="attribute-text"><?php echo $attribute['text']; ?></span></li>
                                  <?php }; ?>
                                </ul>
                              <?php }; ?>
                            </div>
                    </div>
                  <?php }; ?>
                    <!-- End Single Content -->
                    <?php if ($review_status) { ?>
                    <!-- Start Single Content -->
                    <div role="tabpanel" id="reviews" class="product__tab__content fade">

                      <?php if ($review_status) { ?>
                      <div class="tab-pane" id="tab-review">
                        <form class="form-horizontal " id="form-review">
                          <div id="review"></div>
                          <h2 class="my-rating-title"><?php echo $text_write; ?></h2>
                          <?php if ($review_guest) { ?>
                          <div class="form-group required">
                            <div class="col-sm-12">
                              <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                              <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="my-s-form-revrait form-control" />
                            </div>
                          </div>
                          <div class="form-group required">
                            <div class="col-sm-12">
                              <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                              <textarea name="text" rows="5" id="input-review" class="my-s-form-revrait form-control"></textarea>
                              <div class="help-block"><?php echo $text_note; ?></div>
                            </div>
                          </div>
                          <div class="form-group required">
                            <div class="col-sm-12">
                              <label class="control-label"><?php echo $entry_rating; ?></label>
                              &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                              <input type="radio" name="rating" value="1" />
                              &nbsp;
                              <input type="radio" name="rating" value="2" />
                              &nbsp;
                              <input type="radio" name="rating" value="3" />
                              &nbsp;
                              <input type="radio" name="rating" value="4" />
                              &nbsp;
                              <input type="radio" name="rating" value="5" />
                              &nbsp;<?php echo $entry_good; ?></div>
                          </div>
                          <?php echo $captcha; ?>
                          <div class="buttons clearfix">
                              <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="my_s_btn my_style_btn_product fv-btn btn btn-primary"><?php echo $button_continue; ?></button>
                          </div>
                          <?php } else { ?>
                          <?php echo $text_login; ?>
                          <?php } ?>
                        </form>
                      </div>
                      <?php } ?>

                    </div>
                    <!-- End Single Content -->
                  <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
          <?php echo $content_bottom; ?>
        </div>
    </div>
</section>
<!-- End Product tab -->




<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('.shopping__cart__inner .shoping__total .total__price').html( json['total']);

				// $('html, body').animate({ scrollTop: 0 }, 'slow');

				jQuery('.shopping__cart .shp__cart__wrap').load('index.php?route=common/cart/info .shp__cart__wrap');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>

<script type="text/javascript">
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
</script>

<?php echo $footer; ?>
