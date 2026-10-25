---
description: Vue d'ensemble - a quoi sert le systeme pour le metier, qui l'utilise, ou il s'insere, et quelles questions poser aux humains
---
# Vue d'ensemble (big picture)

Réponds en français. Tu complètes `map-the-repo` et `architecture-summary` : eux disent COMMENT c'est fait ;
toi tu cherches À QUOI ça sert, POUR QUI, et OÙ ça s'insère. Le code dit rarement le pourquoi métier : tu produis
un brouillon honnête et surtout les questions à poser aux humains.

## Ce que je te donne
- La carte du dépôt et le résumé d'architecture produits avant : [COLLER]
- README, documentation, tickets, descriptions de PR, tout texte "métier" disponible : [COLLER ou joindre]
- Ce que mon tuteur ou l'équipe m'a déjà dit sur la mission : [COLLER, sinon "rien"]

## Ce que tu produis
1. **En 3 phrases** : à quoi sert le système, pour qui, quel problème il résout. Chaque phrase est étiquetée
   [écrit dans la doc], [déduit du code] ou [inconnu].
2. **Qui est concerné** : utilisateurs, ceux qui en dépendent, ceux qui l'exploitent, qui décide.
   Seulement ce qui est établi ; sinon "à demander".
3. **Le parcours de la valeur** : de l'événement déclencheur au résultat pour l'utilisateur, étape par étape,
   avec l'endroit où le système intervient et ce qui se passe avant et après (autres systèmes, autres équipes).
4. **Où il s'insère** : systèmes en amont et en aval, dépendances externes, frontière de responsabilité.
   Un schéma de contexte en Mermaid (le système au centre, acteurs et systèmes autour, 10 éléments maximum).
5. **Ce qui pèse sur lui** : contraintes visibles (conformité, données personnelles, coût, performance,
   disponibilité, calendrier) et d'où tu les tires.
6. **Comment on juge qu'il réussit** : indicateurs ou critères connus ; sinon "non documenté".
7. **Où il en est** : jeune, en croissance, stable, en fin de vie ? Indices tirés de l'historique et de la dette,
   étiquetés [déduit].
8. **Pour moi** : où un junior peut apporter de la valeur (documentation manquante, tests, petits tickets)
   et les zones où je dois être prudent.
9. **Questions à poser aux humains**, classées par interlocuteur (responsable produit ou métier, référent technique,
   utilisateur, exploitation) et par priorité (bloquante, importante, curiosité).

## Règles
- Le pourquoi métier ne se déduit pas du code. Si tu n'as que le code, dis-le et ne comble pas le vide par du plausible.
- Pas de nom de client, de personne ou d'identifiant interne dans ce qui peut sortir du poste de travail.
- Ne juge pas les choix de l'équipe : décris, puis pose des questions.
- Ne modifie aucun fichier.
