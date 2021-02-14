<?php
get_header(); // Fait l'inclusion de header.php avec un argument, fait l'inclusion du fichier correspondant header-argument.php
?>

<div class="col-12"> 

    <?php
    if (have_posts()): // Retourne un Booléen pour indiquer s'il y a des objets appelés "post" à afficher.
        while (have_posts()) : the_post(); // Cette fonction récupére les données de l'élément à afficher et déplace le curseur interne à WP sur le post suivant dans la liste de ceux que l'on a récupérés dans la BDD
        ?>
        


        
        <h2> <?php the_title();?></h2>

        <div class="text-center"> 
            <img src="<?php the_field('votre_photo'); ?>" alt="<?php the_title(); ?>" style="margin-left: 0 ;"	width="30%" class="img-fluid">
        </div>

        
        <div class="info"><span>Tarif pour 1 jour : </span><?php the_field('tarif_pour_1_jour');?>€</div>
        <div class="info"><span>Tarif pour 1 supplémentaire : </span><?php the_field('tarif_pour_1_jour_supplementaire');?>€</div>
        <div class="info"><span>Tarif pour 1 semaine : </span><?php the_field('tarif_pour_1_semaine');?>€</div>
        <div class="info"><span>Caution : </span><?php the_field('caution');?></div>

        <div class="contenu">
            <?php the_content();?>
        </div>

       




    <?php
    endwhile;
    else :
        echo'<p>Aucune annonce...</p>';
    endif;
    ?> 

</div>

<?php
get_footer();// Fait l'inclusion de footer.php
?>

<?php ?>