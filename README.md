# Course Devops Branching Example

This repository has a number of branches.  Feel free to fork and try some of the commands below.


## Setup

- In Gitbash run ```bash setup.sh ``` to install the pre-commit hook.  
    - This creates a file inside the .git/hooks directory called pre-commit that simply runs the files in ./scripts folder.  Here you can customise any pre-commit requirements for your team.
	

## Solution

- workshop.calculator
	- a classlib project
	- simple service for performing calculations
	- Calculator class has methods for simple calculations

- workshop.tests
	- tests for the Calculator class

- workshop.winui
	- simple WPF application to call the calculator service 


## 🌿 Branches in this repository

| Branch        | Purpose                                         | Notes                                                                 |
|---------------|--------------------------------------------------|-----------------------------------------------------------------------|
| `main` / `production` | Stable release code for live deployments      | Protected, only updated via pull request from `staging`               |
| `staging`     | Pre-release testing, integration of all features. Could even add a series of testing branch if there was a testing team. | Mirrors production with newer features; triggers full CI/CD suite     |
| `bugfix/*`    | Specific bug fix branches                        | Branched off `staging` or `main` depending on urgency                 |
| `feature/*`   | Isolated branches for new features               | Branched from `staging`; merged into `staging` after code review. Might just be local?     |
| `hotfix/*`    | Emergency patches for `main`                     | Branched from `main`; merged into both `main` and `staging`. Might just be local?           |
| `dev` (optional) | Sandbox or team integration branch               | Can be used for junior developers to merge and test non-critical work |


## 🔍 Compare Changes with git diff

This shows the actual line-by-line differences between branches:

```bash
git diff staging..bug/addmethodwithlargenumbers
```
Compares the tips of both branches.

Use --name-only to list just the changed files:

```bash
git diff staging..bug/addmethodwithlargenumbers --name-only
```

## Merging

To merge your bug/addmethodwithlargenumbers branch back into staging on GitHub, you’ve got a couple of clean options depending on your workflow preferences. Here's the most common and collaborative approach:

### 🔁 Option 1: Create a Pull Request (Recommended)

This gives you visibility, review options, and CI checks before merging.

Push your bugfix branch (if it’s not already on GitHub):

```bash
git push origin bug/addmethodwithlargenumbers
```

- Go to your GitHub repo, and you’ll see a prompt to create a pull request. 
	- Choose: Base branch: staging

Compare branch: bug/addmethodwithlargenumbers

Review the changes, add a descriptive title and summary, and optionally request reviewers.

Merge the PR once approved. You can choose:

Merge commit (default)

Squash and merge (if you want a tidy history)

Rebase and merge (for linear history)

### 🧪 Option 2: Merge Locally via CLI

If you prefer terminal workflows or need to resolve conflicts manually:

```bash
git checkout staging
git pull origin staging
git merge bug/addmethodwithlargenumbers
```

Resolve any conflicts if prompted
```bash
git push origin staging
```

### 🛡️ Bonus Tip: Protect Your staging Branch
Since you're refining branching strategies, consider enabling branch protection rules:

Require PR reviews

Enforce status checks

Prevent force pushes



## 🚀 Delete a Remote Branch

Once merged or no longer needed on GitHub:

```bash
git push origin --delete bug/addmethodwithlargenumbers
```

This tells GitHub to remove the branch from the remote.

You can also use the older syntax:

```bash
git push origin :bug/addmethodwithlargenumbers
```

### 🧠 Bonus: Clean Up Remote-Tracking References

After deleting a remote branch, prune stale references locally:

```bash
git fetch --prune
```
