# WebChecker

WebChecker est un outil de cybersécurité développé en Perl, conçu pour effectuer des vérifications de base sur les applications web et les serveurs. Il analyse les ports ouverts, vérifie les répertoires courants à la recherche de contenu par défaut, et identifie les en-têtes HTTP potentiellement vulnérables.

## Fonctionnalités

- **Scan des Ports** : Vérifie les ports TCP ouverts sur la cible.
- **Vérification des Répertoires** : Contrôle les répertoires courants pour y déceler la présence de contenu par défaut.
- **Analyse des En-têtes HTTP** : Détecte les en-têtes HTTP qui pourraient indiquer des configurations vulnérables.

## Installation

Assurez-vous d'avoir Perl installé ainsi que le module nécessaire :

1. **Installation de Perl** : Vérifiez que Perl est installé sur votre système.
   
2. **Installer le Module Requis** :
cpan install IO::Socket::INET


## Utilisation

1. **Cloner le Dépôt** :
   
git clone https://github.com/z-ph3n0/webchecker.git

2. **Se connecter au Dossier** :

cd webchecker


3. **Exécuter l'Outil** :

perl main.pl <adresse_du_site>.

## Contributions

Les contributions sont les bienvenues ! Voici comment contribuer :

1. Faites un fork du dépôt et clonez-le localement.
2. Créez une nouvelle branche pour votre fonctionnalité ou correction de bogue.
3. Effectuez vos modifications et testez-les soigneusement.
4. Soumettez une pull request avec une description claire de vos changements.
