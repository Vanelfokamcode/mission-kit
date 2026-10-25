---
description: Diagnostiquer une mauvaise reponse d'un systeme RAG - donnees, decoupage, recuperation, prompt ou modele
---
# Diagnostiquer une mauvaise réponse RAG

Réponds en français. Je te donne : la question, la réponse obtenue, la réponse attendue, les passages récupérés
(avec leur rang et leur score si disponibles), et le prompt utilisé : [COLLER, sans secret ni donnée sensible].

## Arbre de diagnostic (dans l'ordre)
1. **Données** : l'information existe-t-elle dans le corpus ? est-elle à jour ? le document a-t-il bien été ingéré ?
2. **Découpage** : l'information a-t-elle été coupée entre deux segments, ou noyée dans un segment trop grand ?
3. **Récupération** : le bon segment est-il remonté ? à quel rang ? Sinon, pourquoi (requête, embeddings, filtres, seuil) ?
4. **Prompt** : le contexte fourni est-il utilisé comme prévu ? la consigne en cas d'information manquante est-elle claire ?
5. **Génération** : le modèle contredit-il ou ignore-t-il un contexte pourtant correct ?

## Ce que tu produis
- L'étape fautive la plus probable, avec la preuve tirée de ce que je t'ai donné.
- Le test le plus simple pour la confirmer (en lecture seule si possible).
- Les pistes de correction, classées par effort. Pas de refactor massif.
- Ce que tu ne peux pas savoir à partir de ces éléments.

## Règles
- Ne conclus pas sur une seule question : dis combien d'exemples il faudrait pour confirmer.
- Distingue [prouvé], [probable], [deviné].
