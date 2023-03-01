<?php
/*Template name: Login */
if (!is_user_logged_in()) :
    get_header();

    if ($_SERVER['REQUEST_METHOD'] == 'POST') :

        $email = getFilter(INPUT_POST, "login-email");
        $pass = getFilter(INPUT_POST, "login-password");

        $emailErrorMessage = "";
        $emailError = false;

        $passwordErrorMessage = "";
        $passwordError = false;

        $mailExists = email_exists($email);
        if ($mailExists) :
            $userData = get_user_by("email", $email);
            $allowed_roles = array('subscribers');
            if (!array_intersect($allowed_roles, $userData->roles)) :
                $passwordCheck = wp_check_password($pass, $userData->user_pass, $mailExists);
                if ($passwordCheck) :
                    $userMeta = get_user_meta($mailExists);
                    $errorMessage = "";
                    $creds = array(
                        "user_login" => $userMeta["nickname"][0],
                        "user_password" => $pass,
                        "remember" => true
                    );

                    $login = wp_signon($creds, false);

                    if (is_wp_error($login)) :
                        $emailErrorMessage = $login->get_error_message();
                    endif;
                    // if ($login) :
                    //     $dashboard = get_field("hlavni_panel", "options");
                    //     wp_redirect(get_the_permalink($dashboard));
                    // endif;

                    if ($login) :
                        wp_redirect(home_url());
                        exit;
                    endif;

                else :
                    $passwordError = true;
                    $passwordErrorMessage = "Heslo není správné.";
                endif;
            else :
                $emailError = true;
                $emailErrorMessage = "Zvolte jiného uživatele.";
            endif;
        else :
            $emailError = true;
            $emailErrorMessage = "E-mail neexistuje.";
        endif;
    endif;

?>
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
<?php else : ?>

    <?php wp_redirect(home_url()); ?>
<?php endif; ?>
<?php

get_footer();


?>