<!-- Start Left Feature -->
<?php
  // print_r($home);
  // print_r($og_url);
  if($og_url == $home){
 ?>
<div class="col-md-3">
    <div class="product-categories-all">
        <div class="product-categories-title">
            <h3>Категории</h3>
        </div>
        <div class="product-categories-menu">
            <ul>
                <?php foreach ($categories as $category) { ?>

                <li><a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a></li>
              <?php }; ?>
            </ul>
        </div>
    </div>
</div>
<?php }else{ ?>
<div class="col-md-12 my-z2">
  <div class="htc__shop__cat">
      <h4 class="section-title-4">Категории</h4>
      <ul class="sidebar__list">
        <?php foreach ($categories as $category) { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php }; ?>
      </ul>
  </div>
</div>
<?php }; ?>
