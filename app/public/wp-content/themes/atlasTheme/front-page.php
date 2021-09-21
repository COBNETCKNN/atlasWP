<?php get_header(); ?>
<section id="columns" class="bg-black h-4/5 flex justify-center">
<?php if( have_rows('column_videos') ): ?>
    <?php while( have_rows('column_videos') ): the_row(); 

    $firstVideo = get_sub_field('first_video');
    $secondVideo = get_sub_field('second_video');
    $thirdVideo = get_sub_field('third_video');
?>
    <!-- FIRST COLUMN -->
    <div class="column opacity-70 hover:opacity-100">
        <?php echo $firstVideo; ?>
        <div class="black_overlay"></div>
    </div>
    <!-- SECOND COLUMN -->
    <div class="column opacity-70 hover:opacity-100">
        <?php echo $secondVideo; ?>
        <div class="black_overlay"></div>
    </div>
    <!-- THIRD COLUMN -->
    <div class="column opacity-70 hover:opacity-100">
        <?php echo $thirdVideo; ?>
        <div class="black_overlay"></div>
    </div>
    <?php endwhile; ?>
<?php endif; ?>
</section>
<section id="frontpage" class="font-montserrat text-white text-center">
    <section id="whatwedo">
        <div class="container mx-auto">
         <h1 class="text-2xl font-bold pt-10"><?php echo bloginfo('name'); ?> | Music For Media</h1>
         <!-- CHECKBOXES -->
         <div class="whatwedo_checkboxes">
            <div class="flex justify-center my-auto text-lg mt-7">
                <p>Bespoke Soundtracks</p>
                <i class="fas fa-check-square text-blue-600 my-auto ml-2"></i>
            </div>
            <div class="flex justify-center my-auto text-lg mt-7">
                <p>Podcast themes</p>
                <i class="fas fa-check-square text-blue-600 my-auto ml-2"></i>
            </div>
            <div class="flex justify-center my-auto text-lg mt-7">
                <p>Audiobook themes</p>
                <i class="fas fa-check-square text-blue-600 my-auto ml-2"></i>
            </div>
            <div class="flex justify-center my-auto text-lg mt-7">
                <p>Video Game OSTs</p>
                <i class="fas fa-check-square text-blue-600 my-auto ml-2"></i>
            </div>
            <div class="flex justify-center my-auto text-lg mt-7">
                <p>Mixing & Mastering</p>
                <i class="fas fa-check-square text-blue-600 my-auto ml-2"></i>
            </div>
         </div>
         <!-- CONTACT US -->
         <a href="<?php echo esc_url(site_url('/contact'));?>">
            <button class="hvr-grow bg-black text-white uppercase font-bold py-2 px-6 rounded-full border-2 border-white border-opacity-50 mt-9">
            Contact Us
            </button>
         </a>
        </div>
    </section>
    <section id="content" class="mt-20">
        <div class="container mx-auto font-montserrat text-white px-32">
            <h4 class="text-base"><?php the_content(); ?></h4>
            <!-- EMBEDED VIDEO -->
            <div class="frontpage_embed-container pt-10 flex justify-center">
                <?php the_field('youtube_front_page_video'); ?>
            </div>
        </div>
    </section>
    <section id="soundcloud">
        <div class="container mx-auto">
             <!-- REPEATER FIELD FOR SOUNDCLOUD -->
            <?php
            // Check rows exists.
            if( have_rows('soundcloud_embed_repeater') ): ?>

            <div class="px-32 py-14">

                <?php  // Loop through rows.
                while( have_rows('soundcloud_embed_repeater') ) : the_row(); ?>

                <!-- ADDRESS -->
                <div class="block mt-5">
                    <?php echo get_sub_field('iframe_code'); ?>
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
    </section>
</section>

<?php get_footer(); ?>