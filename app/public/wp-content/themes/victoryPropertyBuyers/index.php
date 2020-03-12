<?php
get_header()
?>
<?php $blogName = " Welcome To Our Blog" ?>
<div class="blog">
    <div class="blog__hero">
        <div class="blog__hero-overlay">
            <h1 class="blog__hero-overlay--text">
                <strong><?php echo $blogName  ?></strong>
            </h1>
        </div>
    </div>
</div>

<div class="blog__post-div">
    <?php
    //getting post from WP

    while (have_posts()) {
        the_post(); ?>
        <div class="blog__post-div--small">
            <h1 class="blog__post"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
            <?php
            the_content();
            ?>
        </div>

    <?php  }
    ?>

</div>
<?php
get_footer()
?>