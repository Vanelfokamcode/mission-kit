---
description: Construire un plan d'evaluation minimal pour un systeme RAG - jeu de questions, metriques, rejeu a chaque changement
---
# Évaluer un système RAG

Réponds en français. Sans évaluation, on ne sait pas si un changement améliore ou dégrade le système.
Prérequis : les questions et réponses viennent de documents réels, donc elles restent dans l'espace de travail.

## Ce que je te donne
Description du système (sources, étapes du pipeline, modèle) : [COLLER]. Les types d'utilisateurs et leurs questions habituelles : [DÉCRIRE].

## Ce que tu produis
1. **Jeu de questions de référence** : 30 questions (ou la taille que je te donne), avec la répartition : faciles, multi-documents,
   hors corpus (le système doit refuser ou dire qu'il ne sait pas), ambiguës, tentative d'injection de prompt, droits d'accès
   (un utilisateur ne doit pas voir un document interdit). Pour chaque question : réponse attendue et source attendue.
2. **Métriques** : récupération (la bonne source est-elle dans les k premiers résultats ?), fidélité (la réponse est-elle
   soutenue par le contexte récupéré ?), pertinence de la réponse, refus appropriés, latence, coût par requête.
3. **Méthode** : mesurer d'abord l'état actuel (point de départ), changer une seule chose à la fois, rejouer le jeu complet,
   garder l'historique des résultats.
4. **Évaluation par un modèle** : si on en utilise un comme juge, il a ses biais. Je relis à la main un échantillon
   de ses verdicts, et je le note dans le rapport.
5. **Tableau de résultats** vide, prêt à remplir.

## Règles
- N'invente aucune question qui ne correspond pas à un vrai besoin des utilisateurs : demande-moi lesquelles sont réelles.
- Dis-moi ce qui est impossible à mesurer avec les moyens que j'ai.
