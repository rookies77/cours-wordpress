<!DOCTYPE html>
<html <?php language_attributes(); ?>> <!--Fonction qui affiche l'attribut langut lang avec la valeur qui provient de la BDD-->
    <head>
        <meta charset="<?php bloginfo('charset');?>"> <!--Fonction qui affiche des infos sur le site, ici son charset -->
        <title><?php //bloginfo('name'); ?></title> <!-- Affiche le nom du site paramétré dans BO > réglage > titre du site -->

        <!-- CSS de bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <!-- CSS du thème -->
        <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/style.css">   <!-- Affiche le chemin vers le dossier du thème actif pour créer un chemin absolu vers la feuille de style. Marche aussi avec des thème enfants -->

        <?php wp_head();  ?>  <!-- Génère la barre d'administration coté front quand on est connecté en tant qqu'admin, et insére les éventuelles balises <script> et <link> définies dans le fichier functions.php -->
    </head>
    <body <?php body_class(); ?>>  <!-- Affiche les classes du <body> automatiquement générées par WP -->

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <div class="row w-100">

                <!-- <div class="navbar-brand col-lg-3">
                        <a href="<?php //bloginfo('url'); ?>"><?php //bloginfo('name'); ?></a> <!-- Affiche l'url du site qui est paramétré dans BO > réglage général >URL. -->
         
                    <div class="col-lg-12">  <!-- Menu de navigation a venir -->
                        <?php wp_nav_menu(array(
                            'theme_location'    => 'primary', // Correspond à l'identifiant du menu déclaré dans functions.php
                            'menu_class'        => 'navbar-nav', //Class pour le css
                        )); ?>
                    </div>

                </div> <!--class row -->
            </div> <!-- class Container -->
        </nav>
    </header>



    
<!-- entete de la page d'accueil a venir -->
    <?php 
        if (is_front_page()) : // Fonction de WP qui retiurne true quand on affiche la page d'accueil
            ?>
            <div id="entete" class="align-items-center">
                <div class="container">

                <?php dynamic_sidebar('region-entete'); // On appelle la zone de widgets l'identifiant "region-entete" déclarée dans functions.php?> 
                </div><!-- container -->
            </div><!-- align-items-center -->

            <?php
            endif;
            ?>


        <body>
            

        </body>
<section class="container">
    <div class="row">
        <!-- Attention, ces deux balises ouvertes son fermées dans le footer -->
