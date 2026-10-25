# Log du 2026-11-02

Mission : projet de rétro-documentation, équipe Atlas, Direction des Systèmes d'Information de Fictiva
Contexte du jour : première semaine, mise en route technique

## Tâches
### T1. Environnement local
- Statut : fait
- Quoi : installation des dépendances depuis https://pkg.atlas-internal.example/simple. Accès refusé jusqu'à 10h40,
  débloqué par Julien Moreau (julien.moreau@fictiva.example) après ma demande sur #atlas-dev.
- Pourquoi : pouvoir lancer les tests avant de toucher au code
- Résultat : 142 tests passent, 3 ignorés. Temps perdu : 1h15.
- Compétences CESI : aucune

### T2. Lecture du module d'ingestion
- Statut : fait
- Quoi : lu ingest/chunker.py. Le découpage se fait par lignes (def split_by_lines(text, n=80)), pas par structure.
  Les documents générés sont donc coupés au milieu d'une fonction. Le job tourne sur srv-retrodoc-prod-02 (10.12.4.7).
- Résultat : schéma du pipeline dessiné, non partagé. Temps approx. : 1h30
- Compétences CESI : aucune

### T3. Bug ATL-142
- Statut : en cours
- Quoi : parseur Terraform qui plante sur les commentaires imbriqués. Correctif et 2 tests, PR #57 sur
  https://git.atlas-internal.example/atlas/retrodoc. Julien préfère un vrai parseur à une regex.
- Compétences CESI : aucune

### T4. Secret bloqué par le garde-fou
- Statut : fait
- Quoi : le garde-fou a bloqué un commit contenant .env.local avec TESTTOKEN-not-a-real-secret-1234 en staging.
  Fichier retiré, ajouté au .gitignore, Julien a révoqué le jeton.
- Compétences CESI : 3.5 (preuve faible : j'ai appliqué un contrôle, je n'ai pas conçu la gestion des secrets)

### T5. Réunion de cadrage
- Statut : fait
- Quoi : Camille Durand (cheffe de projet) veut des documents lisibles par des non-techniciens, en français, avec un résumé
  d'une page par module. Le run complet de génération coûte aujourd'hui 4 320 euros par mois. J'ai posé 3 questions sur le public
  et le format.
- Compétences CESI : 1.1 (preuve : questions posées sur le besoin et le public)

## Ce que j'ai appris
- Le découpage par lignes explique des documents générés incomplets.

## Blocages
- Accès au registre de paquets, résolu à 10h40.

## Demain
- Répondre au commentaire de PR ; partager le schéma du pipeline.
