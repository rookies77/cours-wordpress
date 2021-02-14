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
        'id'                =>'colonne-droite', // Identifiant de la zone pour l'appeller dans un template.
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
    register_nav_menu('footer', 'menu footer droit');
}
add_action('init', 'eprojet_init_menus'); // On execute notre fonction "eprojet_init_menus" dans le hook appelé "init" de WP, qui correspond à la phase d'initialisation de CMS.

//********************************************************************************************************************************
//WooCommerce compatible :
//********************************************************************************************************************************
function eprojet_add_woocommerce() {
    add_theme_support('woocommerce'); // Permet de déclarer que notre thème prend en charge WC. Ainsi les templates de WC surcharger (oerride) sont utilisables en front. La surcharge consiste à recopier un fichier de WC dans notre thème enfant pour pouvoir modifier(Principe similaire aux thème enfant).
}

add_action('after_setup_theme', 'eprojet_add_woocommerce'); // On execute notre fonction "eprojet_add_woocommerce" dans le WP appelé "after_setup_theme" qui correspond au moment ou le theme vient d'etre chargé.

//------------------------------
// Création d'un hook personnalié :

function maFonction1 () {
    echo '<p> La fonction accrochée 1 marche </p>';
}
function maFonction2 () {
    echo '<p> La fonction accrochée 2 marche</p>';
}

add_action ('myHook', 'maFonction1', 20);
add_action ('myHook', 'maFonction2', 10); // On crée ici un crochet appelé "myHook" auquel on accroche les fonctions maFonction1 et maFonction2. Ces 2 fonctions s'executent, quand on appelle le crochet dans le template, dans l'ordre des indices indiqués (10 en premier, puis 20 en deuxieme...). Dans notre exemple de cours, nous avons mis le do_action('myHook') dans le fichier single-annoncce.php

remove_action('myHook', 'maFonction1', 20); // Pour déccrocher une fonction d'un hook on fait remove_action() auquelle on indique le nom du hook le nom de la fonction a déccrocher et sont ordre d'execution obligatoire.

// Exercice : Retirer les produits apparenté
remove_action('woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20);  
// remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40);

//---------------------------------------------------------------------------------------------
// Ajouter un script JS :
function eprojet_enqueue_scripts() {
    wp_enqueue_script('main', get_bloginfo('stylesheet_directory') . '/assets/main.js', array('jquery'), '', true); // Permet de générer la balise <script> vers notre fichier main.js. Les arguments : identifiant du lien, chemin absolu vers le script, les dépendance (ici la blibliothéque jQuery), La version des dépendances (ici vide), la position dans le <head> avec false ou avant </body> avec true.
}
add_action('wp_enqueue_scripts', 'eprojet_enqueue_scripts');







?>