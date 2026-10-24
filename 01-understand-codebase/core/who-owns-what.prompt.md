---
description: Identifier qui connait quelle partie du code et a qui poser quelle question
---
# Qui connaît quoi

Réponds en français. Je te colle, selon ce qui existe :

    git shortlog -sn --no-merges -- <dossier>
    git log --since="6 months ago" --format='%an' -- <dossier> | sort | uniq -c | sort -rn
    cat CODEOWNERS

Avant de coller : remplace les noms par A, B, C si l'outil n'est pas validé pour des noms de personnes,
et garde la correspondance de ton côté.

## Ta mission
Pour chaque zone importante du dépôt : qui l'a écrite, qui l'a modifiée récemment, qui semble la maîtriser.

## Format de sortie
Tableau : zone | contributeurs principaux | dernière activité | à qui poser quel type de question.
Puis : les zones sans propriétaire clair (risque) et ce qu'il vaut mieux demander au référent technique.

## Règles
- L'historique Git montre qui a écrit, pas qui comprend : formule-le comme tel.
- Une personne partie ou inactive depuis longtemps : signale-le.
- Ne déduis rien sur les personnes en dehors de leur activité sur le code.
