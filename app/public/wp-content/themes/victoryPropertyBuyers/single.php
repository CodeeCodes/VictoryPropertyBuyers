  <?php
    get_header()
    ?>
    <div class="blog">
    <div class="blog__hero">
        <div class="blog__hero-overlay">
            <h1 class="blog__hero-overlay--text">
                <strong><?php the_title(); ?></strong>
            </h1>
        </div>
    </div>
</div>
  <div class="blog__post">
      <?php
        //getting post from WP
        while (have_posts()) {
            the_post(); ?>

          <h1 class="blog__post-heading"><?php the_title(); ?></h1>
          <p class="blog__post-text"> <?php
                                        the_content();
                                        ?></p>
  </div>

      <?php  } ?>

  <?php
    get_footer()
    ?>