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
            <img src="<?php the_field('photo'); ?>" alt="<?php the_title(); ?>" class="img-fluid w-75">
        </div>

        
        <div class="info"><span>Prix : </span><?php the_field('prix');?>€</div>
        <div class="info"><span>Modele : </span><?php the_field('modele');?></div>
        <div class="info"><span>Marque : </span><?php the_field('marque');?></div>
        <div class="info"><span>Kilométrage : </span><?php the_field('km');?> KM</div>
        <div class="info"><span>Carburant : </span><?php the_field('carburant');?></div>

        <div class="contenu">
            <?php the_content();?>
        </div>

       




    <?php
    endwhile;
    else :
        echo'<p>Aucune annonce...</p>';
    endif;


    do_action('myHook'); // On execute le crochet appelé "myHook" qui es déclaré dans functions.php cela permet d'éxecuter toutes les fonctions qui y sont accrochées (maFonction1 et maFonction2).
    ?> 
</div>

<?php
get_footer();// Fait l'inclusion de footer.php
?>

<?php ?>