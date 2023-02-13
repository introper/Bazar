<!DOCTYPE html>
<html lang="cs">

<head>
    <title>Nazdar Bazar</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="data/css/fonts.css" rel="stylesheet" type="text/css">
    <link href="data/css/jquery-ui.css" rel="stylesheet" type="text/css">
    <link href="data/css/jquery-ui.structure.css" rel="stylesheet" type="text/css">
    <link href="data/css/jquery-ui.theme.css" rel="stylesheet" type="text/css">
    <link href="data/css/swiper-bundle.min.css" rel="stylesheet" type="text/css">
    <link href="data/css/styles.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="data/js/jquery-3.6.3.min.js"></script>
    <script type="text/javascript" src="data/js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="data/js/jquery.validate.js"></script>
    <script type="text/javascript" src="data/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="data/js/scripts.js"></script>


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
                    <a href="template-main.php" class="logo">
                        <img src="data/images/logo-black.svg" alt="Nazdar Bazar" />
                        <img class="small" src="data/images/logo-small-black.svg" alt="Nazdar Bazar" />
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
                    <li><a href="">Položky</a></li>
                    <li><a href="">Odhlásit</a></li>
                    <li><a href="">Přihlášení</a></li>
                    <li><a href="">Registrace</a></li>
                </ul>
            </nav>
            <div class="bg" id="header-bg"></div>
        </div>
        <div class="search-part">
            <div class="container">
                <form action="" method="GET" class="search">
                    <input type="text" class="search-input" name="s" placeholder="Hledat knihu">
                    <button class="btn search-btn border-blue">Hledat</button>
                </form>
            </div>

        </div>

    </header>