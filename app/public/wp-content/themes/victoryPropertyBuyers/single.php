  <?php
  get_header()
  ?>
  <div class="blog">
    <div class="blog__hero">
      <div class="blog__hero-overlay">
        <h1 class="blog__hero-overlay--text">
          <?php the_title(); ?>
        </h1>
      </div>
    </div>
  </div>
  <div class="blog__post--single">
    <?php
    //getting post from WP
    while (have_posts()) {
      the_post(); ?>

      <h1 class="blog__post-heading"><?php the_title(); ?></h1>
      <div class="blog__post-user">
        <p class="blog__post-user--text">
          Posted by <?php
                    the_author_posts_link()
                    ?>
          on
          <?php
          the_time('F j, Y')
          ?>
          in
          <?php
          //get keyword needs to be echoed out
          echo get_the_category_list(', ');
          ?>
        </p>
      </div>
      <?php
      the_content();
      ?>
  </div>

  <?php  } ?>

  <?php
  get_footer()
  ?>