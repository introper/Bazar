<?php

add_filter('show_admin_bar', '__return_false');
function getFilter($type, $name)
{
    return htmlspecialchars(strip_tags(filter_input($type, $name)));
}
