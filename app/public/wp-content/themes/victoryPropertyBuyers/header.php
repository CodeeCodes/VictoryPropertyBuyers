<!DOCTYPE html>
<html>
  <head>
  
    <?php wp_head(); ?>
  </head>
  <body>
    <header class="header">
    <div class="header__container">
      <h1 class="header__logo"><a href="home">Victory Property Buyers</a></h1>
   </div>
        <nav class="header__nav">
          <ul class="header__list">
       <div class="header__list-logo"></div>
            <li class="header__list-item"><a href="<?php echo site_url('/about-us')?>">About Us</a></li>
            <li class="header__list-item"><a href="<?php echo site_url('/how-it-works')?>">How It Works</a></li>
            <li class="header__list-item"><a href="<?php echo site_url('/testimonials')?>">Testimonials</a></li>
            <li class="header__list-item"><a href="<?php echo site_url('/blog')?>">Blog</a></li>
          </ul>
        </nav>
  </header>
