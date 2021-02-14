</div>
    </section><!-- ces deux balises sont ouvertes dans header.php -->

    <footer class="align-items-center">
        <div class="container">
            <div class="row align-items-center">
                <div class=" col-lg-4">
                    <?php 
                    wp_nav_menu('footer1');// ou l'autre syntax ci-dessous comme pour le menu header
                    ?>
                </div>
                <div class=" col-lg-4">
                    <p>&copy; Veloloc - 2020</p>
                </div>
                <div class=" col-lg-4">
                    <?php 
                    wp_nav_menu('footer');// ou l'autre syntax ci-dessous comme pour le menu header
                    ?>
                </div>
                
                
            </div><!-- fin row -->
        </div><!-- Fin container -->
    </footer>

    <?php wp_footer() ?><!-- inser les éventuelles balise <script> déclarées dans le fichier functions.php -->
    </body>

    </html>