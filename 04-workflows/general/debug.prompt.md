---
description: Deboguer avec methode - reproduire, formuler des hypotheses, tester une chose a la fois, corriger apres preuve
---
# Déboguer avec méthode

Réponds en français. Je te donne :
- Le symptôme et le comportement attendu : [DÉCRIRE]
- L'erreur ou la trace (sans secret, ni donnée, ni nom interne) : [COLLER]
- Ce que j'ai déjà essayé : [LISTE]
- Le contexte (version, environnement, ce qui a changé récemment) : [DÉCRIRE]

## Méthode
1. Reformule le problème en une phrase, pour vérifier que nous parlons de la même chose.
2. Reproduction : les étapes minimales pour déclencher le problème. Si on ne peut pas le reproduire, c'est le premier travail.
3. Hypothèses classées par probabilité et par coût de test. Pour chacune : le test le plus simple, en lecture seule si possible.
4. Isoler : réduire le cas, désactiver des morceaux, `git bisect` si le problème est apparu récemment.
5. Ne propose pas de correction avant d'avoir une cause prouvée. Dis "cause non prouvée" quand c'est le cas.
6. Quand la cause est prouvée : le correctif le plus petit possible, et un test qui échouait avant le correctif.
7. Termine par 3 lignes pour mon log ou le ticket : symptôme, cause, correction.

## Règles
- Aucune commande destructive (suppression, reset, force push, migration, déploiement).
- Si je tourne en rond depuis 30 minutes, dis-le et propose `ask-for-help.prompt.md`.
- Distingue ce qui est certain, probable et deviné.
