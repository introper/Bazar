<?php
/*Template name: Hlavní stránka */

get_header();


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
                <form action="" class="filter-form">
                    <div class="part">
                        <h3>Ročník</h3>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-1">
                                <label for="Subcategory-1"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-1.1">
                                        <label for="Subcategory-1.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-1.2">
                                        <label for="Subcategory-1.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-1.3">
                                        <label for="Subcategory-1.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>

                            </li>
                        </ul>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-1">
                                <label for="Subcategory-1"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-1.1">
                                        <label for="Subcategory-1.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-1.2">
                                        <label for="Subcategory-1.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-1.3">
                                        <label for="Subcategory-1.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>

                            </li>
                        </ul>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-2">
                                <label for="Subcategory-2"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-2.1">
                                        <label for="Subcategory-2.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-2.2">
                                        <label for="Subcategory-2.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-2.3">
                                        <label for="Subcategory-2.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="checkbox-block">
                            <li>
                                <input value="main-cat" type="checkbox" name="Subcategory" id="Subcategory-3">
                                <label for="Subcategory-3"><span>Podkategória</span><span class="arrow-fil"></span></label>
                                <ul class="children">
                                    <li class="checkbox-holder">
                                        <input value="subcategory-1" type="checkbox" name="Subcategory" id="Subcategory-3.1">
                                        <label for="Subcategory-3.1"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-2" type="checkbox" name="Subcategory" id="Subcategory-3.2">
                                        <label for="Subcategory-3.2"><span>Podkategória</span></label>
                                    </li>
                                    <li class="checkbox-holder">
                                        <input value="subcategory-3" type="checkbox" name="Subcategory" id="Subcategory-3.3">
                                        <label for="Subcategory-3.3"><span>Podkategória</span></label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="part">
                        <h3>Cena od do</h3>
                        <div class="slide-part">
                            <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                            <!-- <label for="min_price" class="slider-label">Od:</label> -->
                            <div class="wrapper">
                                <input type="number" min=0 id="min_price" name="min_price" class="price-range-field" />
                                <input type="hidden" min=0 id="min_price_hidden" name="min_price" class="price-range-field" />

                                <span>Kč</span>
                            </div>
                            <!-- <label for="max_price" class="slider-label">Do:</label> -->
                            <div class="wrapper">
                                <input type="number" min=0 id="max_price" name="max_price" class="price-range-field" />
                                <input type="hidden" min=0 id="max_price_hidden" name="max_price" class="price-range-field" />

                                <span>Kč</span>
                            </div>
                        </div>
                    </div>
                    <div class="part">
                        <button href="" class="btn full-blue">Vyhledat</button>
                    </div>
                </form>
            </div>
            <div class="sorting">
                <a href="" class="btn full-blue " id="filter">Filtrace</a>
                <div class="sort">
                    <div class="holder">
                        <span>Seřadit podle:</span>
                    </div>
                    <div class="dropdown">
                        <div class="active-select"><a href="#">Nejnovější</a></div>
                        <div class="select-block">
                            <div class="select-item">
                                <a href="#" id="newest" data-slug="newest" class="itme-text">Nejnovější</a>
                            </div>
                            <div class="select-item">
                                <a href="#" id="oldest" data-slug="oldest" class="itme-text">Nejstarší</a>
                            </div>
                        </div>
                        <select name="sorting" id="sorting-select">
                            <option>newest</option>
                            <option>oldest</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="content">
                <?php
                $arg = array(
                    "post_type" => "kniha",
                    "posts_per_page" => -1,
                    "post_status" => "publish"
                );
                ?>

                <?php $query = new WP_Query($arg); ?>

                <?php if ($query->have_posts()) : ?>
                    <?php while ($query->have_posts()) : $query->the_post(); ?>
                        <a href="<?php echo get_the_permalink($post->ID); ?>" class="item">
                            <?php if (get_the_post_thumbnail_url($post->ID)) : ?>
                                <div class="img">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>" />
                                    <div class="bg"></div>
                                    <?php $des = get_field("popisek", $post->ID); ?>
                                    <?php if ($des) : ?>
                                        <p><?php echo $des; ?></p>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>

                            <div class="text">
                                <h3><?php echo get_the_title($post->ID); ?></h3>
                                <?php $price = get_field("cena", $post->ID); ?>
                                <?php if ($price) : ?>
                                    <span><?php echo $price; ?> Kč</span>
                                <?php endif; ?>
                            </div>
                        </a>
                    <?php endwhile; ?>
                    <?php wp_reset_query(); ?>
                <?php endif; ?>
            </div>
            <div class="pagination-content">

            </div>
        </div>
    </section>
</main>
<?php

get_footer();


?>