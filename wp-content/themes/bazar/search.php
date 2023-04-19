<?php

get_header();


$search = get_search_query();

$arg = array(
    "post_type" => "kniha",
    "post_posts_page" => -1,
    "post_status" => "publish",
    "s" => $search
);
$query = new WP_Query($arg);
?>



<main role="main" class="main">
    <div class="search-section">
        <div class="container">
            <h2>Vyhledávání "<?php echo $search; ?>"</h2>
            <div class="content">

                <?php if ($query->have_posts()) : ?>
                    <?php while ($query->have_posts()) : $query->the_post(); ?>
                        <div href="<?php echo get_the_permalink($post->ID); ?>" class="item">
                            <div class="holder">
                                <?php if (get_the_post_thumbnail_url($post->ID)) : ?>
                                    <div class="img">
                                        <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>" />
                                    </div>
                                <?php endif; ?>

                                <h3><?php echo get_the_title($post->ID); ?></h3>
                                <?php $price = get_field("cena", $post->ID); ?>

                            </div>
                            <div class="bottom">
                                <?php if ($price) : ?>
                                    <span><strong><?php echo _e("Cena:", "Bazar-1"); ?></strong> <?php echo $price; ?> Kč</span>
                                <?php endif; ?>
                                <a href="<?php echo get_the_permalink($post->ID); ?>" class="btn full-blue"><?php echo _e("zobrazit", "Bazar-1"); ?></a>
                            </div>
                        </div>
                    <?php endwhile; ?>
                    <?php wp_reset_query(); ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<?php

get_footer();


?>