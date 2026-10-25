---
description: Relire la PR de quelqu'un d'autre en junior - comprendre, reperer les risques, formuler des commentaires utiles et respectueux
---
# Relire une PR

Je suis junior. Je relis pour apprendre et apporter un deuxième regard : je ne suis pas l'autorité. Réponds en français.

## Ce que je te donne
Description de la PR et ticket : [COLLER]. Le diff (ou `git diff --stat` puis les fichiers clés) : [COLLER].
Conventions de l'équipe : [COLLER, sinon "inconnues"].

## Ce que tu produis
1. **Comprendre** : ce que fait la PR en 5 lignes, et les fichiers à lire en priorité.
2. **Contrôles** : correspond-elle au ticket ? tests ? cas limites et gestion d'erreurs ? sécurité (secrets, entrées non validées,
   droits) ? lisibilité ? impacts sur d'autres modules ? respect des conventions ?
3. **Commentaires** prêts à poster, chacun avec : fichier et ligne, niveau [bloquant] [suggestion] [question] [détail],
   la preuve, et une formulation qui porte sur le code, jamais sur la personne. Préfère la question : "j'ai vu X, est-ce voulu ?"
4. **Ce que je ne peux pas juger** et que je devrais demander à un senior.
5. Un point positif, seulement s'il est vrai et précis.

## Règles
- Ne réécris pas leur code et ne demande pas de changement de style qui n'est pas dans les conventions.
- Étiquette [vu] ou [supposé]. Un doute reste un doute : formule-le comme tel.
- Ne recopie aucun secret aperçu dans le diff : signale-le sans la valeur.
