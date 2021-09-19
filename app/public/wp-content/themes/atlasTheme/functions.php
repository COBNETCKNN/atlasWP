<?php 

function atlasTheme_files() {
    //enqueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');
    wp_enqueue_style('slickCSS', 'https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css');

    //enqueing JS
    wp_enqueue_script('jquery');
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script('fontAwesome', 'https://kit.fontawesome.com/24bc428ad4.js');
    wp_enqueue_script('slickJS', 'https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js', array(), 1.0, true);
}
add_action('wp_enqueue_scripts', 'atlasTheme_files');


// THEME SUPPORT
add_theme_support( 'custom-logo' );
add_theme_support('menus');

// CUSTOM IMAGE SIZES
add_image_size('aboutusGallery', 700, 500, true);
add_image_size('testimonialSize', 370, 210, true);