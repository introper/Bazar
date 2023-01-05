<?php include("header.php") ?>
<main role="main" class="main">
    <div class="register-section">
        <div class="container">

            <form method="POST" id="registration-form" name="POST" class="register">
                <h2>Registrovat</h2>
                <div class="wrapper">
                    <input type="text" name="firstname" id="firstname" placeholder="Křestní jméno">
                    <label for="firstname"></label>
                </div>

                <div class="wrapper">
                    <input type="text" name="lastname" id="lastname" placeholder="Příjmení">
                    <label for="lastname"></label>
                </div>

                <div class="wrapper">
                    <input type="email" name="email" id="email" placeholder="E-mail">
                    <label for="email"></label>
                </div>

                <div class="wrapper">
                    <input type="password" name="password" id="password" placeholder="Heslo">
                    <label for="password"></label>
                </div>

                <div class="wrapper">
                    <input type="password" name="password2" id="password2" placeholder="Ověření hesla">
                    <label for="password2"></label>
                </div>

                <div class="wrapper">
                    <button type="submit" class="btn full-green">Registrovat</button>
                </div>

            </form>
        </div>
    </div>
</main>

<?php include("footer.php") ?>