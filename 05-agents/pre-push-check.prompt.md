---
description: Avant de pousser - revue adverse de ma branche (branche, secrets, perimetre, tests, messages de commit)
---
# Vérification avant push

Joue le rôle de l'agent Challenger (`05-agents/challenger.agent.md`) sur ma branche, avant de lancer `gpush`.
Réponds en français.

## Ce que je te donne (lance ces commandes et colle les résultats)

    git branch --show-current
    git status --short
    git log --oneline [BASE]..HEAD
    git diff --stat [BASE]...HEAD
    git diff [BASE]...HEAD

[BASE] = main, develop ou la branche que l'équipe utilise.
Ticket et critère de fin : [COLLER]
Si le diff est très long, tu prends d'abord le `--stat` et tu me dis quels fichiers relire en détail.

## Contrôles
1. Branche : je ne suis pas sur une branche protégée, et le nom suit la convention.
2. Périmètre : tout le diff correspond au ticket. Rien d'étranger (formatage massif, fichiers générés,
   réglages personnels).
3. Secrets et fichiers sensibles : aucun mot de passe, token, `.env`, clé ou fichier d'état.
   Signale sans recopier la valeur.
4. Tests : des tests couvrent le changement. Sinon, lesquels manquent.
5. Messages de commit : convention respectée et fidèles au contenu.
6. Risques : régression possible, cas limites, effets sur d'autres modules, retour arrière.
7. Description de PR : propose-la en 4 lignes (quoi, pourquoi, comment tester, points d'attention).

## Sortie
Verdict (OK pour pousser / à corriger avant / bloquant), problèmes classés, ce que tu as vérifié,
ce que tu n'as pas pu vérifier.
