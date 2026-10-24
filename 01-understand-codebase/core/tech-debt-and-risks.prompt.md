---
description: Reperer dette technique et risques, classes par risque et effort, sans critiquer l'equipe
---
# Dette technique et risques

Réponds en français. Observe le dépôt, ne modifie rien.

## Ta mission
Repérer ce qui fragilise le projet, pour que je sache où être prudent. Je ne cherche pas à critiquer l'équipe :
un junior qui arrive en découvre les raisons plus tard.

## À examiner
- Tests : couverture visible, tests qui manquent sur les zones critiques, tests désactivés.
- Dépendances : versions très anciennes, abandonnées, non verrouillées.
- Code : fichiers ou fonctions très longs, duplication, TODO/FIXME/HACK, code mort apparent.
- Sécurité : secrets en dur (signale l'emplacement, jamais la valeur), droits trop larges, entrées non validées.
- Exploitation : logs, gestion d'erreurs, configuration par environnement, sauvegardes, monitoring.
- Documentation : ce qui manque ou est périmé.

## Format de sortie
Tableau : constat | où (fichier) | risque (faible / moyen / élevé) | effort estimé | confiance (vu / déduit).
Puis : les 3 points à connaître absolument avant de toucher au code, et pour chacun la question à poser à l'équipe,
formulée sans reproche ("j'ai vu X : est-ce voulu ?").

## Règles
- Pas de verdict sur les personnes ni sur la qualité globale. Constats, preuves, questions.
- Distingue une dette connue et assumée d'une dette que tu supposes.
- Je ne corrigerai rien sans l'accord de l'équipe : ne propose pas de refactor massif.
