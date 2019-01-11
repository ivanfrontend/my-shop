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
    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <h1><?php echo $heading_title; ?></h1>
        <?php echo $text_message; ?>
        <div class="buttons">
          <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
        <?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
  </div>
</section>
<?php echo $footer; ?>
