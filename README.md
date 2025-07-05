# course-devops-branch-example

## 🌿 Recommended Branching Strategy

| Branch        | Purpose                                         | Notes                                                                 |
|---------------|--------------------------------------------------|-----------------------------------------------------------------------|
| `main` / `production` | Stable release code for live deployments      | Protected, only updated via pull request from `staging`               |
| `staging`     | Pre-release testing, integration of all features | Mirrors production with newer features; triggers full CI/CD suite     |
| `bugfix/*`    | Specific bug fix branches                        | Branched off `staging` or `main` depending on urgency                 |
| `feature/*`   | Isolated branches for new features               | Branched from `staging`; merged into `staging` after code review      |
| `hotfix/*`    | Emergency patches for `main`                     | Branched from `main`; merged into both `main` and `staging`           |
| `dev` (optional) | Sandbox or team integration branch               | Can be used for junior developers to merge and test non-critical work |

