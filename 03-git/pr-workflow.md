# Le workflow branche -> PR -> merge

Quand l'utiliser : à chaque nouvelle tâche. Les règles du client passent avant celles-ci.

## Le cycle

1. **Partir d'un main à jour**

        git switch main
        git pull

2. **Créer ta branche** (ou laisse `gday` la créer à ton premier commit)

        git switch -c feature/ma-tache

3. **Travailler par petits commits**, un sujet à la fois :

        gday feat "add login form"

4. **Pousser ta branche**

        gpush

5. **Ouvrir la pull request** (lien affiché par `gpush`, ou depuis la plateforme).
   Remplis :
   - Quoi : ce qui change, en 2-3 lignes
   - Pourquoi : le besoin ou le ticket (lien)
   - Comment tester : les étapes pour vérifier
   - Points d'attention : ce que tu veux que le relecteur regarde

6. **Relecture** : réponds à chaque commentaire. Pour corriger : modifie, `gday fix "address review"`,
   puis `gpush`. La PR se met à jour toute seule.

7. **Merge** : seulement après approbation, et par la personne que le client désigne.
   Selon les projets : merge commit, squash ou rebase. Demande lequel.

8. **Nettoyer**

        git switch main
        git pull
        git branch -d feature/ma-tache

## Rester à jour pendant que la PR vit
Si `main` avance pendant ton travail :

    git switch main && git pull
    git switch feature/ma-tache
    git merge main

S'il y a un conflit, voir `oops-recipes.md`.

## Protection côté serveur
Sur tes propres dépôts GitHub : Settings > Branches > règle sur `main` (PR obligatoire,
approbation requise). Chez le client, c'est son équipe qui la gère : demande si `main`
est protégée et qui valide les PR.

## Questions à poser le jour 1
Format de branche ? Format de commit ? Qui relit ? Combien d'approbations ? Quel mode de merge ?
Quelles branches sont déployées vers quels environnements ? Quels tests tournent sur une PR ?
