<?php get_header(); ?>

<section id="aboutusPage">
    <section id="heading" class="py-40">
        <h1 class="text-4xl text-center font-abhaya uppercase text-white"><?php the_title(); ?></h1>
    </section>
    <section id="aboutusPage_content" class="bg-black">
        <div class="container mx-auto">
            <div class="grid grid-cols-2 gap-4 py-20">
                <!-- CONTENT COLUMN -->
                <div class="text-center text-white font-montserrat my-auto">
                    <h2 class="text-3xl pb-7"><?php the_title(); ?></h2>
                    <h3 class="text-xl leading-relaxed"><?php the_content(); ?></h3>
                </div>
                <!-- GALLERY COLUMN -->
                <div class="aboutusGallery">
                <?php 
                    $images = get_field('about_us_gallery');
                if( $images ): ?>
                    <ul class="slick">
                        <?php foreach( $images as $image ): ?>
                            <li class="">                 
                            <img class="clients__image shadow-inner rounded flex justify-center px-3 lg:px-0 mx-auto" src="<?php echo esc_url($image['sizes']['aboutusGallery']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                            </li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif; 
                ?> 
                </div>
            </div>
        </div>
    </section>
</section>


<?php get_footer(); ?>