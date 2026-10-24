# Questions du jour 1

À poser, pas à deviner. Regroupe-les : 3 ou 4 questions à la fois, à la bonne personne.
Note les réponses dans le log du jour 1. Les règles du client ou de la mission passent avant les miennes.

## 1. Cadre de la mission
- [ ] Quel est l'objectif de la mission ? Qui est le "client" (interne ou externe) et qui est mon interlocuteur au quotidien ?
- [ ] Qui est mon référent technique ? À qui poser quoi (technique, organisation, administratif) ?
- [ ] Qu'attend-on de moi après 1 semaine ? Après 1 mois ?
- [ ] Présence sur site / télétravail, horaires, stand-up (heure, format), autres rituels.
- [ ] Outil de tickets (Jira, Azure DevOps, GitHub Issues...) : où est le backlog, comment un ticket est-il écrit et fermé ?

## 2. Accès et poste
- [ ] Quels accès ai-je déjà (code, cloud, tickets, documentation, VPN) et lesquels manquent ? Qui les demande, sous quel délai ?
- [ ] Quels outils sont autorisés et installés ? Puis-je en installer d'autres ? Quels outils d'IA sont autorisés (voir 5) ?

## 3. Git et livraison
- [ ] Plateforme (GitHub, GitLab, Azure DevOps...), branche par défaut, branches protégées.
- [ ] Convention de nom de branche et de message de commit (conventional commits ? numéro de ticket obligatoire ?).
- [ ] Process de PR : qui relit, combien d'approbations, taille attendue, modèle de description, mode de merge (merge, squash, rebase) ?
- [ ] Environnements (dev, recette, préprod, prod) : qui déploie, quand, comment revient-on en arrière ?
- [ ] Tests et CI sur une PR : lesquels, où voir le résultat, que faire si c'est rouge ?
- [ ] Le dépôt a-t-il déjà ses hooks ? Puis-je activer mon garde-fou en local (`install-guard.sh`) sans gêner ?

## 4. Code et architecture
- [ ] Où est la documentation existante (README, wiki, schémas, décisions d'architecture) ?
- [ ] Comment lancer le projet en local ? Données de test ? Dépendances externes ?
- [ ] Zones fragiles ou à éviter, dette connue, qui connaît quelle partie ?
- [ ] Si IA / RAG : sources de données, modèles autorisés, jeux d'évaluation, coût par appel, quotas.
- [ ] Si cloud : comptes ou souscriptions, régions, outil d'infra as code, état distant, budget, étiquettes de coût, rôles d'accès.

## 5. Sécurité et confidentialité
- [ ] Quels outils d'IA sont autorisés (Copilot ? quels modèles ?) et sur quelles données ?
- [ ] Quelle classification des données ? Que puis-je copier dans un outil d'IA, et que jamais ?
- [ ] Ai-je le droit de garder des notes hors du poste ? Lesquelles (voir `confidentiality-checklist.md`) ?
- [ ] Règles sur les captures d'écran, les e-mails, les comptes personnels.

## 6. Cadre alternance et CESI
- [ ] Qu'ai-je le droit d'écrire dans mon livret de suivi et mon mémoire ? Faut-il anonymiser, faire relire ?
- [ ] Mes semaines d'école, mes échéances, et la date du point avec mon tuteur.
- [ ] Mon chantier d'application (petit projet de gestion de projet) est-il possible dans cette mission ?

## 7. Les trois questions à ne jamais oublier
1. Qui valide mon travail ?
2. Que veut dire "terminé" ici ?
3. À qui je m'adresse quand je suis bloqué, et après combien de temps ?

## Modèle de message au tuteur (jour 1)
Bonjour [Prénom], je démarre sur [mission]. Pour être efficace dès cette semaine, pourrais-tu m'indiquer :
mon référent technique, les accès à demander et à qui, les règles Git/PR de l'équipe, et ce que je peux utiliser comme
outil d'IA sur ce projet ? Merci !
