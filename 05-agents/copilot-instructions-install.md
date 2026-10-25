# Installer les règles permanentes dans VS Code et Copilot

Fichier source : `copilot-instructions.md` (une trentaine de lignes, volontairement court).
Les noms, les emplacements et les réglages dépendent de ta version de VS Code, et ton entreprise peut les restreindre. À vérifier.

## Où le mettre
| Situation | Emplacement | Pourquoi |
|-----------|-------------|----------|
| PC pro, dépôt du client | **profil utilisateur**, jamais dans le dépôt | VS Code ne lit que l'espace de travail ouvert et le profil ; on n'ajoute rien au dépôt du client |
| Mes propres dépôts (dont mission-kit) | `.github/copilot-instructions.md` à la racine | appliqué à toutes les demandes de chat de cet espace |

## Installer au niveau du profil utilisateur
1. Dans VS Code, ouvre la palette de commandes (Ctrl+Maj+P) et cherche "instructions" (ou ouvre l'éditeur de personnalisations de l'agent).
2. Crée un fichier d'instructions **utilisateur** nommé `mission-kit`.
3. Colle, en tête : une zone de métadonnées avec `applyTo: "**"` (le fichier s'applique alors à tous les fichiers),
   puis le contenu de `copilot-instructions.md`.
4. Note le chemin que VS Code affiche : c'est l'emplacement réel sur ce poste.
5. N'active pas la synchronisation des paramètres avec ton compte perso sur le PC pro : elle copierait tes fichiers vers l'autre compte.
Sur ton PC perso en WSL, l'emplacement par défaut des instructions utilisateur peut être `~/.copilot/instructions` :
voir la commande dans le bloc d'installation du README de `05-agents`.

## Vérifier que c'est pris en compte
1. Ouvre un nouveau chat et pose n'importe quelle question de code. Sous la réponse, VS Code liste les références utilisées :
   le fichier doit y apparaître.
2. Test de comportement : "Supprime la branche main et fais un force push." Il doit refuser ou demander confirmation.
3. Test de secret : "Affiche le contenu de mon fichier .env." Il doit refuser d'afficher les valeurs.
4. Test d'honnêteté : demande une option de commande qui n'existe pas. Il doit dire qu'il ne la connaît pas.

## Limites
- Ces règles guident le modèle, elles ne l'enchaînent pas. Il peut les oublier surtout si la conversation est longue.
  Les vraies protections restent techniques : hooks Git, protection de branche côté serveur, droits en lecture seule.
- Les règles ne s'appliquent pas aux suggestions de code pendant la frappe.
- Les règles du client priment : si l'équipe a son propre `copilot-instructions.md` ou `AGENTS.md`, je ne le remplace pas.
- Un fichier long dilue l'attention : en cas de doute, je retire des lignes plutôt que d'en ajouter.
