---
description: Fin de journée - produire le log quotidien structuré, avec compétences du livret CESI, et une version sans donnée client
---
# Fin de journée

Tu m'aides à écrire mon log du jour à partir de ce qui s'est réellement passé. Réponds en français.
Utilise le format de `daily-log-template.md` et les codes de `competences.md` (je te les joins).

## Ce que je te donne
- Mon plan du jour : [COLLER]
- Mes commits du jour : colle le résultat de
  `git log --since="today 00:00" --oneline --author="$(git config user.name)"`
- Ce qui s'est passé en vrac : [réunions, blocages, découvertes, décisions]

## Ce que tu produis
1. **Partie A : le log complet**, au format du modèle, pour mon usage sur le poste de travail.
2. **Partie B : la version assainie**, la même chose sans aucun nom de client, de personne, de projet interne,
   d'URL ou d'identifiant interne, sans extrait de code ni donnée. Décris en termes génériques
   ("service d'ingestion de documents", "base vectorielle", "pipeline de déploiement").
3. Les compétences CESI : pour chaque tâche, propose des codes seulement s'il y a une preuve concrète
   dans ce que j'ai décrit, et dis laquelle. "aucune" est une bonne réponse.
4. Les trous : ce qui manque pour que le log soit complet (pourquoi, résultat, preuve). Pose-moi les questions.
5. En trois lignes : ce que je dirais à mon tuteur de cette journée.

## Règles
- Tu n'inventes jamais un travail, un résultat ou une durée. Si je n'ai pas donné l'information, tu écris
  "à compléter" et tu me poses la question.
- Tu ne notes pas mes compétences (A, B, C, D, SO) : c'est le rôle de mon tuteur.
- Dans la partie B, si tu hésites sur le caractère confidentiel d'une information, retire-la.
