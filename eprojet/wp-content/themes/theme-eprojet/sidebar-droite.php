<div id="region-droite">
    <?php dynamic_sidebar('colonne-droite');?><!-- // Appelle la zone de widget d'identifiant "colonne-droite" déclarée dans functions.php -->
    
</div>

<hr>

<!--------------------------------------------------------------------------->
<!-- //Affichage de la derniere annonce. 

Requete de selection en BDD :-->
<?php

    global $categorie; // Pouracceder a cette variable qui est définit a l'exterieur de la fonction qui fait l'inclusion de cette page, il faut mettre le mot clé "global" (en lien avec 'category_name' => $categorie ligne 19 )

    query_posts(array(
        'post_type' => 'annonce', // slug du CPT "annonce"
        'posts_per_page' => 1, // correspond à LIMIT 1
        'category_name' => $categorie // On séléctionne la derniere "annonce" de la categorie choisie par l'internaute. (en lien avec global $categorie ligne 14)
    ));
    ?>

    <div>
        <h2>Dernière annonce</h2>
    </div>

    <?php
    if (have_posts()):
        while (have_posts()) : the_post();
            ?>
            <div>
                <a href="<?php the_permalink();?>">
                    <img src="<?php the_field('photo');?>" class="img-fluid">
                </a>
                <h3><?php the_title();?> au prix de : <?php the_field('prix');?></h3>
            </div> 
        <?php
        endwhile;
    else:
        echo '<p>Pas encore d\'annonce...</p>';
    endif;
    ?>