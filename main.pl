#!/usr/bin/perl

use strict;
use warnings;
use IO::Socket::INET;

# Configuration
my $cible = shift || die "Utilisation : $0 <cible>\n";
my @ports_a_verifier = (21, 22, 80, 443);  # Ports à scanner
my @repertoires_a_verifier = ('/admin', '/test', '/config');  # Répertoires à vérifier

# Scanner la cible pour les ports ouverts
print "[*] Analyse des ports ouverts sur $cible...\n";
foreach my $port (@ports_a_verifier) {
    my $socket = IO::Socket::INET->new(
        PeerAddr => $cible,
        PeerPort => $port,
        Proto    => 'tcp',
        Timeout  => 3
    );
    if ($socket) {
        print "    Port $port : OUVERT\n";
        close $socket;
    } else {
        print "    Port $port : FERMÉ\n";
    }
}

# Vérification des répertoires courants avec contenu par défaut
print "\n[*] Vérification des répertoires courants sur $cible...\n";
foreach my $repertoire (@repertoires_a_verifier) {
    my $url = "http://$cible$repertoire";
    my $contenu = `curl -s $url`;
    if ($contenu =~ /contenu par défaut|erreur|404/i) {
        print "    Répertoire $repertoire : Potentiellement vulnérable\n";
    } else {
        print "    Répertoire $repertoire : Non vulnérable\n";
    }
}

# Vérification des en-têtes HTTP vulnérables
print "\n[*] Vérification des en-têtes HTTP sur $cible...\n";
my $en_tetes = `curl -I -s $cible`;
if ($en_tetes =~ /serveur:|x-powered-by:|content-security-policy:/i) {
    print "    En-têtes HTTP potentiellement vulnérables trouvés\n";
    print "    En-têtes HTTP :\n$en_tetes";
} else {
    print "    Aucun en-tête HTTP vulnérable trouvé\n";
}
