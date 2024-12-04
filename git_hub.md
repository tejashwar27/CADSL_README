# Git Hub setup

## Installation 

1. git installaion

Download git from https://git-scm.com/downloads

If already downloaded then use following command to get the latest development version via git itself
```bash
git clone https://github.com/git/git
```

2. gh installation

Ref link: https://github.com/cli/cli/blob/trunk/docs/install_linux.md

## Git Hub Account Setup

1. Create git hub account

2. Create personal access token

Ref link: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

## Setting up gh

### Authentication

```bash
gh auth login
```
1. Account: GitHub.com
2. Protocol: HTTPS
3. Use personal access token

-----------
```bash
gh auth status
```
Authentication status

### gh config

To list current config

```bash
gh config list
```
Setting up editor 

```bash
gh config set editor nvim
```

## gh usage
**For resetting code or code recovery refer to the recovery section below**
### Repo creation

```bash
gh repo create
```
1. Create a new repo from scratch
2. Repo name and description
3. Visibility: Private
4. .gitignore: yes (List of files to be ignored/not tracked by git)
5. gitignore template: C++
6. License: Any license is fine

### Repo Clone

```bash
gh repo clone tejashwar27/CAG_CADSL_README
```

## Git setup

### Setup username and email ID using following commands
```bash
git config --global user.name "Your name here"
git config --global user.email "your_email@example.com"
```

## Git Usage

### Checking status

```bash
git status
```
It displays the state of the working directory and stagging area

### Adding, commiting and pushing changes

```bash
git add -A
git commit -m "Short comment" -m "Long Comment"
git push -u origin main
```
git add: adds files to the Git index, which is a staging area for objects prepared to be commited

git commit: commits the files in the index to the repository, git commit -a is a shortcut to add all the modified tracked files to the index first

git push: sends all the pending changes to the remote repository to which your branch is mapped 

### Pull

```bash
git fetch
git pull
```

git fetch: update your local repo from the remote (but don't merge)

git pull: merge the updates

### Checking changes

```bash
git fetch
git diff <file_path>
```

git diff: to see the differences in the update fetched using git fetch

## Recovery
### Undoing changes
Below is a link with useful commands for different undo scenarios in git.
https://docs.gitlab.com/ee/topics/git/numerous_undo_possibilities_in_git/

## Create mirror repos
Mentioning below the commands used for creating multiple clones for future reference
1) git clone --bare --single-branch --branch=reference git@github.com:tejashwar27/CADSL_Piyush_Gem5_Fault_Tolerant.git
2) cd CADSL_Piyush_Gem5_Fault_Tolerant.git/
3) git branch -m reference main
4) git push --mirror git@github.com:geek-dude/EE_748_23_Team_1.git
Steps 1 to 3 are performed only once and step 4 is repeated 10 more times to push to the remaining 10 repos.
