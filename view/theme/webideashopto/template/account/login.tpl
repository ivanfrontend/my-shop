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
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Bradcaump area -->


<!-- Start Login Register Area -->
<div class="htc__login__register bg__white ptb--130">
    <div class="container">
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php } ?>


        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <ul class="login__register__menu" role="tablist">
                    <li role="presentation" class="login active"><a href="#login" role="tab" data-toggle="tab"><?php echo $text_i_am_returning_customer; ?></a></li>
                    <li role="presentation" class="register"><a href="#register" role="tab" data-toggle="tab"><?php echo $text_register; ?></a></li>
                </ul>
            </div>
        </div>
        <!-- Start Login Register Content -->
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="htc__login__register__wrap">
                    <!-- Start Single Content -->
                    <div id="login" role="tabpanel" class="single__tabs__panel tab-pane fade in active">

                      <form action="<?php echo $action; ?>" class="login" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                          <!-- <label class="control-label" for="input-email"><?php // echo $entry_email; ?></label> -->
                          <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                        </div>
                        <div class="form-group">
                          <!-- <label class="control-label" for="input-password"><?php // echo $entry_password; ?></label> -->
                          <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                          <div class="tabs__checkbox">

                              <span class="forget"><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></span>
                          </div>
                          </div>
                          <div class="htc__login__btn">
                        <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
                      </div>
                        <?php if ($redirect) { ?>
                        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                        <?php } ?>
                      </form>
                        <div class="htc__social__connect">
                            <h2>Мы в соц сетях</h2>
                            <ul class="htc__soaial__list">
                                <li><a class="bg--twitter" href="#"><i class="zmdi zmdi-twitter"></i></a></li>

                                <li><a class="bg--instagram" href="#"><i class="zmdi zmdi-instagram"></i></a></li>

                                <li><a class="bg--facebook" href="#"><i class="zmdi zmdi-facebook"></i></a></li>

                                <li><a class="bg--googleplus" href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Single Content -->
                    <!-- Start Single Content -->
                    <div id="register" role="tabpanel" class="single__tabs__panel tab-pane fade">
                      <p class="tabs__checkbox my_style_text-align-justify"><?php echo $text_register_account; ?></p>
                        <!-- <form class="login" method="post">
                            <input type="text" placeholder="Name*">
                            <input type="email" placeholder="Email*">
                            <input type="password" placeholder="Password*">
                        </form> -->
                        <div class="htc__login__btn">
                            <!-- <a href="#">register</a> -->
                            <a href="<?php echo $register; ?>" class=" "><?php echo $button_continue; ?></a>
                        </div>
                        <div class="htc__social__connect">
                            <h2>Мы в соц сетях</h2>
                            <ul class="htc__soaial__list">
                                <li><a class="bg--twitter" href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                                <li><a class="bg--instagram" href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                                <li><a class="bg--facebook" href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                <li><a class="bg--googleplus" href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Single Content -->
                </div>
            </div>
        </div>
        <!-- End Login Register Content -->
    </div>
</div>
<!-- End Login Register Area -->
<?php echo $footer; ?>
