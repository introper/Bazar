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
{
    $labels = array(
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
        'menu_name'         => __('Kategorie', 'textdomain'),
    );

    $args = array(
        'hierarchical'      => true,
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array('slug' => 'kategorie'),
    );

    register_taxonomy('product_category', array('kniha'), $args);
}
add_action('init', 'codex_taxonomy_kniha', 0);

add_theme_support('post-thumbnails', array('kniha', "post"));


add_action('wp', 'delete_expired_coupons_daily');
function delete_expired_coupons_daily()
{
    if (!wp_next_scheduled('delete_expired_coupons')) {
        wp_schedule_event(time(), 'daily', 'delete_expired_coupons');
    }
}
add_action('delete_expired_coupons', 'delete_expired_coupons_callback');
function delete_expired_coupons_callback()
{
    $args = array(
        'post_type' => 'kniha',
        'posts_per_page' => -1
    );

    $coupons = new WP_Query($args);
    if ($coupons->have_posts()) :
        while ($coupons->have_posts()) : $coupons->the_post();
            // get the post publish date  
            $test = get_the_date();
            // convert it to strto 
            $converter = strtotime($test);
            // add 3 months to it
            $deletedate = date(strtotime("+3 month", $converter));
            // check if today is more than 3 months of publish date
            if (time() > $deletedate) {
                wp_delete_post(get_the_ID());
                //Use wp_delete_post(get_the_ID(),true) to delete the post from the trash too.                  
            }

        endwhile;
    endif;
}


// Add custom role "Customer"
add_role('customer', 'Customer', array(
    'read' => true, // Can view pages
    'edit_posts' => true, // Cannot edit pages
    'publish_posts' => false, // Cannot publish pages
    'upload_files' => false, // Can upload files
    'delete_posts' => false,
    'delete_others_posts' => false,
    'delete_published_posts' => false,
    'delete_private_posts' => false,
));

function restrict_access_to_admin_area() {
    $user = wp_get_current_user();
    if ( in_array( 'customer', (array) $user->roles ) ) {
        wp_redirect( home_url() );
        exit;
    }
}
add_action( 'admin_init', 'restrict_access_to_admin_area' );