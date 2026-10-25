---
description: Estimer et suivre le cout par requete d'une application IA, et identifier les leviers de reduction
---
# Coût par requête d'une application IA

Réponds en français. Je te décris le système : [COLLER]. Je te donne les tarifs officiels actuels des services
utilisés : [COLLER]. Si je ne les donne pas, tu ne les inventes pas : tu me dis où les chercher.

## Ce que tu produis
1. **Postes de coût** : embeddings à l'ingestion, embedding de chaque requête, appels au modèle (jetons d'entrée et de sortie),
   reranking, base vectorielle (stockage et requêtes), infrastructure, journalisation.
2. **Formule** par requête, avec mes valeurs : jetons d'entrée = invite + contexte récupéré + question ;
   jetons de sortie = réponse ; coût = jetons x tarif. Garde les valeurs inconnues en placeholders [?].
3. **Scénarios** : volume par mois (bas, moyen, haut), avec le coût total de chacun.
4. **Leviers de réduction**, chacun avec son effet probable et son risque pour la qualité : moins de segments dans le contexte,
   modèle plus petit pour les étapes simples, cache des réponses ou des embeddings, traitement par lots, limiter la longueur de sortie.
5. **Suivi** : ce qu'il faut journaliser pour chaque requête (jetons, modèle, latence, coût estimé) et les alertes à prévoir.

## Règles
- Aucun tarif inventé. Une estimation sans chiffres officiels est une méthode, pas un résultat.
- Toute réduction de coût passe par l'évaluation de qualité avant adoption.
- Compétence possible du livret : 4.3 (budget et performance).
