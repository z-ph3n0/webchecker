
    <h1>WebChecker</h1>

    <p>WebChecker est un outil de cybersécurité développé en Perl, conçu pour effectuer des vérifications de base sur les applications web et les serveurs. Il analyse les ports ouverts, vérifie les répertoires courants à la recherche de contenu par défaut, et identifie les en-têtes HTTP potentiellement vulnérables.</p>

    <h2>Fonctionnalités</h2>

    <ul>
        <li><strong>Scan des Ports</strong> : Vérifie les ports TCP ouverts sur la cible.</li>
        <li><strong>Vérification des Répertoires</strong> : Contrôle les répertoires courants pour y déceler la présence de contenu par défaut.</li>
        <li><strong>Analyse des En-têtes HTTP</strong> : Détecte les en-têtes HTTP qui pourraient indiquer des configurations vulnérables.</li>
    </ul>

    <h2>Installation</h2>

    <p>Assurez-vous d'avoir Perl installé ainsi que le module nécessaire :</p>

    <ol>
        <li><strong>Installation de Perl</strong> : Vérifiez que Perl est installé sur votre système.</li>
        <li><strong>Installer le Module Requis</strong> :
            <pre><code>cpan install IO::Socket::INET</code></pre>
        </li>
    </ol>

    <h2>Utilisation</h2>

    <ol>
        <li><strong>Cloner le Dépôt</strong> :
            <pre><code>git clone https://github.com/z-ph3n0/webchecker.git</code></pre>
        </li>
        <li><strong>Exécuter l'Outil</strong> :
            <pre><code>perl security_scanner.pl example.com</code></pre>
        </li>
    </ol>

    <p>Remplacez `example.com` par le site web cible ou l'adresse IP.</p>

    <h2>Contributions</h2>

    <p>Les contributions sont les bienvenues ! Voici comment contribuer :</p>

    <ol>
        <li>Faites un fork du dépôt et clonez-le localement.</li>
        <li>Créez une nouvelle branche pour votre fonctionnalité ou correction de bogue.</li>
        <li>Effectuez vos modifications et testez-les soigneusement.</li>
        <li>Soumettez une pull request avec une description claire de vos changements.</li>
    </ol>
