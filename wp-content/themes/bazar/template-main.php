<?php
/*Template name: Hlavní stránka */

get_header();

$posts_per_page = 12;
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$priceOrder = getFilter(INPUT_GET, "price");
$arg = array(
    "post_type" => "kniha",
    'posts_per_page' => $posts_per_page,
    'paged' => $paged,
    "post_status" => "publish",
);
$sort = getFilter(INPUT_GET, "sort");

if ($sort) :
    $arg['orderby'] = 'post_date';
    if ($sort == "newest") :
        $arg['order'] = "DESC";
    else :
        $arg['order'] = "ASC";
    endif;
endif;

if ($priceOrder) :
    $arg["orderby"] = "meta_value_num";
    $arg['meta_key'] = 'cena';
    if ($priceOrder == "higher") :
        $arg["order"] = "DESC";
    else :
        $arg["order"] = "ASC";
    endif;
endif;

$query = new WP_Query($arg);
$total_pages = $query->max_num_pages;
$total_posts = $query->found_posts;
?>
<main role="main" class="main">
    <section class="main-section">
        <div class="container">
            <div class="filtering">
                <div class="close" id="close">
                    <div></div>
                    <div></div>
                </div>
                <div class="bg">
                </div>
                <div class="yes"></div>
                <form action="<?php echo esc_url(get_permalink()); ?>" method="GET" class="filter-form">
                    <div class="part">
                        <h3><?php echo _e("Kategorie", "Bazar-1"); ?></h3>
                        <?php
                        // Check if the form was submitted and the subcategory parameter is set
                        if (isset($_GET['subcategory'])) {
                            // Retrieve the selected subcategories
                            $subcategories = $_GET['subcategory'];

                            // Retrieve the posts that belong to the selected subcategories
                            $args = array(
                                'post_type' => 'kniha',
                                'tax_query' => array(
                                    array(
                                        'taxonomy' => 'product_category',
                                        'field' => 'name',
                                        'terms' => $subcategories,
                                    ),
                                ),
                            );
                            $query = new WP_Query($args);
                        }
                        ?>
                        <?php $terms = get_terms(array("taxonomy" => "product_category", "parent" => 0, "hide_empty" => false)); ?>
                        <?php if ($terms) : ?>
                            <?php foreach ($terms as $key => $item) : ?>
                                <ul class="checkbox-block">

                                    <li>
                                        <input value="<?php echo $item->name; ?>" type="checkbox" name="Subcategory" id="<?php echo $item->name; ?>">
                                        <label for="<?php echo $item->name; ?>"><span><?php echo $item->name; ?></span><span class="arrow-fil"></span></label>
                                        <?php $subTerms = get_terms(array("taxonomy" => "product_category", "parent" => $item->term_id, "hide_empty" => false)); ?>
                                        <?php if ($subTerms) : ?>
                                            <ul class="children">
                                                <?php foreach ($subTerms as $row) : ?>
                                                    <li class="checkbox-holder">
                                                        <input value="<?php echo $row->name; ?>" type="checkbox" name="subcategory[]" id="<?php echo $row->name; ?>">
                                                        <label for="<?php echo $row->name; ?>"><span><?php echo $row->name; ?></span></label>
                                                    </li>
                                                <?php endforeach; ?>
                                            </ul>
                                        <?php endif; ?>
                                    </li>

                                </ul>
                            <?php endforeach; ?>
                        <?php endif; ?>

                    </div>
                    <!-- <div class="part">
                        <h3>Cena od do</h3>
                        <div class="slide-part">
                            <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                            <div class="wrapper">
                                <input type="number" min=0 id="min_price" name="min_price" class="price-range-field" />
                                <input type="hidden" min=0 id="min_price_hidden" name="min_price" class="price-range-field" />
                                <span>Kč</span>
                            </div>
                            <div class="wrapper">
                                <input type="number" min=0 id="max_price" name="max_price" class="price-range-field" />
                                <input type="hidden" min=0 id="max_price_hidden" name="max_price" class="price-range-field" />
                                <span>Kč</span>
                            </div>
                        </div>
                    </div> -->
                    <div class="part">
                        <button href="" class="btn full-blue">Vyhledat</button>
                    </div>
                    <input type="hidden" name="page_id" value="<?php echo get_the_ID(); ?>">
                </form>
            </div>
            <div class="sorting">
                <a href="" class="btn full-blue " id="filter">Filtrace</a>
                <div class="sort">
                    <div class="holder">
                        <span>Řadit podle:</span>
                    </div>
                    <div class="dropdown">
                        <div class="active-select">
                            <?php
                            if ($sort) {
                                if ($sort == 'newest') {
                                    $active_item = 'Nejnovější';
                                } elseif ($sort == 'oldest') {
                                    $active_item = 'Nejstarší';
                                }
                            } elseif ($priceOrder) {
                                if ($priceOrder == 'higher') {
                                    $active_item = 'Nejdražší';
                                } elseif ($priceOrder == 'lower') {
                                    $active_item = 'Nejlevnější';
                                }
                            } else {
                                $active_item = 'Nejnovější';
                            }
                            ?>
                            <a href="#" class=""><?php echo $active_item; ?></a>
                        </div>
                        <div class="select-block">
                            <div class="select-item">
                                <a href="<?php echo add_query_arg('sort', 'newest', remove_query_arg('price')); ?>" id="newest" data-slug="newest" class="item-text">Nejnovější</a>
                            </div>
                            <div class="select-item">
                                <a href="<?php echo add_query_arg('sort', 'oldest', remove_query_arg('price')); ?>" id="oldest" data-slug="oldest" class="item-text">Nejstarší</a>
                            </div>
                            <div class="select-item">
                                <a href="<?php echo add_query_arg('price', 'higher', remove_query_arg('sort')); ?>" id="higher" data-slug="higher" class="item-text">Nejdražší</a>
                            </div>
                            <div class="select-item">
                                <a href="<?php echo add_query_arg('price', 'lower', remove_query_arg('sort')); ?>" id="lower" data-slug="lower" class="item-text">Nejlevnější</a>
                            </div>
                        </div>
                        <select name="sorting" id="sorting-select">
                            <option value="newest" <?php selected($sort, 'newest'); ?>>Nejnovější</option>
                            <option value="oldest" <?php selected($sort, 'oldest'); ?>>Nejstarší</option>
                            <option value="newest" <?php selected($priceOrder, 'higher'); ?>>Nejdražší</option>
                            <option value="oldest" <?php selected($priceOrder, 'lower'); ?>>Nejlevnější</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="content">

                <?php if ($query->have_posts()) : ?>
                    <?php while ($query->have_posts()) : $query->the_post(); ?>
                        <div class="item">
                            <div class="holder">
                                <?php if (get_the_post_thumbnail_url($post->ID)) : ?>
                                    <div class="img">
                                        <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>" />
                                    </div>
                                <?php endif; ?>
                                <h3><?php echo get_the_title($post->ID); ?></h3>
                            </div>
                            <div class="bottom">  
                                <?php $price = get_field("cena", $post->ID); ?>
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
            <?php if ($total_pages > 1) : ?>
                <div class="pagination">
                    <a href="<?php echo get_pagenum_link($paged - 1); ?>" class="btn border-blue left"><span><?php echo _e("Předchozí strana", "Bazr-1"); ?>
                </span><img src="<?php echo home_url(); ?>/templates/data/images/arrow-left-btn.svg" alt="" /></a>
                    <div class="pages">
                        <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
                            <?php if ($i == $paged) : ?>
                                <a href="" class="active"><span><?php echo $i; ?></span></a>
                            <?php else : ?>
                                <a href="<?php echo get_pagenum_link($i); ?>"><span><?php echo $i; ?></span></a>
                            <?php endif; ?>
                        <?php endfor; ?>
                    </div>
                    <a href="<?php echo get_pagenum_link($paged + 1); ?>" class="btn border-blue"><span><?php echo _e("Další strana", "Bazr-1"); ?>
                </span><img src="<?php echo home_url(); ?>/templates/data/images/arrow-blue-2.svg" alt="" /></a>
                </div>
            <?php endif; ?>
        </div>
    </section>
</main>
<?php
get_footer();
?>