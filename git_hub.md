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






