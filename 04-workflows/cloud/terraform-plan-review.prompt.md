---
description: Relire un plan Terraform avant application - destructions, remplacements, droits, exposition, couts
---
# Relecture d'un plan Terraform

Réponds en français. Joue le rôle du Challenger (`05-agents/challenger.agent.md`). Je te donne le résultat de `terraform plan`
(assaini : identifiants de compte, noms internes et valeurs sensibles retirés) : [COLLER].

## Ce que tu produis
1. Résumé : combien de créations, modifications, remplacements, destructions.
2. **Alertes** (chacune avec la ressource, la preuve dans le plan et pourquoi c'est un risque) :
   - destructions et remplacements, surtout de ressources avec des données ;
   - changements de droits (IAM, politiques) et de règles réseau ;
   - ressources exposées à Internet, chiffrement retiré, journaux d'audit désactivés ;
   - changements de coût (tailles, nombre, stockage) ;
   - valeurs "connues après application" qui empêchent de juger.
3. Ce qui est cohérent avec le ticket, et ce qui n'a rien à y faire (changement hors périmètre).
4. Verdict : OK pour demander l'application / à corriger avant / bloquant.
5. Trois questions pour l'auteur du changement, et ce que tu n'as pas pu vérifier.

## Règles
- Tu ne lances rien et tu ne demandes pas d'`apply`.
- Un plan propre ne prouve pas que le changement est bon : dis ce qu'un plan ne montre pas.
