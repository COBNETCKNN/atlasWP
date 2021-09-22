
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
     <div class="m-auto bg-black">   
        <div class="lg:flex justify-between lg:px-10">
        <!-- LEFT SECTION -->
        <div class="flex justify-between py-4 bg-black">
        <a href="/">
            <div class="flex justify-start">
                <div class="logo">
                    <?php 
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                        echo '<img src="' . esc_url( $custom_logo_url ) . '" alt="">';
                    ?>
                </div>

            </div>
        </a>
        <!-- HAMBURGER MENU -->
        <button class="nav-toggler lg:hidden rounded" data-target="#navigation">
            <i class="fas fa-bars text-3xl px-4 text-white"></i>
        </button>
        </div>

        <div class="hidden top-navbar w-full lg:flex lg:w-auto md:mt-0 bg-black" id="navigation">
          <!-- MIDDLE MENU SECTION -->
          <div class="flex text-textgray lg:text-xl xl:text-2xl m-auto">
              <?php wp_nav_menu(array(
                'menu_class' => 'lg:flex text-gray-200 font-montserrat text-xl lg:text-base font-medium leading-loose',
            )); ?>  
          </div>
        </div>
      </div>
    </div>
</nav>