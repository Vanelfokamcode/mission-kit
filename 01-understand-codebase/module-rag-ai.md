# Module : IA, RAG et applications LLM

Pour cartographier un système qui interroge des documents ou pilote un modèle. Pour chaque étape :
où regarder, quoi demander, et ce qui casse le plus souvent.

## Le pipeline RAG, étape par étape
| Étape | Questions à poser | Points faibles fréquents |
|-------|------------------|--------------------------|
| Sources et ingestion | quelles sources, quels formats, quelle fréquence, qui a le droit de les lire ? comment gère-t-on suppressions et mises à jour ? | données obsolètes, doublons, droits d'accès perdus |
| Nettoyage et métadonnées | quelles métadonnées (source, date, droits, version) ? | métadonnées absentes, donc impossible de filtrer ni de citer |
| Découpage (chunking) | par taille, par structure (titres, arbre syntaxique pour du code) ? recouvrement ? | coupures au milieu d'une idée ou d'une fonction |
| Embeddings | quel modèle, quelle langue, quelle version ? coût ? | changement de modèle sans réindexer, langue mal couverte |
| Base vectorielle | quel moteur, quels index, quels filtres ? sauvegarde ? | pas de filtre par droits, pas de plan de reprise |
| Récupération (retrieval) | top-k, recherche hybride (mots-clés + vecteurs), reranking, seuil de score ? | trop ou trop peu de contexte, aucune alerte si rien de pertinent |
| Prompt et génération | modèle, température, gabarits, citations des sources, réponse si le contexte est insuffisant ? | hallucinations, sources non citées |
| Évaluation | jeu de questions de référence, métriques (rappel, fidélité au contexte, pertinence), relecture humaine ? | aucune évaluation : on ignore si un changement améliore ou dégrade |
| Observabilité | traces, coût et latence par requête, retours utilisateurs ? | coûts qui dérivent sans alerte |
| Sécurité | données personnelles, injection de prompt, droits par document, RGPD ? | fuite de documents entre utilisateurs, secrets dans les prompts |

## Applications LLM et agents (hors RAG pur)
- Quels outils l'agent peut-il appeler, avec quels droits ? Qui valide les actions sensibles ?
- Quelles limites : nombre d'étapes, budget, délais, relances ?
- Quels garde-fous sur les entrées et les sorties ? Quels journaux de ce que l'agent a fait ?
- Comment évalue-t-on : scénarios de test, régressions quand le prompt ou le modèle change ?
- Les prompts sont-ils versionnés, relus, testés comme du code ?

## Prompts à utiliser
1. "Cartographie le pipeline RAG de ce dépôt étape par étape, avec les fichiers de chaque étape.
   Distingue [vu], [déduit], [inconnu]. Termine par les questions à poser à l'équipe."
2. "Pour chaque étape du pipeline, liste les points faibles que tu observes dans ce code, avec la preuve (fichier),
   en suivant le tableau du module. Ne propose pas de refactor."
3. "Propose un plan d'évaluation minimal pour ce système : 20 questions de référence couvrant les cas faciles et
   difficiles, les métriques à suivre, et comment les rejouer à chaque changement."

## Compétences CESI que ce travail peut illustrer (si les preuves existent)
1.1 et 1.2 (besoin et spécification d'un composant), 3.5 (accès et données), 4.3 (coût par requête, suivi du budget).
