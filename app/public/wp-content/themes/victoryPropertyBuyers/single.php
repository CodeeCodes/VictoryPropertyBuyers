  <?php
    get_header()
    ?>
  <?php
    //getting post from WP
    while (have_posts()) {
        the_post(); ?>
      <div class="blog__post">
          <h1 class="blog__post-heading"><?php the_title(); ?></h1>
          <p class="blog__post-text"> <?php
                                        the_content();
                                        ?></p>
      </div>

  <?php  } ?>

  <?php
    get_footer()
    ?>