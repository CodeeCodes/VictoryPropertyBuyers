<!DOCTYPE html>
<html>

<head>
  <?php wp_head(); ?>
</head>

<body>
  <header class="header">
    <nav class="header__nav">
      <ul class="header__list">
        <a class="header__image" href="<?php echo site_url('/') ?>"><img class="header__image" src="/wp-content/themes/victoryPropertyBuyers/images/victory-property-buyers-logo.jpg" alt="logo"></a>
        <li class="header__list-item"><a href="<?php echo site_url('/') ?>">Home</a></li>
        <li class="header__list-item"><a href="<?php echo site_url('/about-us') ?>">About Us</a></li>
        <li class="header__list-item"><a href="<?php echo site_url('/testimonials') ?>">Testimonials</a></li>
        <li class="header__list-item"><a href="<?php echo site_url('/blog') ?>">Blog</a></li>
      </ul>
    </nav>
  </header>