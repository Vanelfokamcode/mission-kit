# Premier jour sur une mission : la page de lancement

Une page à ouvrir le matin et à suivre dans l'ordre. Chaque ligne renvoie à un fichier du kit.
Les règles du client et de l'entreprise passent avant les miennes.

## La veille (sur mon PC perso, rien du client)
- [ ] `git pull` dans `mission-kit/` et `./setup.sh` : le kit est à jour sur la machine que j'utiliserai.
- [ ] Relire `confidentiality-checklist.md` et ouvrir `day1-questions.md`.
- [ ] Préparer le message au tuteur (modèle à la fin de `day1-questions.md`) pour demander : référent technique,
      accès, règles Git, outils d'IA autorisés.

## Cinq règles pour la journée
1. Je ne modifie rien et je ne pousse rien. Aujourd'hui, je comprends.
2. Je ne colle rien dans un outil d'IA avant d'avoir la réponse à "quels outils et quelles données sont autorisés ?".
3. Bloqué 30 minutes : je documente ce que j'ai essayé et je demande (`04-workflows/general/ask-for-help.prompt.md`).
4. Je regroupe mes questions (3 ou 4 à la fois, à la bonne personne) et je note les réponses.
5. Une carte fausse corrigée en 5 minutes vaut mieux qu'une heure de lecture solitaire.

## Matin
1. **Arrivée.** `newlog` crée le log du jour. Je note l'heure, les personnes rencontrées et leurs rôles.
2. **Stand-up ou présentation.** J'écoute, je note qui fait quoi (début de `who-owns-what`) et le vocabulaire de l'équipe.
3. **Les questions du cadre** (sections 1, 2, 3 et 5 de `day1-questions.md`) : objectif de la mission, accès, règles Git et PR,
   sécurité. 30 minutes maximum avec le référent ou le tuteur.
4. **Verrou confidentialité.** Je note la réponse sur les outils d'IA et les données autorisés :
   - autorisé : j'utilise les prompts sur le code, dans l'outil validé ;
   - non autorisé ou flou : je n'utilise aucun outil d'IA sur le code. Je travaille à la main avec `first-3-hours.md` ;
     je peux utiliser les prompts avec des extraits que j'ai assainis, seulement si on me le permet.
5. **Accès manquants** : je liste ce qui manque, qui le demande et sous quel délai.
6. `02-daily/plan-my-day.prompt.md` si une tâche m'est confiée. Sinon, mon plan est : comprendre et poser des questions.

## Après-midi
7. **Cloner le dépôt** selon la méthode du client. Dans le dépôt, avant tout : `git config user.name` et
   `git config user.email` avec l'e-mail de l'entreprise. Puis `git config mission.protectedBranches "..."` si besoin,
   et `install-guard.sh` seulement si le dépôt n'a pas déjà ses propres hooks.
8. **Cartographier** (dans une même conversation, dans cet ordre, si l'outil est autorisé) :
   `map-the-repo`, puis `run-locally`, puis `architecture-summary`
   (`01-understand-codebase/core/`). Je vérifie dans le code ce que la réponse affirme.
9. **Lancer le projet** en local. Chaque obstacle rencontré est une contribution possible : corriger la documentation.
10. **Première question de fond** pour le lendemain : ce qu'il faut comprendre sur le pourquoi métier
    (`big-picture-questions.md`). Je prends un rendez-vous de 30 minutes avec le responsable produit ou métier.
11. **16h30 : je ferme.** `02-daily/end-of-day.prompt.md` produit le log, avec les codes de compétence réellement justifiés
    (le recueil du besoin, 1.1, si j'ai mené un entretien). Version assainie avant toute sortie du poste.

## Ce que j'ai à la fin du jour 1
- [ ] Les règles : outils d'IA et données, conventions Git, process de PR, qui valide.
- [ ] La liste des accès demandés ou obtenus.
- [ ] Le dépôt cloné, avec la bonne identité Git, et lancé en local, ou la raison pour laquelle ce n'est pas possible.
- [ ] Un premier brouillon de la carte (`codebase-map-template.md`) avec ses questions ouvertes.
- [ ] Un rendez-vous pris pour la vue d'ensemble.
- [ ] Mon log du jour, rangé dans `06-logs/daily/`.

## Message de fin de journée au tuteur (3 lignes, version assainie)
Aujourd'hui : j'ai rencontré [rôles], obtenu [accès], cartographié [dans les grandes lignes] et lancé [ou : bloqué sur X].
Demain : [priorités]. Question : [une seule, précise, avec ce que j'ai déjà essayé].

## Si ça ne se passe pas comme prévu
- **Pas d'accès au code** : je fais l'étape 3 et le rendez-vous de vue d'ensemble, je lis la documentation disponible,
  et je prépare mes questions. Les accès attendus ne sont pas une raison de rester inactif.
- **Référent absent** : je pose mes questions par écrit, regroupées, et je demande qui d'autre peut répondre.
- **Dépôt énorme ou pile inconnue** : je me limite à un seul flux de bout en bout (`first-3-hours.md`).
- **On me demande de livrer vite dès le jour 1** : je demande le périmètre exact et ce qui est attendu.
  Je ne contourne jamais une règle de sécurité ou de Git pour aller plus vite.
- **Je doute de ce que j'ai le droit de faire** : j'arrête et je demande. Une question coûte moins qu'une erreur.

## Les jours 2 à 5
| Jour | Je fais |
|------|---------|
| 2 | `read-the-history`, `who-owns-what`, première carte relue ; premier entretien de vue d'ensemble |
| 3 | `big-picture` avec ce que j'ai appris ; si on me confie un petit ticket : `plan-my-day`, branche, `gday`, `gpush` |
| 4 | `tech-debt-and-risks` ; entretien avec le référent technique ; carte complétée |
| 5 | Carte montrée au référent et corrigée ; `06-recaps/weekly-recap` ; `competence-coverage` ; le Superviseur prépare mes questions pour le tuteur |
