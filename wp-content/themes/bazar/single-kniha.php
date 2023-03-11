<?php


get_header();


$ID = get_queried_object_id();

$author_id = $post->post_author;
$authord = get_the_author_meta('user_email', $author_id);

?>
<main role="main" class="main">
    <section class="detail-section">
        <div class="container">
            <div class="centred">
                <div class="left">
                    <div class="swiper detail">
                        <!-- Additional required wrapper -->

                        <?php $gal = get_field("galerie", $ID); ?>
                        <?php if ($gal) : ?>
                            <div class="swiper-wrapper">
                                <!-- Slides -->
                                <?php foreach ($gal as $item) : ?>

                                    <div class="swiper-slide">
                                        <div href="" class="swiper-div">
                                            <img src="<?php echo $item['sizes']['thumbnail']; ?>" alt="">
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        <?php endif; ?>

                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-prev swiper-button-prev-detail">
                        <svg xmlns="http://www.w3.org/2000/svg" width="56" height="94" viewBox="0 0 56 94">
                            <path id="swiper-arrow-left" d="M47,0,94,56,47,12.551,0,56Z" transform="translate(0 94) rotate(-90)" fill="#fff" />
                        </svg>
                    </div>
                    <div class="swiper-button-next swiper-button-next-detail">
                        <svg xmlns="http://www.w3.org/2000/svg" width="56" height="94" viewBox="0 0 56 94">
                            <path id="swiper-arrow" d="M47,0,94,56,47,12.551,0,56Z" transform="translate(56) rotate(90)" fill="#fff" />
                        </svg>
                    </div>
                </div>
                <div class="right">

                    <?php $title = get_the_title($ID); ?>

                    <h2><?php echo $title ?></h2>
                    <?php $popisek = get_field("popisek", $ID); ?>
                    <?php if ($popisek) : ?>
                        <p><?php echo $popisek; ?></p>
                    <?php endif; ?>
                    <?php $cena = get_field("cena", $ID); ?>
                    <?php if ($cena) : ?>
                        <div class="price"><span>Cena: <strong><?php echo $cena; ?> Kč</strong></span></div>
                    <?php endif; ?>
                    <div class="contact">
                        <span>Kontakt na majitele:</span>

                        <a href="mailTo:<?php echo ($authord) ?>" class="email"><?php echo ($authord) ?></a>


                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<?php

get_footer();


?>