# Changer l'infrastructure avec Terraform, sans risque

Règle : le plan se lit, l'application se fait par la personne ou le pipeline autorisé, dans la fenêtre prévue.
Chez le client, leurs règles passent avant les miennes.

## Procédure
1. **Où suis-je ?** Environnement, espace de travail (workspace), emplacement de l'état. Ne jamais travailler au hasard sur la production.
2. **Une branche, un petit changement** (voir `03-git`).
3. **Qualité locale** : `terraform fmt` et `terraform validate`.
4. **Plan** : `terraform plan -out=tfplan` (lecture, ne change rien). Je n'exécute le plan que si j'y suis autorisé.
5. **Lire le plan** : `+` création, `~` modification sur place, `-/+` remplacement (destruction puis création), `-` destruction.
   Tout remplacement ou destruction d'une ressource qui contient des données (base, disque, bucket) : je m'arrête et je demande.
6. **PR** : le plan (assaini) en pièce jointe, avec ce qui change, pourquoi, et le plan de retour arrière.
7. **Application** : par la personne ou le pipeline autorisé, dans la fenêtre prévue. Je regarde, je ne force pas.
8. **Vérification** : contrôler le résultat attendu, la supervision, les coûts.
9. **Retour arrière** : revenir au code précédent puis planifier à nouveau. Une ressource détruite avec ses données ne revient pas.

## Interdits
- `apply` en local sur la production, ou `-auto-approve` hors pipeline validé.
- Modifier l'état à la main, ou utiliser `-target` par habitude.
- Secrets dans le code ou dans les fichiers de variables commités.
- Appliquer un plan que je n'ai pas compris.

## Questions pour le jour 1
Où est l'état, qui peut appliquer, y a-t-il un pipeline, quelle fenêtre de changement, comment demande-t-on une exception, qui valide un plan ?
Compétences possibles du livret : 2.1, 2.2, 3.1.
