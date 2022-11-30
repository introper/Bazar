<?php include("header.php") ?>
<main role="main" class="main">
    <div class="register-section">
        <div class="container">

            <form method="POST" id="POST" name="POST" class="register">
                <h2>Registrovat</h2>
                <input type="text" name="krestnijmeno" id="krestnijmeno" placeholder="Křestní jméno">

                <input type="text" name="prijmeni" id="prijmeni" placeholder="Příjmení">

                <input type="email" name="email" id="email" placeholder="E-mail">

                <input type="password" name="heslo" id="heslo" placeholder="Heslo">

                <input type="password" name="heslo2" id="heslo2" placeholder="Ověření hesla">
                <button type="submit" class="btn full-green">Registrovat</button>
            </form>
        </div>
    </div>
</main>

<?php include("footer.php") ?>