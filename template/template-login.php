<?php include("header.php") ?>
<main role="main" class="main">
    <section class="login-section">
        <div class="container">
            <form action="#" method="POST" class="login">
                <h2>Přihlásit</h2>
                <div class="form-holder">
                    <input type="email" name="login-email" id="email">
                    <label for="email">Email</label>
                </div>
                <div class="form-holder">
                    <input type="password" name="login-password" id="login-password">
                    <label for="login-password">Heslo</label>
                </div>
                <button class="btn full-blue">Přihlásit</button>
            </form>
        </div>
    </section>
</main>

<?php include("footer.php") ?>