<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php wp_head(); ?>
</head>

<body>
  <nav class="header">
    <div class="header__social-bar">
      <h5 class="header__social-bar--heading"> CALL OR TEXT NOW: <a class="number" href="tel:+16199001080">+1 619-900-1080</a></h5>
      <div class="header__svg-div">
        <h5 class="header__social-bar--heading">Connect With Us:</h5><img class="header__svg" src="/wp-content/themes/victoryPropertyBuyers/images/svg/facebook.svg" alt="facebook">
        <img class="header__svg" src="/wp-content/themes/victoryPropertyBuyers/images/svg/instagram.svg" alt="instagram">
      </div>
    </div>
    <div class="header__nav-low">
      <a class="header__image" href="<?php echo site_url('/') ?>">
        <div class="header__image-div"><img class="header__image" src="/wp-content/themes/victoryPropertyBuyers/images/victory-property-buyers-logo.jpg" alt="logo"></div>
      </a>
      <nav class="header__nav">
        <?php $args = array('theme_location' => 'primary') ?>
        <?php wp_nav_menu($args); ?>
      </nav>
    </div>
  </nav>