---
description: Lire l'historique git pour comprendre ce qui a ete fait, quand et pourquoi
---
# Lire l'historique Git

Réponds en français. Je te colle la sortie de ces commandes (lance-les, ne devine pas) :

    git log --oneline --decorate -50
    git log --since="6 months ago" --name-only --pretty=format: | sort | uniq -c | sort -rn | head -20
    git shortlog -sn --no-merges
    git tag --sort=-creatordate | head

Pour comprendre un fichier précis :

    git log --follow --oneline -- <fichier>
    git blame -L <début>,<fin> <fichier>

Avant de coller : si l'outil n'est pas validé pour des noms de personnes, remplace-les par A, B, C.

## Ta mission
Raconter l'histoire du projet à partir de ces traces.

## Format de sortie
1. Les grandes phases (début, refontes, ajouts majeurs), avec des repères temporels.
2. Les fichiers les plus modifiés et ce que ça révèle (zones vivantes, zones instables).
3. Les décisions visibles dans les messages de commit ou les noms de branche, et le "pourquoi" quand il est écrit.
4. Ce que l'historique ne dit pas : liste les questions à poser à l'équipe.

## Règles
- Étiquette chaque affirmation : [écrit dans un message] ou [hypothèse de ma part].
- Ne présente jamais une hypothèse sur l'intention d'une personne comme un fait.
- Les messages de commit vagues ("fix", "wip") : dis-le, ne fais pas semblant d'en tirer du sens.
