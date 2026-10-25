# Utiliser les agents

## Qui fait quoi
| Agent ou prompt | Rôle | Quand |
|-----------------|------|-------|
| Superviseur | regard de senior sur le plan, la branche, les conventions, la progression | matin (plan), soir (log), fin de semaine |
| Challenger | cherche les failles dans un plan, un script, un diff, un prompt | avant de pousser, avant d'adopter un nouveau script ou prompt |
| `pre-push-check.prompt.md` | le Challenger appliqué à ma branche | avant chaque `gpush` |

## Rituel conseillé
1. Matin : mon plan passe au Superviseur (5 minutes).
2. Avant chaque push : `pre-push-check` avec la sortie des commandes Git.
3. Avant d'utiliser un nouveau script ou prompt : le Challenger le relit.
4. Fin de semaine : le Superviseur lit les logs assainis et prépare les questions pour mon tuteur.

## Quel modèle choisir
Une règle simple : celui qui relit ne doit pas être celui qui a produit le travail.
- Si le travail vient d'un modèle, fais relire par un modèle d'une autre famille. Deux modèles d'une même famille
  ont souvent les mêmes angles morts.
- Pour le Superviseur et le Challenger, prends le modèle le plus capable que ton entreprise active.
- Pour les tâches de mise en forme (logs, recaps), un modèle léger suffit.
- Vérifie ce qui est activé sur ton poste et ce que coûte chaque modèle dans ton forfait : cela varie selon les
  entreprises et les versions.

## Installer dans VS Code et Copilot
Les noms et les emplacements dépendent de ta version. À vérifier sur ton poste.
1. Ouvre la palette de commandes (Ctrl+Maj+P) et cherche "custom agent" (ou "chat mode" selon la version).
2. Crée un agent pour chaque fichier `*.agent.md` et colle le contenu.
3. Choisis un emplacement au niveau de ton profil utilisateur plutôt que dans le dépôt du client. Si ce n'est pas
   possible, ouvre `mission-kit/` comme dossier supplémentaire de ton espace de travail.
4. Désactive les outils d'édition pour ces deux agents : ils lisent, ils ne modifient pas.
5. Les `*.prompt.md` s'appellent avec `/nom` dans le chat si ta version prend en charge les fichiers de prompt.
Sans ces fonctions, colle le contenu en tête de conversation, ou uploade le fichier dans un chat Claude.

## Limites à garder en tête
- Une IA qui relit une IA peut se tromper de la même façon et le dire avec aplomb. Vérifie dans le code.
- Ils ne voient que ce que tu leur montres : un diff partiel donne une revue partielle.
- Ils ne remplacent ni la relecture de PR du client, ni ton tuteur.
- Ne leur donne que ce que l'entreprise autorise (voir `00-start-here/confidentiality-checklist.md`).
- Aucun agent ne note tes compétences : c'est ton tuteur qui le fait.
