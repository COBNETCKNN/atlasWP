<?php get_header(); ?>

<section id="testimonials">
    <section id="testimonials_heading" class="py-40">
        <h1 class="text-4xl text-center font-abhaya uppercase text-white"><?php the_title(); ?></h1>
    </section>
    <section id="testimonialsContent" class="font-montserrat py-20">
        <div class="container mx-auto">
            <?php 
            // getting title from custom fields
            $testimonialTitle = get_field('testimonials_title');
            $embededVideo = get_field('testimonial_youtube_video');
            ?>
            <h2 class="text-white text-center text-2xl font-medium"><?php echo $testimonialTitle; ?></h2>
            <!-- EMBEDED VIDEO -->
            <div class="embed-container flex justify-center mt-12">
              <?php the_field('testimonial_youtube_video'); ?>
            </div>
            <!-- CONTENT -->
            <h4 class="text-white text-lg text-center px-32 mt-12"><?php the_content(); ?></h4>
            <!-- REPEATER FIELD FOR TESTIMONIALS -->
            <?php
            // Check rows exists.
            if( have_rows('testimonial_repeater') ): ?>
            <div class="container mx-auto">
            <div class="lg:grid lg:grid-cols-2 gap-4 mt-2 xl:mt-14 text-white px-32">

                <?php  // Loop through rows.
                while( have_rows('testimonial_repeater') ) : the_row(); 
                
                $testimonialImage = get_sub_field('testimonial_image');
                $testimonialTitle = get_sub_field('testimonial_title');
                $testimonialContent = get_sub_field('testimonial_content');
                ?>

                <!-- IMAGE COLUMN -->
                <div class="p-14">
                 <img src="<?php echo $testimonialImage; ?>" alt="">
                </div>
                <!-- CONTENT COLUMN -->
                <div class="text-center my-auto">
                    <h2 class="pb-8 text-2xl font-medium"><?php echo $testimonialTitle; ?></h2>
                    <h4 class="text-xl"><?php echo $testimonialContent; ?></h4>
                </div>
                <?php
                // End loop.
                endwhile; ?>
                </div>

                <?php
            // No value.
            else :
                // Do something...
            endif;
            ?>
        </div>
    </div>
    </section>
</section>

<?php get_footer(); ?>