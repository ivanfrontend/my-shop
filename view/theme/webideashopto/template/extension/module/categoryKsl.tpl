
<div class="col-md-3">

    <div class="product-categories-all">
        <div class="product-categories-title">
            <h3>Категории</h3>
        </div>
        <div class="product-categories-menu">
            <ul>
                <?php foreach ($categories as $category) { ?>
										<?php if ($category['category_id'] == $category_id) { ?>
                <li><a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a></li>
							<?php }else{ ?>
								<li><a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a></li>
							<?php }; ?>
              <?php }; ?>
            </ul>
        </div>
    </div>

</div>
