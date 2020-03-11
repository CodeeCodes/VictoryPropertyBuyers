  <?php
    get_header()
    ?>
  <?php
    //getting post from WP
    while (have_posts()) {
        the_post(); ?>
<h1>page not a post
</h1>
      <h1 class="blog__post"><?php the_title(); ?></h1>
      <p class="blog__post-text"> <?php
                                    the_content();
                                    ?></p>

  <?php  } ?>

  <?php
    get_footer()
    ?>