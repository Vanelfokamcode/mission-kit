# Les branches Git, de zéro

Quand l'utiliser : tu ne comprends plus où tu es, ou tu arrives sur un nouveau dépôt.

## L'idée en une phrase
Une branche est une ligne de travail parallèle : tu modifies le projet sans toucher à la version que les autres (et la production) utilisent.

## Vocabulaire
- **Dépôt (repo)** : le projet avec tout son historique.
- **Commit** : une photo du projet à un instant, avec un message.
- **Branche** : une étiquette qui suit une série de commits. `main` est la branche officielle.
- **Local / remote (origin)** : ta copie sur ton PC / la copie partagée (GitHub, GitLab, Azure DevOps).
- **HEAD** : la branche sur laquelle tu te trouves maintenant.
- **Pull request (PR)** : une demande pour fusionner ta branche dans `main`, avec relecture.

## Pourquoi on ne pousse jamais sur main / prod
- `main` est souvent déployé automatiquement : une erreur peut devenir un incident chez le client.
- Les autres partent de `main` pour travailler : tu casses leur journée.
- Sans PR, personne ne relit : plus de filet de sécurité.
- Défaire un commit déjà partagé est compliqué et visible de tous.

## Le schéma

    main:      A---B---C-----------F      F = la fusion de ta PR
                        \         /
    ta branche:          D---E---          ton travail, isolé

## Commandes de base

    git status                          # où suis-je, qu'est-ce qui a changé
    git branch                          # liste des branches locales
    git switch main                     # aller sur main
    git switch -c feature/ma-tache      # créer ET aller sur une nouvelle branche
    git log --oneline --graph --decorate -10   # voir l'historique récent

## Nommer ses branches
Format : `type/description-courte` (`feature/add-login`, `fix/null-pointer`, `docs/readme`).
`gday` choisit le préfixe à partir du type de commit. Si le client impose un autre format
(par exemple avec un numéro de ticket), c'est le sien qui s'applique.

## Ce que font mes outils
- `gday type "description"` : commit conventionnel. Sur une branche protégée, il propose d'en créer une.
- `gpush` : pousse ta branche (jamais une branche protégée) et affiche le lien de PR sur GitHub.
- Le garde-fou (hooks) : refuse commit et push sur `main master prod production`,
  et refuse les fichiers qui ressemblent à des secrets (`.env`, clés, `.tfstate`...).
  Autres branches protégées : `PROTECTED_BRANCHES="main develop release/*" gday ...`
- Le garde-fou est un frein local, pas une sécurité : la vraie protection est celle du serveur
  (protection de branche sur GitHub).
