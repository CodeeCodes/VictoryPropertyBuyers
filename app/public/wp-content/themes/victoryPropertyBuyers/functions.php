<?php
function codeecodes_files(){
    //loading JS files
   // wp_enqueue_script('codeecodes-js', get_theme_file_uri('/js/scripts-bundled.js'),NULL, microtime(), true);
    //loading css files
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Source+Code+Pro&display=swap');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    //first arg is "name", second file name
    wp_enqueue_style('victoryPropertyBuyers_style', get_stylesheet_uri());
}
//calling function
//first arg "what instructions", second "name of function"
add_action('wp_enqueue_scripts', 'codeecodes_files');
?>