
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset');?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php wp_title( '|', true, 'right' ); ?></title>

    <?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<nav id="navbar">
    <div class="mx-auto">
        <div class="flex justify-between py-4 bg-black">
        <!-- LOGO SECTION -->
        <div class="logo pl-10">
        <a href="<?php echo home_url(); ?>">
            <?php 
                $custom_logo_id = get_theme_mod( 'custom_logo' );
                $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                echo '<img src="' . esc_url( $custom_logo_url ) . '" alt="">';
            ?>
            </a>
        </div>
        <!-- NAV ITEMS SECTION -->
        <div class="flex justify-center my-auto mr-10">
            <?php wp_nav_menu(array(
                'menu_class' => 'flex text-gray-200 font-montserrat text-base font-medium leading-loose',
            )); ?>
        </div>
        </div>
    </div>
</nav>