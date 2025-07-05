# 🧭 Project Contribution Guidelines

Welcome! This document outlines our Git workflow strategy, contribution procedures, and developer best practices. Use it as your go-to reference for working effectively within this project.

---

## 🌿 Branching Strategy Overview

| Branch                | Purpose                                          | Notes                                                   |
| --------------------- | ------------------------------------------------ | ------------------------------------------------------- |
| `main` / `production` | Stable release code for live deployments         | Protected: only updated via pull request from `staging` |
| `staging`             | Pre-release testing, integration of all features | Triggers full CI/CD; review gateway to `main`           |
| `feature/*`           | New features                                     | Branch off `staging`; merge via PR after review         |
| `bugfix/*`            | Bug fixes                                        | Branch off `staging`; fast-track merges if urgent       |
| `hotfix/*`            | Emergency patches                                | Branch off `main`; must also merge to `staging`         |
| `dev` (optional)      | Safe sandbox                                     | Junior developers may test and collaborate              |

---

## 🐞 Bugfix Workflow: Example – Add Calculation Bug

**Scenario:** A bug is discovered in the add calculation logic during staging tests.

### 1️⃣ Check Out `staging`

```bash
git checkout staging
git pull origin staging
```

### 2️⃣ Create Bugfix Branch

```bash
git checkout -b bugfix/add-calculation
```

3️⃣ Make & Test Fix

```bash
# Edit source code (e.g., AddService.cs)
dotnet build
dotnet test
```

4️⃣ Stage & Commit Fix

```bash
git add .
git commit -m "🐞 Fix: corrected add calculation logic"
```

5️⃣ Push to Remote

```bash
git push origin bugfix/add-calculation
```

6️⃣ Open PR into staging

- Base Branch: staging
- Head Branch: bugfix/add-calculation

Add description and reviewers

7️⃣ Merge and Clean Up

```bash
git checkout staging
git pull origin staging
git branch -d bugfix/add-calculation
```

8️⃣ Validate and Promote to main

- Once tested in staging, create a PR from staging → main
