<?php 

function atlasTheme_files() {
    //enqueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');

    //enqueing JS
    wp_enqueue_script('jquery');
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script('fontAwesome', 'https://kit.fontawesome.com/24bc428ad4.js');
}
add_action('wp_enqueue_scripts', 'atlasTheme_files');


// THEME SUPPORT
add_theme_support( 'custom-logo' );
add_theme_support('menus');