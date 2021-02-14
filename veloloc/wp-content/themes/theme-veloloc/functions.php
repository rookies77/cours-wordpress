<?php 
// Zone de widgets
function eprojet_init_widgets(){
    register_sidebar(array(
        'name'              =>'entête de la page accueil', // Nom qui apparait dans le BO
        'id'                =>'region-entete', // Identifiant de la zone pour l'appeller dans un template.
        'description'       =>'Ajoute des widgets à \'entête de la page accueil', // Déscription qui apparait dans le BO
        'before_widget'     =>'', // Pour retirer les balises <li> par defaul avant et aprés le widget
        'after_widget'      =>'',
        'before_title'      =>'<h1>', // Pour mettre le titre du widget dans un <h1> au lieu d'un <h2> par défaut.
        'after_title'      =>'</h1>',
    ));

    register_sidebar(array(
        'name'              =>'Colonne de droite', // Nom qui apparait dans le BO
        'id'                =>'Colonne-droite', // Identifiant de la zone pour l'appeller dans un template.
        'description'       =>'Ajoute des widgets à la barre latèrale de droite', // Déscription qui apparait dans le BO
        'before_widget'     =>'<div>', // Pour retirer les balises <li> par defaul avant et aprés le widget
        'after_widget'      =>'</div>',
    ));

    register_sidebar(array(
        'name'              =>'Footer gauche',
        'id'                =>'footer-gauche',
        'description'       =>'Ajoute des widgets au footer gauche',
        'before_widget'     =>'<div>', 
        'after_widget'      =>'</div>',
    ));

}

add_action('widgets_init', 'eprojet_init_widgets'); // On execute notre fonction eprojet_init_widgets au moment ou WP initialise les widgets dans le core (coeur): widget_init s'appelle HOOK (crochet) car y sont accrochées les fonctions du core de WP aiinsi que la notre : selles s'execute ensemble lors de l'execution du hook



// ******************************
// Zone de menus :

function eprojet_init_menus() {
    register_nav_menu('primary', 'menu principal'); // on crée une zone de menu d'identidiant "primary" et de nom dans le BO  "menu principal"
    register_nav_menu('footer', 'menu footer');

}
add_action('init', 'eprojet_init_menus'); // On execute notre fonction "eprojet_init_menus" dans le hook appelé "init" de WP, qui correspond à la phase d'initialisation de CMS.




















?>