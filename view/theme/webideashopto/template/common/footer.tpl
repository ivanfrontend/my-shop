
<!-- Start Footer Area -->
<footer class="htc__foooter__area gray-bg">
    <div class="container">
        <div class="row">
            <div class="footer__container clearfix">
                 <!-- Start Single Footer Widget -->
                <div class="col-md-3 col-lg-3 col-sm-6">
                    <div class="ft__widget">
                        <div class="ft__logo">
                            <a href="<?php echo $home; ?>">
                                <img src="<?php echo $logo; ?>" alt="footer logo">
                            </a>
                        </div>
                        <div class="footer-address">
                            <ul>
                                <li>
                                    <!-- <div class="address-icon">
                                        <i class="zmdi zmdi-pin"></i>
                                    </div> -->
                                    <div class="address-text">
                                        <p>Сайт Webidea-shop продаёт<br/> товары по всей РБ Беларусь</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="address-icon">
                                        <i class="zmdi zmdi-email"></i>
                                    </div>
                                    <div class="address-text">
                                        <a href="#"> info@webidea.by</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="address-icon">
                                        <i class="zmdi zmdi-phone-in-talk"></i>
                                    </div>
                                    <div class="address-text">
                                        <p>+375 44 713 25 10 </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <ul class="social__icon">
                            <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                            <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                            <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                            <li><a href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Single Footer Widget -->
                <!-- Start Single Footer Widget -->
                <div class="col-md-3 col-lg-2 col-sm-6 smt-30 xmt-30">
                    <div class="ft__widget">
                        <h2 class="ft__title">Категории</h2>
                        <ul class="footer-categories">
                          <?php  foreach ($categories as $category) { ?>
                             <li><a href="<?php echo $category['href']; ?>"><?php  echo $category['name']; ?></a></li>
                          <?php  }; ?>
                        </ul>
                    </div>
                </div>
                <!-- Start Single Footer Widget -->
                <div class="col-md-3 col-lg-2 col-sm-6 smt-30 xmt-30">
                    <div class="ft__widget">
                        <h2 class="ft__title"><?php echo $text_information; ?></h2>

                        <ul class="footer-categories">
                          <?php foreach ($informations as $information) { ?>
                          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                          <?php } ?>
                          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                        </ul>
                    </div>
                </div>
                <!-- Start Single Footer Widget -->
                <div class="col-md-3 col-lg-3 col-lg-offset-1 col-sm-6 smt-30 xmt-30">
                  <div class="ft__widget">
                      <h2 class="ft__title"><?php echo $text_account; ?></h2>

                      <ul class="footer-categories">
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                      </ul>
                  </div>
                </div>
                <!-- End Single Footer Widget -->
            </div>
        </div>
        <!-- Start Copyright Area -->
        <div class="htc__copyright__area">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="copyright__inner">
                        <div class="copyright">
                            <p>© 2018-<?php echo date('Y'); ?> <a href="#">Сайт разработан webidea</a>
                            Все прова защищены</p>
                        </div>
                        <ul class="footer__menu">
                          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Copyright Area -->
    </div>
</footer>
<!-- End Footer Area -->
</div>
<!-- Body main wrapper end -->
<!-- QUICKVIEW PRODUCT -->
<div id="quickview-wrapper">
<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal__container" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="modal-product">
                    <!-- Start product images -->
                    <div class="product-images">
                        <div class="main-image images">
                            <img alt="big images" src="">
                        </div>
                    </div>
                    <!-- end product images -->
                    <div class="product-info">
                        <h1>Simple Fabric Bags</h1>
                        <div class="rating__and__review">
                            <ul class="rating">
                                <li><span class="ti-star"></span></li>
                                <li><span class="ti-star"></span></li>
                                <li><span class="ti-star"></span></li>
                                <li><span class="ti-star"></span></li>
                                <li><span class="ti-star"></span></li>
                            </ul>
                            <div class="review">
                                <a href="#">4 customer reviews</a>
                            </div>
                        </div>
                        <div class="price-box-3">
                            <div class="s-price-box">
                                <span class="new-price">$17.20</span>
                                <span class="old-price">$45.00</span>
                            </div>
                        </div>
                        <div class="quick-desc">
                            Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
                        </div>
                        <div class="select__color">
                            <h2>Select color</h2>
                            <ul class="color__list">
                                <li class="red"><a title="Red" href="#">Red</a></li>
                                <li class="gold"><a title="Gold" href="#">Gold</a></li>
                                <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                <li class="orange"><a title="Orange" href="#">Orange</a></li>
                            </ul>
                        </div>
                        <div class="select__size">
                            <h2>Select size</h2>
                            <ul class="color__list">
                                <li class="l__size"><a title="L" href="#">L</a></li>
                                <li class="m__size"><a title="M" href="#">M</a></li>
                                <li class="s__size"><a title="S" href="#">S</a></li>
                                <li class="xl__size"><a title="XL" href="#">XL</a></li>
                                <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
                            </ul>
                        </div>
                        <div class="social-sharing">
                            <div class="widget widget_socialsharing_widget">
                                <h3 class="widget-title-modal">Share this product</h3>
                                <ul class="social-icons">
                                    <li><a target="_blank" title="rss" href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
                                    <li><a target="_blank" title="Linkedin" href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
                                    <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                    <li><a target="_blank" title="Tumblr" href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
                                    <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="addtocart-btn">
                            <a href="#">Add to cart</a>
                        </div>
                    </div><!-- .product-info -->
                </div><!-- .modal-product -->
            </div><!-- .modal-body -->
        </div><!-- .modal-content -->
    </div><!-- .modal-dialog -->
</div>
<!-- END Modal -->
</div>
<!-- END QUICKVIEW PRODUCT -->
<!-- Placed js at the end of the document so the pages load faster -->

<script src="catalog/view/theme/webideashopto/assets/js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="catalog/view/theme/webideashopto/assets/js/plugins.js"></script>
<script src="catalog/view/theme/webideashopto/assets/js/slick.min.js"></script>
<script src="catalog/view/theme/webideashopto/assets/js/owl.carousel.min.js"></script>
<!-- Waypoints.min.js. -->
<script src="catalog/view/theme/webideashopto/assets/js/waypoints.min.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="catalog/view/theme/webideashopto/assets/js/main.js"></script>

</body>

</html>
