<!-- Start Left Feature -->
<?php
  if($og_url == $home){
 ?>
<div class="col-md-3">
    <?php }; ?>
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
    <?php
      if($og_url == $home){
     ?>
</div>
  <?php }; ?>
