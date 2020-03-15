<?php
get_header()
?>
<div class="blog">
    <div class="blog__hero">
        <div class="blog__hero-overlay">
            <h1 class="blog__hero-overlay--text">
                <strong>Welcome to Our Blog</strong>
            </h1>
        </div>
    </div>
</div>

<div class="blog__post-div">
    <?php
    //getting post from WP
    while (have_posts()) {
        the_post(); ?>

        <h1 class="blog__post"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
        <p class="blog__post-text"> <?php
                                    the_content();
                                    ?></p>

    <?php  } ?>

</div>

<?php
get_footer()
?>