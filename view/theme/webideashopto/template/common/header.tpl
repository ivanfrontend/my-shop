<!doctype html>
<html class="no-js" lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $title; ?></title>
		<meta name="description" content="<?php echo $description; ?>" />
		<meta name="keywords" content="<?php echo $keywords; ?>" />
		<base href="<?php echo $base; ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/bootstrap.min.css">
    <!-- Owl Carousel main css -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/custom.css">

    <link rel="stylesheet" href="catalog/view/theme/webideashopto/assets/css/my_main.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    <!-- jquery latest version -->
    <script src="catalog/view/theme/webideashopto/assets/js/vendor/jquery-1.12.0.min.js"></script>

    <script src="catalog/view/theme/webideashopto/assets/js/common.js"></script>
    <!-- Bootstrap framework js -->
    <!-- Modernizr JS -->
    <script src="catalog/view/theme/webideashopto/assets/js/vendor/modernizr-2.8.3.min.js"></script>

		<?php foreach ($links as $link) { ?>
		<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
		<?php } ?>
		<?php foreach ($styles as $style) { ?>
		<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
		<?php } ?>
		<?php foreach ($scripts as $script) { ?>
		<script src="<?php echo $script; ?>" type="text/javascript"></script>
		<?php } ?>
		<?php foreach ($analytics as $analytic) { ?>
		<?php echo $analytic; ?>
		<?php } ?>
</head>

<body class=" <?php echo $class; ?>">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Header Style -->
        <header id="header" class="htc-header header--3 bg__white">
          <div class="wrap_header_info">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                      <div class="phone_header">
                        <span> <a href="tel:+375447132510"><span class="ti-mobile"></span> +375447132510</a></span>
                        <span> <a href="mailto:info@webidea.by"><span class="ti-email"></span> info@webidea.by</a></span>
                        <span> | </span>
                        <span> <span class="ti-alarm-clock"></span> Время работы: с 9:00 до 20:00</span>
                      </div>
                    </div>
                </div>
            </div>
          </div>
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-lg-2 col-sm-3 col-xs-3">
                            <div class="logo">
                                <a href="<?php echo $home; ?>">
                                    <img style="margin-bottom: 15px;" src="<?php echo $logo; ?>" alt="logo">
                                </a>
                            </div>
                        </div>
                        <!-- Start MAinmenu Ares -->
                        <div class="col-md-7 col-lg-8 col-sm-6 col-xs-6">
                            <nav class="mainmenu__nav hidden-xs hidden-sm">
                                <ul class="main__menu">
                                 <li><a href="<?php echo $home; ?>"><?php echo $text_home;  ?></a></li>
                                 <li><a href="<?php echo $home; ?>specials/">Акции</a></li>
                                 <li><a href="<?php echo $home; ?>brands/">Производители</a></li>
                                 <li><a href="<?php echo $informations[0]['href']; ?>"><?php echo $informations[0]['title']; ?></a></li>
                                  <?php if ($logged) { ?>
                                 <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <?php };  ?>
                                 <li><a href="<?php echo $home; ?>novosti/">Новости</a></li>
                                 <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                                </ul>
                            </nav>
                            <div class="mobile-menu clearfix visible-xs visible-sm">
                                <nav id="mobile_dropdown">
                                    <ul>
                                      <li><a href="<?php echo $home; ?>"><?php echo $text_home;  ?></a></li>
                                      <li><a href="<?php echo $home; ?>specials/">Акции</a></li>
                                      <li><a href="<?php echo $home; ?>brands/">Производители</a></li>
                                      <li><a href="<?php echo $informations[0]['href']; ?>"><?php echo $informations[0]['title']; ?></a></li>
                                       <?php if ($logged) { ?>
                                      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                     <?php };  ?>
                                      <li><a href="<?php echo $home; ?>novosti/">Новости</a></li>
                                      <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- End MAinmenu Ares -->
                        <div class="col-md-3 col-sm-4 col-xs-3">
                            <ul class="menu-extra">
                                <li data-my-title="Поиск" class="my-title-data search search__open hidden-xs"><span class="ti-search"></span></li>
                                <?php if ($logged) { ?>
                                <li data-my-title="Выход" class="my-title-data"><a href="<?php echo $logout; ?>"><span class="ti-user"></span></a></li>
                              <?php }else{ ?>
                                <li data-my-title="Вход" class="my-title-data"><a href="<?php echo $login; ?>"><span class="ti-home"></span></a></li>
                              <?php } ?>
                                <li data-my-title="Корзина" class="cart__menu my-title-data"><span class="ti-shopping-cart"></span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Style -->







        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get">
                                    <input placeholder="Search here... " type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Search Popap -->

            <?php echo $cart; ?>
        </div>
        <!-- End Offset Wrapper -->




















      <?php if ($home == $og_url) { ?>
        <!-- Start Feature Product -->
        <section class="categories-slider-area bg__white">
        		<div class="container">
        				<div class="row">
                  <?php // echo $column_left; ?>
                  <?php  echo $column_right; ?>


        						<!-- Start Left Feature -->
        						<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12 float-right-style ">
        						            <div class="categories-menu mrg-xs">
        						                <div class="category-heading">
        						                   <h3>Каталог</h3>
        						                </div>
        						                <div class="category-menu-list">
        						                    <ul>
        						                      <?php foreach ($categories as $category) { ?>
        						                        <?php if ($category['children']) { ?>
        						                      <li><a href="<?php echo $category['href']; ?>"><img alt="" src="images/icons/thum6.png"> <?php echo $category['name']; ?> <i class="zmdi zmdi-chevron-right"></i></a>
        						                            <div class="category-menu-dropdown">
        						                                <div class="category-menu-dropdown-left">
        						                                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
        						                                    <div class="category-part-1 category-common2">
        						                                        <ul>
        						                                          <?php foreach ($children as $child) { ?>
        						                                            <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
        						                                            <?php } ?>
        						                                        </ul>
        						                                    </div>
        						                                    <?php } ?>
        						                                </div>
        						                                <!-- <div class="category-menu-dropdown-right">
        						                                    <div class="menu-right-img">
        						                                        <a href="#"><img src="images/feature-img/1.png" alt=""></a>
        						                                    </div>
        						                                </div> -->
        						                            </div>
        						                        </li>
        						                      <?php }else{ ?>
        						                        <li><a href="<?php echo $category['href']; ?>"><img alt="" src="images/icons/thum6.png"> <?php echo $category['name']; ?> </a></li>
        						                      <?php } }; ?>
        						                    </ul>
        						                </div>
        						            </div>
        						        </div>



        </section>
<?php }; ?>
