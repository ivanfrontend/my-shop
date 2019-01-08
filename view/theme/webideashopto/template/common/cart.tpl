<!-- Start Cart Panel -->
<div class="shopping__cart">
    <div class="shopping__cart__inner">
        <div class="offsetmenu__close__btn">
            <a href="#"><i class="zmdi zmdi-close"></i></a>
        </div>
        <div class="shp__cart__wrap">

          <?php if($products){ ?>
          <!-- 1 prod  -->
          <?php foreach ($products as $product) { ?>
            <div class="shp__single__product">
                <div class="shp__pro__thumb">
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                </div>
                <div class="shp__pro__details">
                    <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                    <span class="quantity">Модель: <?php echo $product['model']; ?></span><br/>
                    <span class="quantity">Количество: <?php echo $product['quantity']; ?></span>
                    <span class="shp__price"><?php echo $product['price']; ?></span>
                </div>
                <div class="remove__btn">
                  <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class=""><i class="zmdi zmdi-close"></i></button>
                </div>
            </div>
          <?php }; ?>
          <?php }else{ ?>
          <?php }; ?>
  <!-- /1 prod  -->

        </div>
        <ul class="shoping__total">
            <li class="subtotal">Итог:</li>
            <li class="total__price"><?php echo $text_items; ?></li>
        </ul>
        <ul class="shopping__btn">
            <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
            <li class="shp__checkout"><a href="<?php echo $home; ?>compare-products/">В Сравнение</a></li>
            <li id="my_wishlist-total" class="shp__checkout"><a href="<?php echo $wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li>
        </ul>
    </div>
</div>
<!-- End Cart Panel -->
