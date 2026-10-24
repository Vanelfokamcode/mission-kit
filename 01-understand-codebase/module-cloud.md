# Module : cloud et infrastructure

Pour cartographier un environnement cloud. Règle d'or : lecture seule d'abord. Jamais d'`apply`, de suppression
ou de changement de droits sans validation écrite de la personne responsable.

## Couches à cartographier
| Couche | Questions à poser | Points faibles fréquents |
|--------|------------------|--------------------------|
| Organisation | quels comptes ou souscriptions, quels environnements, qui administre ? | environnements mélangés |
| Identités et accès | quels rôles, qui peut faire quoi, comment sont gérés les accès temporaires ? | droits trop larges, comptes partagés |
| Réseau | quels réseaux, quelles zones publiques, quels flux autorisés ? | ressources exposées sans nécessité |
| Calcul, stockage, données | quels services, quelles tailles, où sont les données ? | ressources oubliées ou surdimensionnées |
| Infrastructure as code | quel outil, où est l'état, quels modules, y a-t-il de la dérive entre le code et la réalité ? | état non verrouillé, changements manuels |
| CI/CD | qui déploie, comment, avec quelles validations, comment revient-on en arrière ? | déploiement manuel, pas de retour arrière |
| Supervision | quelles métriques, quelles alertes, qui est prévenu ? | pas d'alerte sur ce qui compte |
| Sécurité | secrets, chiffrement, journaux d'audit, mises à jour ? | secrets en clair, journaux désactivés |
| Résilience | sauvegardes, restauration testée, plan de reprise ? | sauvegarde jamais restaurée en test |
| Coûts (FinOps) | budgets, étiquettes de coût, qui voit la facture ? ressources orphelines ? | pas d'étiquettes, donc pas de responsable du coût |
| Gouvernance | politiques de conformité, règles imposées ? | exceptions non documentées |

## Commandes de lecture seule (à confirmer avant usage)
Demande au référent quel compte et quel rôle en lecture seule utiliser, puis par exemple :

    aws sts get-caller-identity           # quel compte et quel rôle suis-je ?
    terraform state list                  # ce que Terraform gère
    terraform plan                        # seulement si on te l'a autorisé : montre les écarts, ne change rien

Ne colle jamais dans un outil d'IA un identifiant de compte, une clé ou une sortie contenant des valeurs.

## Prompts à utiliser
1. "À partir des fichiers d'infrastructure de ce dépôt, décris l'architecture cloud : services, réseaux, accès,
   flux de données et environnements. Distingue [vu], [déduit], [inconnu]."
2. "Liste les risques de sécurité et de résilience visibles dans ce code d'infrastructure, avec la preuve (fichier)
   et une question à poser à l'équipe pour chacun. Ne propose aucune modification."
3. "Repère dans ce code les éléments qui pèsent sur le coût (tailles, nombre d'instances, stockage, régions,
   étiquettes manquantes) et propose des questions à poser pour savoir lesquels sont voulus."

## Compétences CESI que ce travail peut illustrer (si les preuves existent)
1.1 (besoin), 2.1 et 2.2 (plan et suivi de déploiement), 3.2 à 3.5 (reprise, maintenance, continuité, accès),
4.3 (budget et performance).
