# Routine hebdomadaire

Les semaines d'école (1 semaine sur 4) n'ont pas de log de mission : le recap couvre les semaines en entreprise.

## Chaque soir (5 à 10 minutes)
1. `newlog` crée le fichier du jour dans `06-logs/daily/`.
2. `02-daily/end-of-day.prompt.md` produit la partie A (log complet) et la partie B (version assainie).
3. Je range A dans `06-logs/daily/` et B dans `06-logs/sanitized/` (même nom de fichier).

## Chaque vendredi (20 minutes)
1. `weekly-recap.prompt.md` à partir des logs de la semaine : recap court pour mon tuteur.
2. `competence-coverage.prompt.md` : où j'en suis sur les 12 compétences et ce qu'il faut chercher la semaine suivante.
3. L'agent Superviseur relit le tout et prépare mes questions pour le tuteur.
4. Si j'utilise un outil perso pour remplir le livret : uniquement les fichiers de `sanitized/`, et seulement si
   Accenture l'autorise (voir `00-start-here/confidentiality-checklist.md`). Sinon, je remplis le livret à la main
   à partir du recap.
5. J'envoie le recap à mon tuteur, au rythme qu'il préfère. À lui demander : chaque semaine ? chaque jour en trois lignes ?

## Chaque mois
`monthly-rollup.prompt.md` : compétences et savoir-faire du mois, avec preuves.

## Avant chaque point semestriel avec le tuteur
`monthly-rollup.prompt.md` en mode semestre : les meilleures preuves par compétence, ce qui manque, les sujets à aborder.
La notation (A, B, C, D, SO) reste celle du tuteur.

## Où vit quoi
| Quoi | Où | Peut sortir ? |
|------|----|---------------|
| logs complets, notes sur le code | `06-logs/daily/` du poste de travail | non |
| logs assainis | `06-logs/sanitized/` | oui, si la règle l'autorise |
| recaps, bilans, brouillons livret/charte | `06-logs/weekly/`, `monthly/`, `cesi/` | selon leur contenu (assainir d'abord) |
| prompts, modèles, scripts | `mission-kit/` (versionné) | oui |
`06-logs/` est dans `.gitignore` : `git status` ne doit jamais le montrer.
