<?php

if (is_user_logged_in()) {
    show_admin_bar(false);
}
if (function_exists('acf_add_options_page')) {
    acf_add_options_page("Konfigurace");
}

function getFilter($type, $name)
{
    return htmlspecialchars(strip_tags(filter_input($type, $name)));
}
function add_file_types_to_uploads($file_types)
{
    $new_filetypes = array();
    $new_filetypes['svg'] = 'image/svg+xml';
    $file_types = array_merge($file_types, $new_filetypes);
    return $file_types;
}
add_filter('upload_mimes', 'add_file_types_to_uploads');

require ABSPATH . 'wp-admin/includes/image.php';


function cpt_kniha()
{
    $labels = array(
        'name' => _x('Knihy', 'post type general name', 'your-plugin-textdomain'),
        'singular_name' => _x('Knihy', 'post type singular name', 'your-plugin-textdomain'),
        'edit_item' => __('Upravit knihu', 'your-plugin-textdomain'),
        'view_item' => __('Zobrazit knihu', 'your-plugin-textdomain'),
        'all_items' => __('Všechny knihy', 'your-plugin-textdomain'),
        'search_items' => __('Vyhledat knihy', 'your-plugin-textdomain'),
        'parent_item_colon' => __('Superior:', 'your-plugin-textdomain'),
        'not_found' => __('Kniha nebyla nalezena.', 'your-plugin-textdomain'),
        'not_found_in_trash' => __('Kniha nebyla nazelezena v koši.', 'your-plugin-textdomain')
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'kniha'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array('title', "page-attributes", "post-formats", "thumbnail", "excerpt"),
        "show_in_rest" => true
    );
    register_post_type('kniha', $args);
}

add_action('init', 'cpt_kniha', 0);


function codex_taxonomy_kniha()
{$labels = array(
        'name'              => _x('Kategorie', 'taxonomy general name', 'textdomain'),
        'singular_name'     => _x('Kategorie', 'taxonomy singular name', 'textdomain'),
        'search_items'      => __('Vyhledat kategorii', 'textdomain'),
        'all_items'         => __('Kategorie', 'textdomain'),
        'parent_item'       => __('Kategorie', 'textdomain'),
        'parent_item_colon' => __('Kategorie:', 'textdomain'),
        'edit_item'         => __('Upravit kategorii', 'textdomain'),
        'update_item'       => __('Upravit kategorii', 'textdomain'),
        'add_new_item'      => __('Přidat kategorii', 'textdomain'),
        'new_item_name'     => __('Nová kategorie', 'textdomain'),
        'menu_name'         => __('Kategorie', 'textdomain'),);
    $args = array(
        'hierarchical'      => true,
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array('slug' => 'kategorie'),);
    register_taxonomy('product_category', array('kniha'), $args);}
add_action('init', 'codex_taxonomy_kniha', 0);
add_theme_support('post-thumbnails', array('kniha', "post"));


function move_posts_to_trash()
{global $wpdb;
    $post_type = 'kniha';
    $date = date('Y-m-d', strtotime('-3 months'));
    $posts = $wpdb->get_results(
        "SELECT * FROM $wpdb->posts
        WHERE post_type = '$post_type'
        AND post_status = 'publish'
        AND post_date <= '$date'");
    foreach ($posts as $post) {
        wp_trash_post($post->ID);}}
add_action('wp', 'move_posts_to_trash');


add_role('customer', 'Customer', array(
    'read' => true,
    'edit_posts' => true,
    'publish_posts' => false,
    'upload_files' => false,
    'delete_posts' => false,
    'delete_others_posts' => false,
    'delete_published_posts' => false,
    'delete_private_posts' => false,));

function restrict_access_to_admin_area()
{
    $user = wp_get_current_user();
    if (in_array('customer', (array) $user->roles)) {
        wp_redirect(home_url());
        exit;
    }
}
add_action('admin_init', 'restrict_access_to_admin_area');

add_action('phpmailer_init', 'my_phpmailer_smtp');
function my_phpmailer_smtp($phpmailer)
{
    $phpmailer->isSMTP();
    $phpmailer->SMTPAuth = SMTP_AUTH;
    $phpmailer->Port = SMTP_PORT;
    $phpmailer->Username = SMTP_USER;
    $phpmailer->Password = SMTP_PASS;
    $phpmailer->SMTPSecure = SMTP_SECURE;
    $phpmailer->From = SMTP_FROM;
    $phpmailer->FromName = SMTP_NAME;
}


function send_email_by_mailtrap_finish($test)
{
    $email = 'michalhasic03@seznam.cz';
    $title = sprintf(
        __('Test "%s" finished', 'Mailtrap'),
        $test->post_title
    );
    $body = '...';
    $content_type = function () {
        return 'text/html';
    };
    add_filter('wp_mail_content_type', $content_type);
    wp_mail($email, $title, $body);
    remove_filter('wp_mail_content_type', $content_type);
}
