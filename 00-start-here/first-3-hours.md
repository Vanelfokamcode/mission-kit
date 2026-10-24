# Les 3 premières heures sur une pile inconnue

Objectif : sortir avec une carte d'une page et une liste de questions précises, sans rien casser.
Règles : ne modifie rien, ne refactore rien, ne lis pas tout. Après 30 minutes bloqué, tu demandes.

## Heure 1 : s'orienter
- [ ] Lire le README et la documentation existante.
- [ ] Parcourir l'arborescence sur 2 niveaux : langage, framework, dossiers clés.
- [ ] Repérer les fichiers qui décrivent le projet : dépendances, Dockerfile, pipeline de CI, fichiers d'infra.
- [ ] Lancer le projet et les tests. Note chaque obstacle : c'est une contribution possible (corriger la doc).
- [ ] Lire l'historique :

      git log --oneline -20
      git shortlog -sn --no-merges | head
      git log --since="3 months ago" --name-only --pretty=format: | sort | uniq -c | sort -rn | head -15

  Les fichiers les plus modifiés montrent où vit le projet, et qui connaît quoi.

## Heure 2 : suivre un flux de bout en bout
- [ ] Choisir un cas d'usage simple (une requête, un document ingéré, un déploiement).
- [ ] Le suivre de l'entrée à la sortie, fichier par fichier. Dessine-le à la main.
- [ ] Noter ce que tu ne comprends pas, sans t'acharner dessus.

## Heure 3 : écrire la carte et les questions
- [ ] Une page : composants, flux principal, dépendances externes, où tourne quoi, comment on déploie, zones fragiles.
- [ ] Dix questions précises, classées : bloquantes, importantes, curiosité.
- [ ] Montrer la carte au référent. Une carte fausse corrigée en cinq minutes vaut plus qu'une heure de lecture.

## Prompts pour l'assistant (à adapter)
1. "Explique l'architecture de ce dépôt à un junior. Cite les fichiers sur lesquels tu t'appuies. Distingue ce que tu vois
   dans le code de ce que tu supposes, et liste ce que tu ne peux pas savoir sans demander."
2. "Suis le flux [cas d'usage] de bout en bout dans ce code. Donne la liste ordonnée des fichiers et fonctions traversés."
3. "À partir de cette carte [COLLER], quelles sont les 10 questions les plus utiles à poser à l'équipe ?
   Classe-les en bloquantes, importantes, curiosité."

L'assistant peut se tromper sur du code qu'il n'a pas lu en entier : vérifie dans le code avant de répéter ce qu'il dit.
