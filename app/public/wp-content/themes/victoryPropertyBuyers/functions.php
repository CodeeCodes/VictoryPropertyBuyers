<?php
function victorypropertybuyers_files()
{
    //loading JS files
    // wp_enqueue_script('codeecodes-js', get_theme_file_uri('/js/scripts-bundled.js'),NULL, microtime(), true);
    //loading css files
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Source+Code+Pro&display=swap');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    //first arg is "name", second file name

    // Conditionally enqueue
    if (is_front_page()) {
        // Front page stylesheet
        wp_enqueue_style('victoryPropertyBuyers_style', get_stylesheet_uri());
    } else if (is_page()) {
        // Static page style
        wp_enqueue_style('victoryPropertyBuyers_style', get_stylesheet_uri());
    } else {
        // Default style
        wp_enqueue_style('victoryPropertyBuyers_style', get_stylesheet_uri());
    }
}
//load JS files
    wp_enqueue_script('codeecodes-js', get_theme_file_uri('/js/scripts-bundled.js'),NULL, microtime(), true);


//calling function
//first arg "what instructions", second "name of function"
add_action('wp_enqueue_scripts', 'victorypropertybuyers_files');

//Removing the bar bump on the html attribute
function remove_admin_login_header()
{
    remove_action('wp_head', '_admin_bar_bump_cb');
}
add_action('get_header', 'remove_admin_login_header');

//Title header name
add_action('after_setup_theme', 'victorypropertybuyers_features');

function victorypropertybuyers_features(){
    add_theme_support('title-tag');
}

//Nav Menus
register_nav_menus(array(
    'primary' => __('Primary Menu'),
    'footer' => __('Footer Menu')
));
