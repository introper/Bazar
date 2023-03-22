<?php
ob_start();
session_start();

header("Content-type: text/html; charset=UTF-8");
include("data-ajax.php"); ?>
<!DOCTYPE html>
<html lang="cs">

<head>
    <title>Nazdar Bazar</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?php echo home_url(); ?>/template/data/css/fonts.css" rel="stylesheet" type="text/css">
    <!-- <link href="<?php echo home_url(); ?>/template/data/css/jquery-ui.css" rel="stylesheet" type="text/css">
    <link href="<?php echo home_url(); ?>/template/data/css/jquery-ui.structure.css" rel="stylesheet" type="text/css">
    <link href="<?php echo home_url(); ?>/template/data/css/jquery-ui.theme.css" rel="stylesheet" type="text/css"> -->
    <link href="<?php echo home_url(); ?>/template/data/css/swiper-bundle.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo home_url(); ?>/template/data/css/styles.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/jquery-3.6.3.min.js"></script>
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/jquery.validate.js"></script>
    <!-- <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/jquery-ui.min.js"></script> -->
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/scripts.js"></script>
    <?php wp_head() ?>

</head>

<body>
    <h1 class="screenReaderElement">Nazdar Bazar</h1>
    <header class="header">
        <div class="upper-part">
            <div class="container">
                <div class="flex-div">
                    <div class="hamburger-2">
                        <span>menu</span>
                    </div>
                    <a href="<?php echo home_url(); ?>" class="logo">
                        <?php $logo_small = get_field("logo", "options"); ?>
                        <?php $logo_full = get_field("logo_cele", "options"); ?>
                        <img src="<?php echo $logo_full["url"] ?>" alt="Nazdar Bazar" />
                        <img class="small" src="<?php echo $logo_small["url"] ?>" alt="Nazdar Bazar" />
                    </a>
                    <div class="search" id="search-icon">
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-holder">
            <nav class="links" aria-label="Navigace">
                <h2 class="screenReaderElement">Navigace</h2>
                <div class="close" id="close">
                    <div></div>
                    <div></div>
                </div>
                <ul>
                    <li><a href="<?php echo home_url(); ?>">Hlavní stránka</a></li>
                    <?php if (is_user_logged_in()) { ?>
                        <?php $currentUser = wp_get_current_user(); ?><li><a href="<?php echo get_author_posts_url($currentUser->ID); ?>">Vaše položky</a></li>
                        <li><a href="<?php echo wp_logout_url(home_url()); ?>">Odhlásit</a></li>
                    <?php } else { ?><li><a href="<?php echo home_url(); ?>/login">Přihlášení</a></li>
                        <li><a href="<?php echo home_url(); ?>/registrace">Registrace</a></li>
                    <?php } ?>
                </ul>
            </nav>
            <div class="bg" id="header-bg"></div>
        </div>
        <div class="search-part">
            <div class="container">
                <form action="<?php echo home_url(); ?>" method="GET" class="search">
                    <input type="text" class="search-input" name="s" placeholder="Hledat knihu">
                    <button class="btn search-btn border-blue">Hledat</button>
                </form>
            </div>

        </div>

    </header>