<footer class="footer">
  <nav class="footer__nav">
    <div class="footer__nav-div--left">
      <ul class="footer__nav-list">
        <li class="footer__nav-list--item">
          <h3 class="footer__nav-list item-heading">Contact Us At:</h3>
        </li>
        <li class="footer__nav-list--item">
          <h5 class="footer__nav-list item-heading">Email: info@victorypropertybuyers.com</h5>
        </li>
        <li class="footer__nav-list--item">
          <h5 class="footer__nav-list item-heading">Office Hours:</h5>
        </li>
        <li class="footer__nav-list--item">
          <h5 class="footer__nav-list item-heading">Monday - Sunday</h5>
        </li>
        <li class="footer__nav-list--item">
          <h5 class="footer__nav-list item-heading">24/7 7 days a week</h5>
        </li>
      </ul>

    </div>
    <div class="footer__nav-div--right">
      <ul class="footer__nav-list">
        <li class="footer__nav-list--item">
          <h3 class="footer__nav-list item-heading">Social:</h3>
        </li>
        <li class="footer__nav-list--item">
          <h5 class="footer__nav-list item-heading">Victory Property Buyers<img class="footer__nav-image" src="/wp-content/themes/victoryPropertyBuyers/images/svg/facebook.svg" alt="facebook"></h5>
        </li>
        <li class="footer__nav-list--item">
          <h5 class="footer__nav-list item-heading">@VictoryPropertyBuyers<img class="footer__nav-image" src="/wp-content/themes/victoryPropertyBuyers/images/svg/instagram.svg" alt="instagram"></h5>
        </li>
      </ul>
    </div>
    <div class="footer__wp-flex">
      <!--  WP Navigation input from functions.php   -->
      <nav class="footer__wp-menu">
        <?php $args = array('theme_location' => 'footer') ?>
        <?php wp_nav_menu($args); ?>
      </nav>

    </div>
  </nav>

</footer>
<div class="form__popup-overlay">
  <div class="form__popup">

    <form action="/action_page.php" class="form__popup-container" id="myForm">
      <h1>Cash Offer</h1>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit" class="btn">Login</button>
      <button type="submit" class="btn cancel" onclick="closeForm()">Close</button>
    </form>
  </div>
</div>
</body>

</html>