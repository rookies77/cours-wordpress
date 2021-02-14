(function($) { 

    $('#entete').click(function() {
        $('h1').toggle();
    })


}(jQuery)); // Ici il s'agit d'une IFE, autrement dit d'une fonction auto-invoquée : on la déclare sans nom et on l'execute immédiatement. Lors de son exécution, on passe l'objet jQuery en argument qui est recueilli par le paramètre $. Ainsi, tous les $ du code signifient "jQuery".