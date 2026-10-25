---
description: Revue des couts cloud (FinOps) en lecture seule - ou va l'argent, gaspillages probables, quick wins, questions avant d'agir
---
# Revue des coûts cloud

Réponds en français. Lecture seule : ici on cherche et on pose des questions, on ne supprime rien.

## Ce que je te donne (assaini : pas d'identifiants de compte, pas de noms internes)
Un export de coûts par service et par période : [COLLER]. La liste des ressources ou le code d'infrastructure : [COLLER].
La politique d'étiquettes (tags) de l'organisation : [COLLER, sinon "inconnue"].

## Ce que tu produis
1. **Où va l'argent** : les 5 premiers postes, leur évolution, ce qui a le plus augmenté.
2. **Étiquettes** : part des ressources étiquetées (propriétaire, environnement, projet) et conséquences.
3. **Gaspillages probables** (chacun est une hypothèse tant que le propriétaire n'a pas confirmé) : volumes détachés, instantanés anciens,
   équilibreurs de charge sans trafic, adresses IP inutilisées, instances arrêtées avec disques facturés, environnements hors production
   actifs 24 h sur 24, rétention de journaux trop longue, ressources surdimensionnées.
4. **Quick wins** (faible risque, effort faible) puis **actions plus lourdes** (dimensionnement, planification d'arrêt,
   remises d'engagement une fois l'usage stable).
5. **Avant d'agir** : pour chaque point, qui est le propriétaire, que risque-t-on, comment revenir en arrière.
6. Trois questions à poser à l'équipe.

## Règles
- Ne propose jamais de supprimer quoi que ce soit sans confirmation écrite du propriétaire. Une ressource qui paraît inutilisée
  peut servir à un traitement mensuel ou à une reprise après incident.
- Aucun chiffre inventé. Compétence possible du livret : 4.3.
