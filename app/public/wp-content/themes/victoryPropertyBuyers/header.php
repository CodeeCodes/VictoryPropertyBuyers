<!DOCTYPE html>
<html>

<head>
  <?php wp_head(); ?>
</head>

<body>
  <header class="header">
    <div class="header__social-bar">
      <h5 class="header__social-bar--heading"> CALL OR TEXT NOW: +1 609 900 1080</h5>
      <div class="header__svg-div">
        <h5 class="header__social-bar--heading">Connect With Us:</h5><img class="header__svg" src="/wp-content/themes/victoryPropertyBuyers/images/svg/facebook.svg" alt="facebook">
        <img class="header__svg" src="/wp-content/themes/victoryPropertyBuyers/images/svg/instagram.svg" alt="instagram">
      </div>
    </div>
    <nav class="header__nav">
      <ul class="header__list">
        <a class="header__image" href="<?php echo site_url('/') ?>"><img class="header__image" src="/wp-content/themes/victoryPropertyBuyers/images/victory-property-buyers-logo.jpg" alt="logo"></a>
        <li class="header__list-item"><a href="<?php echo site_url('/') ?>">Home</a></li>
        <li class="header__list-item"><a href="<?php echo site_url('/about-us') ?>">About Us</a></li>
        <li class="header__list-item"><a href="<?php echo site_url('/blog') ?>">Blog</a></li>
        <li class="header__list-item"><a href="<?php echo site_url('/faq') ?>">FAQ</a></li>
      </ul>
    </nav>

  </header>