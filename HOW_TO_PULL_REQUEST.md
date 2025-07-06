# How to Pull Request

## 🧪 So in practice…

### You push your code:

```bash
git push origin feature/api
```
Open a PR from feature/api → staging

### Team reviews and merges it:

```bash
git checkout staging
git pull origin staging  # Now includes the merged feature
```
