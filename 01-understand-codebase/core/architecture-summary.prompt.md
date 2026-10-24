---
description: Resumer l'architecture - composants, flux de donnees, dependances, decisions et leurs raisons
---
# Résumé d'architecture

Réponds en français. Appuie-toi sur le code, les README, les schémas et les fichiers de configuration du dépôt.

## Ta mission
Expliquer l'architecture à un junior, puis lister ce qui reste à confirmer.

## Format de sortie
1. Vue d'ensemble en 5 lignes : à quoi sert le système, pour qui.
2. Composants : nom | rôle | technologie | fichiers principaux.
3. Flux principal de bout en bout (une étape par ligne), et un schéma en texte ou en Mermaid.
4. Dépendances : internes (autres services, bases, files) et externes (API, SaaS, cloud).
5. Configuration et secrets : où ils sont gérés (noms uniquement, jamais les valeurs).
6. Décisions de conception visibles et leur raison si elle est écrite quelque part (README, ADR, commits).
   Si la raison n'est pas écrite, écris "raison non documentée" et propose une question à poser.
7. Ce que tu n'as pas pu vérifier.

## Règles
- Cite les fichiers. Étiquette [vu], [déduit], [inconnu].
- Pas d'avis sur ce qui serait "mieux" : ici on comprend, on ne juge pas (le jugement est dans tech-debt-and-risks).
- Ne modifie aucun fichier.
