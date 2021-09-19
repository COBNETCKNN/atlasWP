<?php get_header(); ?>

<section id="contact">
    <section id="contact_heading" class="py-40">
     <h1 class="text-4xl text-center font-abhaya uppercase text-white"><?php the_title(); ?></h1>
    </section>
    <section id="contactContent" class="bg-black font-montserrat">
        <div class="container mx-auto">
            <div class="grid grid-cols-2 gap-4 px-32 py-20">
                <!-- CONTENT AREA -->
                <div class="">
                    <h2 class="text-3xl text-white font-semibold">Contact Us</h2>
                    <h3 class="text-lg text-white mt-5"><?php the_content(); ?></h3>
                    <div class="flex mt-5">
                    <i class="fas fa-envelope-open mr-3 my-auto text-white"></i>
                    <a href="mailto: <?php echo bloginfo('admin_email'); ?>"><h3 class="text-white"><?php echo bloginfo('admin_email'); ?></h3></a> 
                    </div>    
                    <h2 class="text-3xl text-white font-semibold mt-12">Follow Us</h2>
                    <?php 
                    //getting the links from custom fields

                    $instagramLink = get_field('instagram_link');
                    $facebookLink = get_field('facebook_link');
                    $youtubeLink = get_field('youtube_link');
                    $soundcloudLink = get_field('soundcloud_link');
                    $linkedinLink = get_field('linkedin_link');
                    ?>
                    <div class="flex justify-start mt-5 text-5xl">
                        <a href="<?php echo $instagramLink;?>" target=”_blank”>
                            <i class="fab fa-instagram text-pink-500 hvr-grow"></i>
                        </a>
                        <a href="<?php echo $facebookLink;?>" target=”_blank”>
                            <i class="fab fa-facebook text-blue-500 ml-5 hvr-grow"></i>
                        </a>
                        <a href="<?php echo $youtubeLink;?>" target=”_blank”>
                            <i class="fab fa-youtube text-red-600 pl-5 hvr-grow"></i>
                        </a>
                        <a href="<?php echo $soundcloudLink;?>" target=”_blank”>
                            <i class="fab fa-soundcloud text-yellow-400 pl-5 hvr-grow"></i>
                        </a>
                        <a href="<?php echo $linkedinLink;?>" target=”_blank”>
                            <i class="fab fa-linkedin text-blue-700 pl-5 hvr-grow"></i>
                        </a>
                    </div>

                </div>
                <!-- LOGO AREA -->
                <div class="">
                    <?php the_post_thumbnail(array ('class="h-3/5 w-3/5 mx-auto')); ?>
                </div>
            </div>
        </div>
    </section>
</section>

<?php get_footer(); ?>