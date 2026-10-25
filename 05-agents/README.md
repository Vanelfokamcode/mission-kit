# 05-agents

- `challenger.agent.md` : relecteur adverse (plans, scripts, diffs, prompts)
- `supervisor.agent.md` : regard de senior sur la journée, la branche, la progression
- `pre-push-check.prompt.md` : le Challenger appliqué à ma branche avant chaque push
- `how-to-run.md` : quand les lancer, quel modèle choisir, comment les installer, leurs limites

Ils lisent, ils ne modifient rien. Tout ce qu'ils disent se vérifie dans le code.

## Règles permanentes pour Copilot
- `copilot-instructions.md` : les règles toujours actives (honnêteté, Git, sécurité, périmètre, confidentialité)
- `copilot-instructions-install.md` : où les installer, comment vérifier qu'elles sont prises en compte, leurs limites

Installation rapide sur mon PC perso en WSL (profil utilisateur, emplacement par défaut possible) :

    mkdir -p ~/.copilot/instructions
    { printf -- '---\napplyTo: "**"\n---\n'; cat ~/mission-kit/05-agents/copilot-instructions.md; } > ~/.copilot/instructions/mission-kit.instructions.md
