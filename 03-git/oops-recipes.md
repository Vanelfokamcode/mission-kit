# Recettes "oups"

Règle d'or : avant toute commande qui détruit (`reset --hard`, `restore`, `clean`),
fais `git status` et `git log --oneline -5` pour savoir ce que tu perds.

## J'ai modifié des fichiers sur la mauvaise branche (pas encore commité)

    git switch -c feature/bonne-branche

Tes modifications te suivent sur la nouvelle branche.

## J'ai commité sur la mauvaise branche (pas encore poussé)

    git switch -c feature/bonne-branche      # le commit est maintenant aussi ici
    git switch ancienne-branche
    git reset --hard HEAD~1                  # retire le commit de l'ancienne branche

À faire seulement si le commit existe bien sur la nouvelle branche (`git log`).

## Annuler mon dernier commit en gardant mes modifications (pas poussé)

    git reset --soft HEAD~1

## Corriger le message du dernier commit (pas poussé)

    git commit --amend -m "fix: nouveau message"

## J'ai ajouté un fichier par erreur (avant commit)

    git restore --staged fichier

## Jeter mes modifications d'un fichier (irréversible)

    git restore fichier

## Mettre mon travail de côté un moment

    git stash
    git stash pop

## Le push est refusé (le serveur a des commits que je n'ai pas)

    git pull
    gpush

Ne force pas le push (`--force`) : tu écraserais le travail des autres.

## Conflit de merge
Git écrit des marqueurs dans le fichier :

    <<<<<<< HEAD
    ta version
    =======
    la version de l'autre
    >>>>>>> main

1. `git status` : liste les fichiers en conflit.
2. Ouvre chaque fichier, garde la bonne version (ou combine), supprime les 3 marqueurs.
3. `git add fichier` puis `git commit` pour terminer.
4. Besoin de tout annuler : `git merge --abort`.

## J'ai déjà poussé un commit qu'il faut annuler
Sur une branche partagée ou fusionnée, ne réécris pas l'historique. Crée un commit inverse :

    git revert <sha-du-commit>
    gpush

## J'ai poussé un secret (mot de passe, clé, token)
Considère-le comme compromis : **révoque et change-le tout de suite**, puis préviens ton
tuteur ou l'équipe sécurité. Le retirer de l'historique vient après, et c'est à eux de décider.

## J'ai "perdu" un commit
`git reflog` liste tout ce que HEAD a visité ; retrouve le commit puis :

    git switch -c rescue <sha>

## À ne jamais faire
- `git push --force` sur une branche partagée (sur la tienne : `--force-with-lease`).
- `--no-verify` pour contourner le garde-fou.
- Commiter un `.env`, une clé ou un fichier d'état Terraform.
