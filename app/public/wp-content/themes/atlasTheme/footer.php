<?php wp_footer(); ?>

<footer id="footer" class="font-montserrat py-10 text-gray-200">
    <div class="container mx-auto">
            <h2 class="text-gray-200 font-bold flex justify-center mb-5">Contact Us</h2>
            <!-- EMAIL SECTION -->
            <div class="flex justify-center text-sm">
                <i class="fas fa-envelope-open mr-3 my-auto"></i>
                <a href="mailto: <?php echo bloginfo('admin_email'); ?>"><p><?php echo bloginfo('admin_email'); ?></p></a>     
            </div>
            <!-- SOCIAL MEDIA ICONS -->
            <div class="flex justify-center mt-12">
                <h2 class="text-gray-200 font-bold mb-5">Follow Atlas Audio</h2>
            </div>
            <?php 
            //getting the links from custom fields

            $instagramLink = get_field('instagram_link');
            $facebookLink = get_field('facebook_link');
            $youtubeLink = get_field('youtube_link');
            $soundcloudLink = get_field('soundcloud_link');
            $linkedinLink = get_field('linkedin_link');
            ?>
            <div class="flex justify-center text-3xl">
                <a href="<?php echo $instagramLink;?>" target=”_blank”><i class="hvr-grow fab fa-instagram mx-5"></i></a>
                <a href="<?php echo $facebookLink;?>" target=”_blank”><i class="hvr-grow fab fa-facebook mx-5"></i></a>
                <a href="<?php echo $youtubeLink;?>" target=”_blank”><i class="hvr-grow fab fa-youtube mx-5"></i></a>
                <a href="<?php echo $soundcloudLink;?>" target=”_blank”><i class="hvr-grow fab fa-soundcloud mx-5"></i></a>
                <a href="<?php echo $linkedinLink;?>" target=”_blank”><i class="hvr-grow fab fa-linkedin mx-5"></i></a>
            </div>
            <!-- UNDERLINE AND INFO ABOUT DEVELOPER -->
            <div class="footer-line bg-gray-200 mt-10 mx-40"></div>
            <p class="text-center text-gray-200 mt-5">Copyright &copy; <span id="year"><?php echo date("Y"); ?></span> <a href="https://meshkin.me/" target=”_blank”>Meshkin Ahmed</p>

    </div>
</footer>

</body>
</html>