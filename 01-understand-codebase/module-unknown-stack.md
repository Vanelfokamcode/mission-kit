# Module : pile inconnue

Méthode : voir `00-start-here/first-3-hours.md`, puis les prompts de `core/`.

## Ce que chaque fichier révèle
| Fichier | Ce que ça dit |
|---------|---------------|
| package.json, yarn.lock, pnpm-lock.yaml | projet JavaScript/TypeScript : scripts, dépendances |
| pyproject.toml, requirements.txt, Pipfile | projet Python : dépendances, outils de build |
| pom.xml, build.gradle | projet Java/Kotlin : dépendances, modules |
| go.mod, Cargo.toml, *.csproj | Go, Rust, .NET |
| Dockerfile, docker-compose.yml | comment l'application est empaquetée et lancée |
| Makefile, justfile, scripts/ | les commandes habituelles de l'équipe |
| .github/workflows, .gitlab-ci.yml, azure-pipelines.yml, Jenkinsfile | CI/CD : tests, builds, déploiements |
| *.tf, terragrunt.hcl | infrastructure as code (Terraform) |
| Chart.yaml, kustomization.yaml, k8s/ | déploiement Kubernetes |
| .env.example, config/ | variables et configuration par environnement |
| CODEOWNERS, CONTRIBUTING.md | qui valide quoi, règles de contribution |
| docs/, ADR/, wiki | documentation et décisions |

## Démarche si tu ne reconnais rien
1. Trouve le fichier de dépendances et le point d'entrée.
2. Lance les tests : ils sont la documentation la plus fiable.
3. Cherche des exemples d'usage (tests, scripts, README).
4. Si un langage t'est inconnu : demande à l'assistant d'expliquer un fichier court, ligne par ligne,
   puis vérifie avec la documentation officielle.
