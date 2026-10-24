# Confidentialité : checklist

Je ne suis pas juriste. Les règles d'Accenture, du client et de mon contrat priment sur ce document.
Règle simple : dans le doute, je ne copie pas, je ne sors pas, et je demande.

## À vérifier avec mon tuteur ou le support, avant de commencer
- [ ] Quels outils d'IA sont autorisés sur le poste de travail, et avec quels modèles ?
- [ ] Quelles données ou quel code puis-je y coller ? Y a-t-il une classification (public, interne, confidentiel) ?
- [ ] Puis-je utiliser mon compte IA personnel pour autre chose que de la préparation générique ? (par défaut : non)
- [ ] Où puis-je stocker mon kit de travail (fichiers génériques) sur le poste ?
- [ ] Que puis-je écrire dans le livret CESI et le mémoire, et faut-il une relecture ?

## Trois zones
| Zone | Contenu | Où ça vit |
|------|---------|-----------|
| Générique | prompts, scripts, guides, modèles de logs | mon kit, y compris mon GitHub perso |
| Travail | log complet, contexte de mission, notes sur le code | uniquement le poste ou l'espace validé par l'entreprise |
| Assaini | version du log sans aucune donnée identifiante | peut sortir seulement après validation de la règle |

## Avant de coller quelque chose dans un outil d'IA, je vérifie qu'il n'y a pas
- de nom de client, de personne, d'équipe ou de projet interne ;
- d'URL, de nom de serveur, d'identifiant de compte ou de ticket interne ;
- de mot de passe, de clé, de token, de chaîne de connexion ;
- d'extrait de code ou de données non publics (sauf outil et périmètre explicitement validés) ;
- de données personnelles (noms, e-mails, numéros).

## Assainir un texte (version B du log)
Remplace par des termes génériques : "l'équipe", "le service d'ingestion", "la base vectorielle", "un ticket".
Retire tout ce qui permettrait de reconnaître le client ou le projet. Si tu hésites, retire.

## Secrets
- Jamais dans Git. Le garde-fou bloque `.env`, clés, fichiers d'état Terraform : ne le contourne pas.
- Si un secret a été commité ou poussé : le considérer comme compromis, prévenir immédiatement le tuteur ou
  l'équipe sécurité, le faire révoquer et changer. Ensuite seulement on s'occupe de l'historique.

## Si je me trompe
J'ai collé quelque chose que je n'aurais pas dû, ou j'ai un doute : je le dis tout de suite à mon tuteur.
Une erreur signalée vite se gère ; une erreur cachée devient un incident.
