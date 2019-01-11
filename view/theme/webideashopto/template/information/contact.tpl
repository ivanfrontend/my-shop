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

<section class="htc__contact__area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                        <div class="htc__contact__container">
                            <div class="htc__contact__address">
                                <h2 class="contact__title">Контактная информация</h2>
                                <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-location-pin"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p>Location : <br> 77, seventh avenue, Brat road USA.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                </div>
                                <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-mobile"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p> Phone : <br><a href="#">+012 345 678 102 </a></p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-email"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p> Mail :<br><a href="#">info@example.com</a></p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                </div>
                            </div>
                            <div class="contact-form-wrap">



                            <!-- НЕ УДОЛЯТЬ. НИЖНЯЯ ПОРМА РАБОТАЕТ ПОКА НЕ УДАЛИШЬ ЭТУ (РАЗАБРАТЬСЯ С БАГОМ) -->
                            <form style="display:none;" id="contact-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                              <fieldset>

                              </fieldset>
                                <div class="single-contact-form">
                                    <div class="contact-box name">
                                        <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" placeholder="Your Nme*">
                                        <?php if ($error_name) { ?>
                                        <div class="text-danger"><?php echo $error_name; ?></div>
                                        <?php } ?>
                                        <input type="email" name="email" value="<?php echo $email; ?>" id="input-email" placeholder="Mail*">
                                        <?php if ($error_email) { ?>
                                        <div class="text-danger"><?php echo $error_email; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="single-contact-form">
                                    <div class="contact-box message">
                                        <textarea name="enquiry" id="input-enquiry" placeholder="Massage*"><?php echo $enquiry; ?></textarea>
                                        <?php if ($error_enquiry) { ?>
                                        <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="contact-btn">
                                    <!-- <button type="submit" class="fv-btn">SEND</button> -->
                                    <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
                                </div>
                            </form>
                            <!-- /НЕ УДОЛЯТЬ. НИЖНЯЯ ПОРМА РАБОТАЕТ ПОКА НЕ УДАЛИШЬ ЭТУ (РАЗАБРАТЬСЯ С БАГОМ) -->




                            <form id="contact-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                              <fieldset>
                                <legend><?php echo $text_contact; ?></legend>

                                <div class="single-contact-form">
                                    <div class="contact-box name">
                                        <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" placeholder="Имя*">
                                        <?php if ($error_name) { ?>
                                        <div class="text-danger"><?php echo $error_name; ?></div>
                                        <?php } ?>
                                        <input type="email" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" placeholder="E-mail*">
                                        <?php if ($error_email) { ?>
                                        <div class="text-danger"><?php echo $error_email; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="single-contact-form">
                                    <div class="contact-box message">
                                        <textarea name="enquiry" id="input-enquiry" class="form-control" placeholder="Сообщение*"><?php echo $enquiry; ?></textarea>
                                        <?php if ($error_enquiry) { ?>
                                        <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>

                                <?php echo $captcha; ?>
                              </fieldset>
                                <div class="contact-btn">
                                    <input class="my-fv-btn fv-btn btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
                                </div>
                            </form>












                        </div>
                        <div class="form-output">
                            <p class="form-messege"></p>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 smt-30 xmt-30">
                        <div class="map-contacts">
                            <div id="googleMap"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<?php echo $footer; ?>
