<?php
get_header()
?>
<?php $blogName = " Welcome To Our Blog" ?>
<div class="blog">
    <div class="blog__hero">
        <div class="blog__hero-overlay">
            <h1 class="blog__hero-overlay--text">
                <?php echo $blogName  ?>
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
            <div class="blog__post--flex">
                <h1 class="blog__post"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
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
                the_excerpt();
                ?>
                <p class="blog__post-continue"><a class="blog__post-continue--link" href="<?php
                                                                                            the_permalink(); ?>">Continue Reading &raquo;</a></p>
            </div>
        </div>
    <?php  }
    ?>
    <?php
    echo paginate_links();
    ?>
</div>
<?php
get_footer()
?>