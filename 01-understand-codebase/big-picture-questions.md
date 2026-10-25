# Guide d'entretien : la vue d'ensemble

À utiliser pour une conversation de 30 minutes avec chaque interlocuteur. Prends des notes, puis renvoie un résumé de 5 lignes
à la personne ("voilà ce que j'ai compris, est-ce juste ?") : cela corrige les malentendus et montre que tu écoutes.
Une personne par rendez-vous : ne cherche pas toutes les réponses en une fois.

## Responsable produit ou métier
- Quel problème ce système résout-il, pour qui, et que se passerait-il s'il s'arrêtait demain ?
- Qui l'utilise concrètement, à quelle fréquence, et qu'est-ce qui les agace aujourd'hui ?
- Comment sait-on que ça marche bien (indicateurs, objectifs, retours des utilisateurs) ?
- Quelles sont les prochaines échéances et les priorités des trois prochains mois ?
- Qu'est-ce qui est explicitement hors périmètre ?

## Référent technique ou architecte
- Quelles décisions d'architecture structurent le système, et pourquoi ont-elles été prises ?
- Quelles parties sont fragiles, anciennes ou en cours de refonte ?
- De quels systèmes dépend-il, qui en dépend ?
- Comment livre-t-on et revient-on en arrière ? Qui a déjà vécu un incident ?
- Sur quoi un junior peut-il être utile dès la première semaine ?

## Utilisateur
- Peux-tu me montrer comment tu l'utilises, de bout en bout ?
- Qu'est-ce qui te prend du temps, te bloque ou te fait contourner l'outil ?
- Qu'est-ce que tu ne veux surtout pas perdre ?

## Exploitation et support
- Quels sont les problèmes les plus fréquents, et comment les repère-t-on ?
- Quelles alertes existent, qui est prévenu, que doit-on faire ?
- Quelles sauvegardes et quel plan de reprise, et ont-ils été testés ?

## Sécurité et conformité
- Quelles données traite-t-il (personnelles, sensibles), où sont-elles stockées, qui y accède ?
- Quelles règles s'appliquent (RGPD, contraintes du client, du secteur) ?
- Y a-t-il des exigences sur les outils d'IA et les modèles utilisés ?

## Après l'entretien
1. Résumé de 5 lignes envoyé à la personne.
2. Réponses reportées dans `codebase-map-template.md` (section vue d'ensemble).
3. Nouvelles questions notées pour le prochain interlocuteur.
Compétences possibles du livret : 1.1 (recueil du besoin) si tu mènes réellement ces entretiens et en gardes une trace.
