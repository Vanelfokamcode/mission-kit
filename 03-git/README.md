# 03-git

- `gday type "description"` : commit conventionnel (feat fix refactor perf docs test chore)
- `gpush` : push sécurisé de la branche courante + lien de PR
- `install-guard.sh` : active le garde-fou dans le dépôt courant (config locale, rien de commité)
- Guides : `branches-from-zero.md`, `pr-workflow.md`, `oops-recipes.md`
- Chez le client : ne lance `install-guard.sh` que si le dépôt n'a pas déjà ses propres hooks.

## À faire sur chaque nouveau clone (surtout chez le client)
1. Régler l'identité du dépôt : `git config user.name "..."` et `git config user.email "..."` (e-mail Accenture, jamais le perso).
2. Lancer `install-guard.sh` si le dépôt n'a pas déjà ses propres hooks.
3. Si les branches protégées sont différentes : `git config mission.protectedBranches "main develop release/*"`.
4. Vérifier `git --version` (la commande `git switch` demande au moins 2.23).
