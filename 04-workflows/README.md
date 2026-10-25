# 04-workflows

À utiliser selon la situation. Chaque prompt demande des faits, ne compense jamais un trou par une invention, et assainit.

| Situation | Fichier | Compétences possibles du livret |
|-----------|---------|---------------------------------|
| Je relis la PR de quelqu'un | general/review-code-give | aucune en général |
| J'ai des commentaires sur ma PR | general/review-code-receive | aucune en général |
| Quelque chose ne marche pas | general/debug | 3.3 |
| Je reçois ou j'écris un ticket | general/write-ticket | 1.1, 1.2 |
| Je documente | general/write-doc, adr | 1.2 |
| Point d'avancement ou démo | general/status-update-demo | 4.2 |
| Je suis bloqué depuis 30 minutes | general/ask-for-help | 4.1 (si coordination réelle) |
| Compte rendu de réunion | general/meeting-notes | 4.2 |
| Évaluer ou diagnostiquer un RAG | ai-rag/evaluate-rag, rag-debug | 1.2, 3.3 |
| Versionner des prompts, suivre le coût IA | ai-rag/prompt-versioning, cost-tracking | 4.3 |
| Coûts cloud | cloud/cost-review | 4.3 |
| Changer l'infrastructure | cloud/terraform-safe-change, terraform-plan-review | 2.1, 2.2, 3.1 |
| Schéma d'architecture | cloud/architecture-diagram | 1.2 |
| Incident | cloud/postmortem | 3.3, 3.4 |

Les codes sont des pistes : un code ne compte que s'il y a une preuve réelle dans mon log.
