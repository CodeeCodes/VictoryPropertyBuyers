<?php
/*
Template Name: Faq
*/
?>
<?php
get_header()
?>
<div class="faq">
    <div class="faq__hero-overlay">
        <div class=faq__image>
            <h2 class="faq__image-overlay">FAQ</h2>
        </div>
    </div>

 <div class="faq__div-big--flex">
    <?php while (have_posts()) : the_post();

        get_template_part('page-faq');

        if (comments_open() || get_comments_number());
        comments_template();

    endwhile;

    
    ?>
 </div>

<?php
get_footer();
?>