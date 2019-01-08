<?php if ($home == $og_url) { ?>
<?php if ($modules) { ?>
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
<?php } ?>
<?php }else{ ?>
  <?php if ($modules) { ?>
  <aside id="column-right" class="col-sm-3 hidden-xs">
    <?php foreach ($modules as $module) { ?>
    <?php echo $module; ?>
    <?php } ?>
  </aside>
  <?php } ?>
<?php } ?>
