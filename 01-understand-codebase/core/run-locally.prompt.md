---
description: Trouver comment lancer le projet en local et documenter les obstacles
---
# Lancer le projet en local

Réponds en français. Lis README, Makefile, scripts, docker-compose, Dockerfile, fichiers de CI et .env.example.

## Ta mission
Écrire le mode d'emploi local, tel qu'un junior pourrait le suivre sans aide.

## Format de sortie
1. Prérequis : versions des langages, outils, comptes, accès.
2. Variables d'environnement : nom | rôle | où obtenir la valeur (jamais la valeur).
3. Étapes numérotées avec les commandes exactes, et le résultat attendu à chaque étape.
4. Lancer les tests : commande et résultat attendu.
5. Les pièges probables : étapes non documentées, versions incohérentes, accès manquants.
6. Ce que la documentation actuelle ne couvre pas (je pourrai proposer de la corriger : c'est une contribution utile).

## Règles
- N'exécute rien de destructif (suppression, migration, déploiement). Propose, je décide.
- Ne lis ni n'affiche les fichiers .env contenant des valeurs. Utilise .env.example.
- Si une étape dépend d'un accès que je n'ai peut-être pas, dis-le au lieu de supposer.
