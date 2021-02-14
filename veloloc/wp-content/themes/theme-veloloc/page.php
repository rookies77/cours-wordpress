<?php
get_header(); // Fait l'inclusion de header.php avec un argument, fait l'inclusion du fichier correspondant header-argument.php

    if (have_posts()): // Retourne un Booléen pour indiquer s'il y a des objets appelés "post" à afficher.

        while (have_posts()) : the_post(); // Cette fonction récupére les données de l'élément à afficher et déplace le curseur interne à WP sur le post suivant dans la liste de ceux que l'on a récupérés dans la BDD
            ?>
                <h2 class="col-12"> 
                    <a href="<?php the_permalink();?>"><?php the_title();?></a>
                </h2>
                
                <div class="col-12">
                    <?php the_content();?>
                </div>



            <?php
        endwhile;

    else :
        echo '<p>Aucun contenu ne correspond à votre demande...</p>';
    endif;




get_footer();// Fait l'inclusion de footer.php
?>

<?php ?>