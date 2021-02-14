<?php

get_header();
    $categorie = '';

// On demande a la requete principaele de nous indiquer la categorie qu'elle a utilisé pour faire la requete, et qui correspond à celle sur laquelle l'internaute a cliqué.
$categorie = get_query_var('category_name'); // Cette fonction va chercher le nom de la categorie utilisé par la requete principale.

query_posts(array(
    'post_type'     => 'annonce', // slug de notre custom post type annonce
    'category_name' => $categorie // Contient la categorie cliquée par l'internaute
)); // execute une requete en BDO de séléction :  séléction les types  "annonce" de la categorie cliquée. Cette fonction vient remplacer la requête principale : il est donc recommandé de faire un wp_rest_query() en fin de script pour la réstaurer.!
?>

    <div class="col-lg-9">
        <h1>Nos  <?php single_cat_title();?></h1><!-- On affiche le titre de la catégorie utilisée dans cette page -->
        <?php
        if (have_posts()) :
            while (have_posts()) : the_post();   
                ?>
                <div class="row cat-info"><!-- On crée une ligne par annonce. -->
                    <div class="col-lg-3">
                        <a href="<?php the_permalink();?>">
                        <img src="<?php the_field('photo');?>" class="img-fluid"></a>
                    </div>

                    <div class="col-lg-9">
                        <h2>
                            <a href="<?php the_permalink();?>"><?php the_title();?></a>
                        </h2>
                            <div><span>Marque : </span><?php the_field('marque');?></div>
                            <div><span>Modèle : </span><?php the_field('modele');?></div>
                            <div><span>Prix : </span><?php the_field('prix');?></div>
                    </div>
                </div>
                <?php
            endwhile;
        else:
            echo '<p>Aucune annonce...</p>';
        endif;

        wp_reset_query(); // On réstaure la requete principale aprés un query_posts().
        
        ?>
    </div>

    <div class="col-lg-3">
        <?php get_sidebar('droite');?> <!-- //Inclusion du fichier appelé sidebar-droite.php. -->
    </div>




<?php
get_footer();

