<?php get_header(); ?>
<section id="columns" class="bg-black h-3/6 flex justify-center">
    <!-- FIRST COLUMN -->
    <div class="column">
        <iframe width="100%" height="600" src="https://www.youtube.com/embed/lTxn2BuqyzU?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <!-- SECOND COLUMN -->
    <div class="column">
        <iframe width="100%" height="600" src="https://www.youtube.com/embed/lTxn2BuqyzU?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <!-- THIRD COLUMN -->
    <div class="column">
        <iframe width="100%" height="600" src="https://www.youtube.com/embed/lTxn2BuqyzU?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
</section>
<section id="frontpage" class="bg-black font-montserrat text-white text-center">
    <section id="whatwedo">
        <div class="container mx-auto">
         <h1 class="text-2xl font-bold pt-10">What We Do at <?php echo bloginfo('name'); ?></h1>
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
         <a href="<?php echo esc_url(site_url('/contact-us'));?>">
            <button class="hvr-grow bg-black text-white uppercase font-bold py-2 px-6 rounded-full border-2 border-white border-opacity-50 mt-9">
            Contact Us
            </button>
         </a>
        </div>
    </section>
    <section id="content" class="mt-20">
        <div class="container mx-auto font-montserrat text-white px-32">
            <h4 class="text-base"><?php the_content(); ?></h4>

            <?php 
            //link for youtube iframe
            $youtubevideoLink = get_field('youtube_video_link');
            ?>

             <iframe width="1260" height="480" class="mt-7 mx-auto" src="<?php echo $youtubevideoLink?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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