# Versionner les prompts d'une application

Un prompt est du code : il se versionne, se relit et se teste.

## Règles
1. Les prompts sont des fichiers dans le dépôt, pas des chaînes éparpillées dans le code.
2. Un changement de prompt passe par une PR, comme du code, avec le résultat de l'évaluation avant et après
   (voir `evaluate-rag.prompt.md`).
3. On change une seule chose à la fois : prompt, modèle, paramètres, découpage. Sinon on ne sait pas ce qui a joué.
4. On note à chaque version : le modèle, la version du modèle, les paramètres (température, taille de contexte),
   et la date.
5. On peut revenir en arrière : l'ancienne version reste accessible et le retour est testé.

## Modèle d'entrée de journal
    Version : v[N]   Date : [AAAA-MM-JJ]
    Changement : [ce qui a changé et pourquoi]
    Modèle et paramètres : [...]
    Évaluation avant -> après : [récupération, fidélité, pertinence, coût, latence]
    Décision : adoptée / rejetée / à revoir

## Pièges
- Un modèle qui change côté fournisseur peut modifier le comportement sans que le code change : relancer l'évaluation.
- Un prompt qui marche sur 3 exemples ne prouve rien.
- Ne mets jamais de secret ni de donnée réelle dans un prompt versionné.
