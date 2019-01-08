<div class="col-md-9 col-lg-9 col-sm-8 col-xs-12 float-left-style">
		<!-- Start Slider Area -->
		<div class="slider__container slider--one">
				<div class="slider__activation__wrap owl-carousel owl-theme">
						<!-- Start Single Slide -->
						<?php foreach ($banners as $banner) { ?>
							<?php if($banner['link']){ ?>
						<div class="slide slider__full--screen slider-height-inherit slider-text-right" style="background: rgba(0, 0, 0, 0) url(<?php echo $banner['image']; ?>) no-repeat scroll center center / cover ;">
								<div class="container">
										<div class="row">
												<div class="col-md-10 col-lg-8 col-md-offset-2 col-lg-offset-4 col-sm-12 col-xs-12">
														<div class="slider__inner">
																<h1><?php echo $banner['title']; ?></h1>
																<div class="slider__btn">
																		<a class="htc__btn" href="<?php echo $banner['link']; ?>">Перейти</a>
																</div>
														</div>
												</div>
										</div>
								</div>
						</div>
					<?php }else{ ?>
						<!-- End Single Slide -->
						<!-- Start Single Slide -->
						<div class="slide slider__full--screen slider-height-inherit  slider-text-left" style="background: rgba(0, 0, 0, 0) url(<?php echo $banner['image']; ?>) no-repeat scroll center center / cover ;">
								<div class="container">
										<div class="row">
												<div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
														<div class="slider__inner">
																<h1><?php echo $banner['title']; ?></h1>

														</div>
												</div>
										</div>
								</div>
						</div>
					<?php } ?>
					<?php }; ?>
						<!-- End Single Slide -->
				</div>
		</div>
		<!-- Start Slider Area -->
</div>
