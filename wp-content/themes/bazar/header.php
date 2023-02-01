<?php ob_start(); ?>
<!DOCTYPE html>
<html lang="cs">

<head>
    <title>Nazdar Bazar</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?php echo home_url(); ?>/template/data/css/fonts.css" rel="stylesheet" type="text/css">
    <link href="<?php echo home_url(); ?>/template/data/css/styles.css" rel="stylesheet" type="text/css">
    <link href="<?php echo home_url(); ?>/template/data/css/swiper-bundle.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo home_url(); ?>/template/data/css/aksFileUpload.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/jquery-3.6.3.min.js"></script>
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/jquery.validate.js"></script>
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/aksFileUpload.js"></script>
    <script type="text/javascript" src="<?php echo home_url(); ?>/template/data/js/scripts.js"></script>
    <?php wp_head() ?>

</head>

<body>
    <h1 class="screenReaderElement">Nazdar Bazar</h1>
    <header class="header">
        <div class="container">
            <div class="flex-div">
                <a href="template-main.php" class="logo">
                    <img src="<?php echo home_url(); ?>/template/data/images/logo-black.svg" alt="Nazdar Bazar" />
                    <img class="small" src="<?php echo home_url(); ?>/template/dat/images/logo-small-black.svg" alt="Nazdar Bazar" />
                </a>
                <div class="hamburger">
                    <div></div>
                </div>
                <div class="bg"></div>
                <form action="<?php echo home_url(); ?>" method="GET" class="search">
                    <input type="text" class="search-input" name="s" placeholder="Hledat knihu">
                    <button class="btn search">Hledat</button>
                </form>
                <nav class="links" aria-label="Navigace">
                    <h2 class="screenReaderElement">Navigace</h2>
                    <ul>
                        <?php if (is_user_logged_in()) { ?>
                            <?php $currentUser = wp_get_current_user(); ?>
                            <li><a href="<?php echo get_author_posts_url($currentUser->ID); ?>">Položky</a></li>
                            <li><a href="<?php echo wp_logout_url(home_url()); ?>">Odhlásit</a></li>
                        <?php } else { ?>
                            <li><a href="<?php echo home_url(); ?>/login">Přihlášení</a></li>
                            <li><a href="<?php echo home_url(); ?>/registrace">Registrace</a></li>
                        <?php } ?>
                    </ul>
                </nav>
            </div>
        </div>
    </header>