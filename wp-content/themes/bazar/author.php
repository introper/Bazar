<?php

get_header();

$ID = get_queried_object_id();
$userID = $ID;
$userObject = get_queried_object();

?>
<main role="main" class="main">
    <section class="inventory">
        <div class="container">
            <h2>Vaše položky</h2>
            <div class="add">
                <a href="" class="btn full-blue add-item">Přidat položku</a>
            </div>

            <div class="content">
                <?php
                $author_id = get_query_var('author');
                $arg = array(
                    'post_type' => 'kniha',
                    'posts_per_page' => -1,
                    'post_status' => 'publish',
                    'author' => $author_id
                );
                ?>
                <?php $query = new WP_Query($arg); ?>

                <?php if ($query->have_posts()) : ?>
                    <?php while ($query->have_posts()) : $query->the_post(); ?>
                        <div class="item">
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

                                <div class="holder">
                                    <?php $price = get_field("cena", $post->ID); ?>
                                    <?php if ($price) : ?>
                                        <span><?php echo $price; ?> Kč</span>
                                    <?php endif; ?>
                                    <a href="<?php echo get_delete_post_link($post->ID); ?>" class="delete">Smazat</a>
                                    <a href="#" class="edit-btn" data-target="<?php echo $post->post_name; ?>">Upravit</a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                    <?php wp_reset_query(); ?>
                <?php endif; ?>
            </div>

            <div class="modal modal-add">
                <div class="bg"></div>
                <div class="modal-text">
                    <div class="close" id="close">
                        <div></div>
                        <div></div>
                    </div>
                    <?php if ($_SERVER['REQUEST_METHOD'] == 'POST') : ?>
                        <?php $name = getFilter(INPUT_POST, "fullname"); ?>
                        <?php $price = getFilter(INPUT_POST, "fullprice"); ?>
                        <?php $desc = getFilter(INPUT_POST, "description"); ?>
                        <?php $category = getFilter(INPUT_POST, "class"); ?>
                        <?php $subject = getFilter(INPUT_POST, "subject"); ?>
                        <?php $files = $_FILES; ?>
                        <?php
                        $countFiles = count($_FILES["files"]["name"]);
                        var_dump($files);
                        $arg = array(
                            "post_type" => "kniha",
                            "post_status" => "publish",
                            "post_title" => $name
                        );
                        $newPost = wp_insert_post($arg);
                        if ($newPost) :
                            update_post_meta($newPost, "cena", $price);
                            update_post_meta($newPost, "popisek", $desc);
                            $classTerm = get_term_by("slug", $category, "product_category");
                            $subjectTerm = get_term_by("slug", $subject, "product_category");
                            if ($classTerm && $subjectTerm) :
                                wp_set_post_terms($newPost, array($classTerm->term_id, $subjectTerm->term_id), "product_category");
                            endif;

                            if (!empty($_FILES)) :
                                $imagesArray = array();
                                for ($int = 0; $int < $countFiles; $int++) :
                                    $imageurl = $files["files"]["tmp_name"][$int];
                                    //$imagetype = $files["files"]["type"][$int];
                                    $timeUpload = time();
                                    $filename = $timeUpload . "_" . basename(str_replace(" ", "", $files["files"]["name"][$int]));
                                    $uniq_name = $int . "_" . date('dmY') . '' . (int) microtime(true);

                                    $uploaddir = wp_upload_dir();
                                    $uploadfile = $uploaddir['path'] . '/' . $filename;
                                    $contents = file_get_contents($imageurl);
                                    $savefile = fopen($uploadfile, 'w');
                                    fwrite($savefile, $contents);
                                    fclose($savefile);

                                    $wp_filetype = wp_check_filetype(basename($filename), null);
                                    $attachment = array(
                                        'post_mime_type' => $wp_filetype['type'],
                                        'post_title' => $filename,
                                        'post_content' => '',
                                        'post_status' => 'inherit'
                                    );
                                    $attach_id = wp_insert_attachment($attachment, $uploadfile);
                                    $imagenew = get_post($attach_id);
                                    $fullsizepath = get_attached_file($imagenew->ID);
                                    $attach_data = wp_generate_attachment_metadata($attach_id, $fullsizepath);
                                    wp_update_attachment_metadata($attach_id, $attach_data);
                                    $imagesArray[] = $attach_id;
                                endfor;
                                update_field("galerie", $imagesArray, $newPost);
                                set_post_thumbnail($newPost, $imagesArray[0]);
                            endif;


                        endif;
                        ?>
                    <?php endif; ?>
                    <h3>Vytvořit položku</h3>
                    <form action="<?php echo get_author_posts_url($ID); ?>" class="form-review" method="POST" enctype="multipart/form-data">
                        <div class="upper">
                            <div class="left">
                                <div class="form-holder">
                                    <input type="text" name="fullname" id="name" />
                                    <label for="name">Název</label>
                                </div>
                                <div class="form-holder">
                                    <input type="number" name="fullprice" id="price" />
                                    <label for="price">cena</label>
                                </div>
                                <div class="form-holder drop">
                                    <?php $terms = get_terms(array("taxonomy" => "product_category", "parent" => 0, "hide_empty" => false)); ?>
                                    <?php if ($terms) : ?>
                                        <div class="holder">
                                            <h4>Ročník</h4>
                                            <div class="dropdown">
                                                <div class="active-select"><a href="#" id="">Vyberte ročník</a></div>
                                                <div class="select-block">
                                                    <?php foreach ($terms as $item) : ?>
                                                        <div class="select-item">
                                                            <a href="#" id="<?php echo $item->slug; ?>" data-slug="<?php echo $item->slug; ?>" class="itme-text"><?php echo $item->name; ?></a>
                                                        </div>
                                                    <?php endforeach; ?>
                                                </div>
                                                <select name="class" id="sorting-year">
                                                    <?php foreach ($terms as $item) : ?>
                                                        <option><?php echo $item->slug; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                    <div class="holder hidden" style="display: none;">
                                        <h4>Předmět</h4>
                                        <div class="generated">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class=" right">
                                <div class="form-holder">
                                    <textarea name="description" id="description" cols="30" rows="10" class="service"></textarea>
                                    <label for="description">Popis</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-holder">

                            <div class="file-upload">
                                <div class="upload-field">
                                    <div class="fake-button" id="drop-zone">Vyberte soubor</div>
                                    <input type="file" class="file-upload-field" id="fileInput" name="files[]" multiple="multiple" />
                                </div>
                                <div id="fileList" class="file-upload-items"></div>
                                <div id="error" class="error"></div>
                            </div>
                        </div>
                        <div class="form-holder button">
                            <button type="submit" name="submit-new" class="btn full-blue">Vytvořit</button>
                        </div>
                    </form>
                </div>
            </div>

            <?php $query = new WP_Query($arg); ?>
            <?php if ($query->have_posts()) : ?>
                <?php while ($query->have_posts()) : $query->the_post(); ?>
                    <?php
                    $idPost = $post->ID;
                    ?>
                    <?php if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['form' . $idPost])) : ?>
                        <?php

                        $price = getFilter(INPUT_POST, "fullprice");
                        $desc = getFilter(INPUT_POST, "description");

                        if ($desc) :
                            update_post_meta($idPost, "description", $desc);
                        endif;

                        if ($price) :
                            update_post_meta($idPost, "fullprice", $price);
                        endif;

                        wp_redirect(get_author_posts_url($userID));

                        ?>
                    <?php endif; ?>

                    <div class="modal modal-edit" id="<?php echo $post->post_name; ?>">
                        <div class=" bg">
                        </div>
                        <div class="modal-text">
                            <div class="close" id="close">
                                <div></div>
                                <div></div>
                            </div>
                            <h3>Upravte položku</h3>
                            <form action="" class="form-review" method="POST">
                                <div class="upper">
                                    <div class="left">
                                        <div class="form-holder">
                                            <input type="text" name="name" id="name" value="<?php echo get_the_title($post->ID); ?>" />
                                            <label class="active" for="name">Název</label>
                                        </div>
                                        <div class="form-holder">
                                            <input type="number" name="fullprice" id="fullprice" value="<?php echo $price; ?>" />
                                            <label class="active" for="fullprice">Cena</label>
                                        </div>
                                        <div class=" form-holder drop">
                                            <div class="holder">
                                                <h4>Ročník</h4>
                                                <div class="dropdown">
                                                    <div class="active-select"><a href="#" id="">4. ročík</a></div>
                                                    <div class="select-block">
                                                        <div class="select-item">
                                                            <a href="#" id="year-1" data-slug="year-1" class="itme-text">1. ročík</a>
                                                        </div>
                                                        <div class="select-item">
                                                            <a href="#" id="year-2" data-slug="year-2" class="itme-text">2. ročík</a>
                                                        </div>
                                                        <div class="select-item">
                                                            <a href="#" id="year-3" data-slug="year-3" class="itme-text">3. ročík</a>
                                                        </div>
                                                        <div class="select-item">
                                                            <a href="#" id="year-4" data-slug="year-4" class="itme-text">4. ročík</a>
                                                        </div>
                                                    </div>
                                                    <select name="sorting" id="sorting-select">
                                                        <option>year-1</option>
                                                        <option>year-2</option>
                                                        <option>year-3</option>
                                                        <option>year-4</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="holder">
                                                <h4>Předmět</h4>
                                                <div class="dropdown service-drop">
                                                    <div class="active-select"><a href="#" id="">IT</a></div>
                                                    <div class="select-block">
                                                        <div class="select-item">
                                                            <a href="#" id="IT" data-slug="IT" class="itme-text">IT</a>
                                                        </div>
                                                        <div class="select-item">
                                                            <a href="#" id="AJ" data-slug="AJ" class="itme-text">AJ</a>
                                                        </div>
                                                        <div class="select-item">
                                                            <a href="#" id="zem" data-slug="zem" class="itme-text">Zem</a>
                                                        </div>
                                                        <div class="select-item">
                                                            <a href="#" id="bio" data-slug="bio" class="itme-text">Bio</a>
                                                        </div>
                                                    </div>
                                                    <select name="sorting" id="sorting-select">
                                                        <option>IT</option>
                                                        <option>AJ</option>
                                                        <option>zem</option>
                                                        <option>bio</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" right">
                                        <div class="form-holder">
                                            <?php $des = get_field("popisek", $post->ID); ?>
                                            <textarea name="description" id="description" cols="30" rows="10" class="service"><?php echo $des; ?></textarea>
                                            <label class="active" for="description">Popisek</label>
                                        </div>

                                    </div>
                                </div>
                                <div class="form-holder button">
                                    <button type="submit" name="form<?php echo $idPost; ?>" class=" btn full-blue">Upravit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                <?php endwhile; ?>
                <?php wp_reset_query(); ?>
            <?php endif; ?>
        </div>
    </section>
</main>

<?php

get_footer();


?>