<?php
get_header(); // Fait l'inclusion de header.php avec un argument, fait l'inclusion du fichier correspondant header-argument.php
?>

<div class="col-12"> 

    <?php
    if (have_posts()): // Retourne un Booléen pour indiquer s'il y a des objets appelés "post" à afficher.
        while (have_posts()) : the_post(); // Cette fonction récupére les données de l'élément à afficher et déplace le curseur interne à WP sur le post suivant dans la liste de ceux que l'on a récupérés dans la BDD
        ?>
        


        
        <h2> <?php the_title();?></h2>


        <div class="col-12"><?php the_content();?></div>

        <div class="col-12">
            <div class="info"><span>Ville :  </span><?php the_field('ville');?></div>
            <div class="info"><span>Code Postal :  </span><?php the_field('CP');?></div>
            <div class="info"><span>Télephone :  </span><?php the_field('telephone');?></div>
        </div>


</div>


<?php
    endwhile;
    else :
        echo'<p>Aucune annonce...</p>';
    endif;
    ?> 
<?php
get_footer();// Fait l'inclusion de footer.php
?>