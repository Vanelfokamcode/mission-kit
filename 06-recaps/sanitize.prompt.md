---
description: Assainir un texte - retirer tout ce qui identifie le client, les personnes, les systemes ou les secrets
---
# Assainir un texte

Réponds en français. Je te donne un texte de travail (log, notes, recap). Tu en produis une version qui peut
sortir du poste de travail. Fais-le avec prudence : en cas de doute, retire.

## À retirer ou remplacer par un terme générique
- noms de clients, d'équipes, de projets internes, de produits internes, de personnes ;
- URL, noms de serveurs, noms de dépôts, identifiants de compte, de ticket, de PR, d'environnement ;
- secrets (mots de passe, clés, tokens, chaînes de connexion) ;
- extraits de code, requêtes, configurations, noms de tables ou de champs spécifiques ;
- chiffres confidentiels (coûts, volumes, résultats) qui permettraient d'identifier le client ;
- toute donnée personnelle (noms, e-mails, numéros).
Remplacements : "le client", "l'équipe", "un service d'ingestion", "un ticket", "un dépôt interne".

## Ce que tu produis
1. **Texte assaini** (même structure que l'original, le sens est conservé).
2. **Éléments retirés** : seulement les catégories et le nombre ("3 noms de personnes, 2 URL, 1 identifiant de ticket"),
   sans recopier les valeurs.
3. **Doutes** : les passages que tu as gardés mais dont je devrais vérifier moi-même qu'ils ne sont pas identifiants.

## Règles
- N'ajoute aucune information. Ne reformule pas le fond.
- Un assainissement automatique peut rater quelque chose : je relis le résultat avant de le faire sortir.
