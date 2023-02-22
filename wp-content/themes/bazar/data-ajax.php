<?php


$setCategory = getFilter(INPUT_POST, "setCategory") !== null ? getFilter(INPUT_POST, "setCategory") : null;

if ($setCategory) :
    $mainTerm = get_term_by("slug", $setCategory, "product_category");
    $terms = get_terms(array("taxonomy" => "product_category", "parent" => $mainTerm->term_id, "hide_empty" => false));
    if (!empty($terms)) :
?>
        <div class="dropdown service-drop">
            <div class="active-select"><a href="#" id="">Vyberte předmět</a></div>
            <div class="select-block">
                <?php foreach ($terms as $item) : ?>
                    <div class="select-item">
                        <a href="#" id="<?php echo $item->slug; ?>" data-slug="<?php echo $item->slug; ?>" class="itme-text"><?php echo $item->name; ?></a>
                    </div>
                <?php endforeach; ?>
            </div>
            <select name="subject" id="sorting-select">
                <?php foreach ($terms as $item) : ?>
                    <option><?php echo $item->slug; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
<?php

        die();
    endif;
else :
    echo "";
endif;



$deletePostID = getFilter(INPUT_POST, "deletePostID") !== null ? getFilter(INPUT_POST, "deletePostID") : null;

if ($deletePostID) :
    $checkPost = get_post($deletePostID);
    if ($checkPost) :
        $checkDelete = wp_delete_post($checkPost->ID);
        if ($checkDelete) :
            echo "true";
        else :
            echo "Příspěvek nebyl vymazán";
        endif;
    else :
        echo "Neexistující příspěvek";
    endif;
    die();
else :
    echo "";
endif;

