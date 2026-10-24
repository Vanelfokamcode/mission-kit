---
description: Cartographier un depot inconnu - structure, technologies, points d'entree, role de chaque dossier
---
# Cartographier le dépôt

Prérequis : j'ai vérifié que cet outil est autorisé sur ce code (voir 00-start-here/confidentiality-checklist.md).
Réponds en français. Tu as accès au dépôt ouvert, sinon je te colle des extraits.

## Ta mission
Produire la carte d'une page de ce dépôt, pour un junior qui le découvre.

## Marche à suivre
1. Liste l'arborescence sur 2 à 3 niveaux. Ignore les dossiers générés (node_modules, .venv, dist, build, .git).
2. Identifie : langages, frameworks, gestionnaire de dépendances, outil de build, tests, CI/CD, conteneurs,
   infrastructure as code.
3. Trouve les points d'entrée (main, serveur, CLI, jobs, handlers) et les fichiers de configuration.
4. Pour chaque dossier important : son rôle en une phrase.

## Format de sortie
- Résumé du projet en 3 lignes.
- Tableau : dossier ou fichier | rôle | confiance (vu / déduit / incertain) | fichier qui le prouve.
- Points d'entrée. Technologies.
- "À vérifier avec l'équipe" : ce que tu supposes sans pouvoir le confirmer.

## Règles
- Cite toujours les fichiers sur lesquels tu t'appuies.
- Distingue [vu dans le code], [déduit] et [inconnu]. N'invente pas l'intention d'un code que tu n'as pas lu.
- Ne lis, n'affiche et ne copie aucune valeur de secret (.env, clés, tokens). Les noms de variables suffisent.
- Ne modifie aucun fichier.
