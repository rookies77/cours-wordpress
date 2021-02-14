</div>
    </section><!-- ces deux balises sont ouvertes dans header.php -->

    <footer class="align-items-center">

        <div class="container">
            <div class="row align-items-center">

                <div class=" col-lg-4">
                    <?php dynamic_sidebar('footer-gauche');?>
                </div>
                <div class=" col-lg-4">
                    <p>&copy; Mes petites annonces - 2020</p>
                </div>
                <div class=" col-lg-4">
                <?php 
                 wp_nav_menu('footer');// ou l'autre syntax ci-dessous comme pour le menu header
                  
                // wp_nav_menu(array(
                //             'theme_location'    => 'footer', // Correspond à l'identifiant du menu déclaré dans functions.php
                //         )); ?>
                </div>

            </div><!-- fin row -->
        </div><!-- Fin container -->
    </footer>

    <?php wp_footer() ?><!-- inser les éventuelles balise <script> déclarées dans le fichier functions.php -->
    </body>

    </html>