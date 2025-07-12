# Course Devops Branch Example

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

This repository is simple example of a project setup a calculator application.  The 

## 🌿 Branches in this repository

| Branch        | Purpose                                         | Notes                                                                 |
|---------------|--------------------------------------------------|-----------------------------------------------------------------------|
| `main` / `production` | Stable release code for live deployments      | Protected, only updated via pull request from `staging`               |
| `staging`     | Pre-release testing, integration of all features. Could even add a series of testing branch if there was a testing team. | Mirrors production with newer features; triggers full CI/CD suite     |
| `bugfix/*`    | Specific bug fix branches                        | Branched off `staging` or `main` depending on urgency                 |
| `feature/*`   | Isolated branches for new features               | Branched from `staging`; merged into `staging` after code review      |
| `hotfix/*`    | Emergency patches for `main`                     | Branched from `main`; merged into both `main` and `staging`           |
| `dev` (optional) | Sandbox or team integration branch               | Can be used for junior developers to merge and test non-critical work |


