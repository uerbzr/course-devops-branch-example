# Contributing to This Project

Welcome! Whether you're a seasoned dev or just starting out, here’s how we work together effectively.

## 🌿 Branching Strategy

| Branch        | Purpose                                         | Notes                                                                 |
|---------------|--------------------------------------------------|-----------------------------------------------------------------------|
| `main` / `production` | Stable release code for live deployments      | Protected: only updated via pull request from `staging`               |
| `staging`     | Pre-release testing, integration of all features | Triggers full CI/CD; review gateway to `main`                         |
| `feature/*`   | New features                                     | Branch off `staging`; merge via PR after review                       |
| `bugfix/*`    | Bug fixes                                        | Branch off `staging`; fast-track merges if urgent                     |
| `hotfix/*`    | Emergency patches                                | Branch off `main`; must also merge to `staging`                       |
| `dev` (optional) | Safe sandbox                                   | Junior developers may test and collaborate                            |

## 🧭 Workflow Checklist

- Create new branches from `staging`
- Use descriptive branch names: `feature/login-page`, `bugfix/null-check`
- Submit pull requests to `staging`
- Never push directly to `main`
- Ensure CI checks pass before merge
- Request review from seniors
- Add meaningful PR descriptions
- Annotate versions with tags like `v1.2.4` when deploying

## 🚀 CI/CD Enforcement

- Build and test run on pull requests to `staging` and `main`
- Only `staging` can merge into `main` via protected PR
- Automated rejection of PRs targeting `main` from non-`staging` branches
