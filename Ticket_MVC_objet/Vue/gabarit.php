<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="Contenu/style.css" />
        <title><?= $titre ?></title>
    </head>
    <body>
        <div id="global">
            <header>
                <a href="index.php"><h1 id="titreTicketing">Ma platforme de ticketing orienté objet</h1></a>
                <p>Je vous souhaite la bienvenue sur cette platforme.</p>
            </header>
            <div id="contenu">
                <?= $contenu ?>
            </div> <!-- #contenu -->
            <footer id="piedTicketing">
                Platforme réalisée avec PHP, HTML5 et CSS.
            </footer>
        </div> <!-- #global -->
    </body>
</html>