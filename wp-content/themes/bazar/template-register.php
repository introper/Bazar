<?php
/*Template name: Registrace */
get_header();

if (!is_user_logged_in()) :

    if ($_SERVER['REQUEST_METHOD'] == 'POST') :

        $errorMessage = "";
        $created = false;

        $email = getFilter(INPUT_POST, "email");
        $firstName = getFilter(INPUT_POST, "firstname");
        $lastName = getFilter(INPUT_POST, "lastname");
        $heslo = getFilter(INPUT_POST, "password");
        $heslo2 = getFilter(INPUT_POST, "password2");

        $newUserArg = array(
            "user_pass" => $heslo,
            "user_login" => remove_accents(strtolower(str_replace(" ", "", $firstName . " " . $lastName))),
            "user_nicename" => remove_accents(strtolower(str_replace(" ", "", $firstName . " " . $lastName))),
            "user_email" => $email,
            "first_name" => $firstName,
            "last_name" => $lastName,
            "role" => "subscriber"
        );

        $newUser = wp_insert_user($newUserArg);
        //var_dump($newUser);
        $mailExists = email_exists($email);
        if ($mailExists) :
            if (!is_wp_error($newUser)) :
                $errorMessage = "Uživatel byl vytvořen";
                $created = true;
                $userData = get_user_by("email", $email);
                $passwordCheck = wp_check_password($heslo, $userData->user_pass, $email);
                if ($passwordCheck) :
                    $userMeta = get_user_meta($mailExists);
                    $errorMessage = "";
                    $creds = array(
                        "user_login" => $email,
                        "user_password" => $heslo,
                        "remember" => true
                    );

                    $login = wp_signon($creds, false);
                    if (is_wp_error($login)) :
                        $errorMessage = $login->get_error_message();
                    else :
                        wp_redirect(home_url());
                        exit;
                    endif;
                    if ($login) :
                        $errorMessage = "Uživatel byl úspěšně vytvořen";
                        wp_redirect(home_url());
                    endif;
                endif;
            else :
                $errorMessage = "Uživatel nebyl vytvořen.";
                $created = false;
            endif;
        else :
            $emailError = true;
            $errorMessage = "E-mail již existuje.";
        endif;

    endif;

?>
    <main role="main" class="main">
        <div class="register-section">
            <div class="container">
                <?php if ($_SERVER['REQUEST_METHOD'] == 'POST') : ?>
                    <div class="errorblock <?php if ($created) : ?> green <?php else : ?> red <?php endif; ?>">
                        <?php echo $errorMessage; ?>
                    </div>
                <?php endif; ?>
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
<?php else : ?>

    <?php wp_redirect(home_url()); ?>
<?php endif; ?>
<?php

get_footer();



?>