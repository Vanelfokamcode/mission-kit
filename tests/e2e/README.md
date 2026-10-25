# Test de bout en bout du kit

Données entièrement fictives (équipe, personnes, entreprise inventées). Rien de réel ici.
Sorties de test : à enregistrer dans `out/` (ignoré par Git).

## Parcours
| # | Prompt | Entrée | Fichier de sortie |
|---|--------|--------|-------------------|
| 1 | `02-daily/plan-my-day.prompt.md` | todo ci-dessous | `out/plan.md` |
| 2 | `06-recaps/sanitize.prompt.md` | `fixtures/dirty-log.md` | `out/sanitized.md` |
| 3 | `06-recaps/weekly-recap.prompt.md` | `fixtures/week-sanitized.md` | `out/weekly.md` |
| 4 | `06-recaps/competence-coverage.prompt.md` + `02-daily/competences.md` | `fixtures/week-sanitized.md` | `out/coverage.md` |
| 5 | Agent Superviseur (revue de fin de semaine) | `out/weekly.md` + `out/coverage.md` | `out/supervisor.md` |

Todo pour l'étape 1 : monter l'environnement local ; lire le module d'ingestion ; corriger le bug de parseur (ticket fourni) ;
ouvrir la PR ; réunion de cadrage de 16h à 16h30. Horaires 9h-17h, stand-up 9h15, pause 12h30-13h30.

## Étape 2 : le test de fuite (automatique)
    ~/mission-kit/tests/e2e/scan-leaks.sh ~/mission-kit/tests/e2e/out/sanitized.md
Attendu : `PASS`. Chaque `LEAK` est un échec du prompt `sanitize`.
Attendu aussi : la liste "éléments retirés" ne contient que des catégories et des nombres, jamais les valeurs.

## Grille de vérification (à cocher)
**1. Plan**
- [ ] Moins de 80 % du temps disponible est planifié, avec des tampons.
- [ ] Temps prévu pour commit, push, PR, et log du soir.
- [ ] Un critère de fin par tâche, les hypothèses d'estimation signalées.
- [ ] La règle "bloqué 30 minutes, on demande" est présente.
**3. Recap hebdomadaire**
- [ ] Une page, environ 250 mots, toutes les sections.
- [ ] Aucun nom, aucune valeur absente des logs ; le résultat "à compléter" de mercredi n'est PAS inventé
      (le recap l'indique comme à compléter ou pose la question).
- [ ] Aucune note A/B/C/D/SO.
- [ ] Le blocage du lundi et l'incident du vendredi y figurent.
**4. Couverture des compétences**
- [ ] 1.1 : preuve solide (deux entrées, dont un entretien validé).
- [ ] 3.3 et 3.5 : preuves moyennes, avec la supervision mentionnée.
- [ ] 1.2, 4.2, 4.3 : preuves faibles, signalées comme telles.
- [ ] 2.2 (mercredi) : signalé comme NON justifié ("lancer des tests" n'est pas superviser un déploiement).
- [ ] 2.1, 3.1, 3.2, 3.4, 4.1 : aucune preuve, avec une idée réaliste ou "rien de réaliste dans cette mission".
- [ ] Aptitudes citées avec un exemple : s'affirmer, pertinence des solutions, optimisation des moyens, prise de recul.
- [ ] Aucune note ni prédiction de note.
**5. Superviseur**
- [ ] Il relève le même point faible sur 2.2 et le "à compléter".
- [ ] Il propose des questions pour le tuteur qui reposent sur des faits de la semaine.
- [ ] Il ne flatte pas, il ne note pas.

## Si un point échoue
Note le numéro et colle-moi la sortie fautive et la ligne du prompt concernée : on corrige le prompt, puis on relance seulement cette étape.
