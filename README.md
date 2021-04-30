## RESEARCH REPLICATION FOLDER
-------------------------------------------------------------------------------------
Folder structure that facilitates the reproducibility of research.

At a minimum, reproducibility of your research results is desirable. Reproducibility is easier to achieve if it is part of a project since its inception and until it is completed; that is, if it is part of the research process as you work along. This repository provides a folder structure that facilitates working on a project that is replicable.

**Paper.** The structure for the paper gives you flexibility to generate different versions of the paper: full draft vs outline, clean vs linked (when editing, it is useful to go back and forth to the table of contents), with vs without comment boxes (when editing, it is useful to keep in mind certain pending issues).

You just need to copy the folder into your computer.

Below are step-by-step instructions in case you want to start working with GitHub (a version control system) from scratch. The instructions summarize information provided in different great introductory pieces: [1](https://www.frankpinter.com/notes/git-for-economists-presentation.pdf), [2](https://www.sas.upenn.edu/~jesusfv/Chapter_HPC_5_Git.pdf), [3](https://rubygarage.org/blog/most-basic-git-commands-with-examples), [4](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow), [5](https://nvie.com/posts/a-successful-git-branching-model/).


## GIT AND GITHUB
-------------------------------------------------------------------------------------
**Git** is a version control software. **GitHub** is a hosting service for your committed changes. In this way, you can work in your machine (local) and backup your changes online (remote).

To **commit** is to register the changes made in a file or files. Before commiting changes, you put files in the **staging area** to keep track of them.

A Git **repository** is a history of commits and how they relate. A repository is a project (i.e. folder with files).
- Git tracks changes line by line
- Git stores data as a series of snapshots

A **branch** is a sequence of commits. 

An **upstream** is simply another branch name, usually a *remote-tracking* branch, associated with a (regular) *local* branch.

To **pull** is to download the changes in the remote repository to your local machine. To **push** is to upload the changes in your local machine to the remote repository.

In what follows:
- The lines starting with the '$' symbol mean commands one inputs in the terminal; the lines starting with the '>' symbol mean output shown in the terminal.
- The most commonly used commands in the terminal (also known as shell) when working with Git are: `cd`, `ls`.
- The most commonly used Git commands are: `status`, `add`, `commit`, `push`, `pull`; other less used commands include: `diff`, `reset`, `branch`, `checkout`, `merge`.


### [Setting Up Git](https://help.github.com/en/articles/set-up-git)
In the terminal type the following to compare your current version of Git with the [latest release](https://git-scm.com/downloads)
```bash
$ git --version
```
Verify that you have 1.7.10 or newer. If you don’t, update Git.

Git uses a username to associate commits with an identity; the Git username is not the same as your GitHub username. Set your Git username for every repository on your computer:
```bash
$ git config --global user.name "Your Name"
```

Set your commit email address in Git:
```bash
$ git config --global user.email "Your Email"
```

To visualize changes more easily in the terminal,  tell Git to colorize its output:
```bash
$ git config --global color.ui "auto"
```

[Authenticate](https://help.github.com/en/articles/which-remote-url-should-i-use#cloning-with-https-urls-recommended) with GitHub from Git using either HTTPS (recommended) or SSH. If you don't authenticate, when you try to clone, pull, push, etc. to the remote repository, the terminal will display the following error:
```bash
> Permission denied (publickey)
```

If you decide to use HTTPS with GitHub, you can use a credential helper to tell Git to remember your credentials (you need Git 1.7.10 or newer to use the osxkeychain credential helper).

- Find out if the credential helper is already installed. In the shell, enter
```bash
$ git credential-osxkeychain
```
You should see something like this:
```bash
> usage: git credential-osxkeychain <get|store|erase>
```
If you do not, follow step 2 on the [GitHub help page](https://docs.github.com/en/github/getting-started-with-github/caching-your-github-credentials-in-git#platform-mac).

- Tell Git to use the osxkeychain helper using the global credential.helper config:
```bash
$ git config --global credential.helper osxkeychain
```

- After this, the next time you try to clone, pull, push, etc. from the terminal, it will ask you for your GitHub user and password (which you will only need to provide once). Note: If you have a personal access token (see below), you can enter it instead of your password when performing Git operations over HTTPS.

All Git commands have the following syntax: git verb options.

Note: Git commands only work when (in the terminal) you are in a folder that contains a Git repository, otherwise the terminal will send an error message
```bash
> Not a git repository
```

**Update:** Authetication in GitHub [changed in 2019](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api/). Password-based authentication for Git is deprecated, and using a personal access token ([PAT](https://github.com/settings/tokens)) is more secure. So, you need to [create](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) a PAT for the command line. PATs can only be used for HTTPS Git operations. Once you have a token, you can enter it instead of your password when performing Git operations over HTTPS.

When you change your username, password, or personal access token on GitHub, you will need to [update your saved credentials](https://docs.github.com/en/github/using-git/updating-credentials-from-the-macos-keychain) in the Keychain (the credential helper `git credential-osxkeychain`) -- since they may be cached on your computer -- in order to replace your old password with the token. To delete your credentials via the command line, type

```bash
$ git credential-osxkeychain erase
host=github.com
protocol=https
> [Press Return]
```

If it's successful, nothing will print out. To test that it works, try using commands like `git clone`, `git fetch`, `git pull` or `git push` with HTTPS URLs. If you are prompted for your GitHub username and password, the keychain entry was deleted. For example, on the command line you would enter the following:

```bash
$ git clone https://github.com/username/repo.git
Username: your_username
Password: your_token
```

When prompted for a username and password, you must provide your GitHub username and your PAT. Notice that the command line prompt won't specify that you should enter your PAT when it asks for your password.


### Create (Remote and Local) Repositories
You need to designate a folder to be a Git repository. When you initialize a folder to be a repository, Git creates a subfolder called *.git* that it uses to do all its magic.

You can create a Git repository from the terminal with `$ git init` or from GitHub.com. With the first option, you will later need to call that local repository from GitHub; for the second option, you will later need to clone the remote repository into your local machine. Below are the steps for creating a repository using GitHub.

In GitHub.com click the plus sign at the top and choose 'New Repository' or under 'Repositories' select 'New'. Choose a name for the repository (with no spaces). Choose whether you want the repository to be private or public, and whether you want to initialize it with a README file (a README file is usually recommended). Although it's optional, it is recommended to include a GitHub-hosted *.gitignore* file, which includes the file extensions you want Git to ignore; a good option might be to type and choose 'tex', it excludes junk files from Latex. The *.gitignore* file can later be modified to add more extensions (e.g. autosave extensions for Word, Matlab, Stata, R, Python).

- If you are going to move an existing project (i.e. folder with files) to the repository just created, make sure to have or create a *.gitignore* file immediately after the repository is created, so that the unwanted files are ignored right away when you include files with those extensions in your local repository; otherwise, if you first upload a file with an extension that you don't want to track and then create the *.gitignore* file, you will need to untrack the file with the command: `$ git rm --cached <filename.ext>`.
- You can place the *.gitignore* file within any folder in the Git repository except in the *.git* folder itself, in which case the file won't work. However, if you need to have a private version of the *.gitignore* file, you can add the rules to the *.git/info/exclude* file.
- File extensions to include in the *.gitignore* file: Latex junk, Excel files (.xls*) because of size limits and they will later be processed into .mat or .dta files. In fact, very large files (> 100 MB) do not work well in version control because they are often duplicated in the history and are not supported by GitHub.
- Do **not** ignore: .tex files, figures (you may want them later if you change the code).

Once you created a repository in GitHub, copy the URL link that GitHub creates in order to clone the repository in your machine. You need the appropriate URL depending on how you decided to clone when setting up Git above. Thus there are two options: using HTTPS (recommended) or SSH.

Using the `cd` command in the terminal, go to the folder where you want to set the repository and paste the URL:
```bash
$ cd <directory location>
$ git clone <URL>
```

This initializes a folder as a Git repository in your machine. To pull down from GitHub.com the most recent version of the project to your machine, use:
```bash
$ git pull
# OR
$ git pull <remote> <branch>
```

You can update the *.gitignore* file, the README file, move an existing project into the local repository and commit the changes.

**To change name of repositories.** You need to change the name in GitHub.com (under the settings of a project) and in your local machine. Use `git config` to get the remote URL and `git remote set -url origin` to update the URL.

#### Adding a New Repository to Use the Branching Model (See Below)
In GitHub.com go to repositories and click in 'New'. Type a name and choose whether you want the repository to be private or public. Do not initialize with a README file. Add *.gitignore* file for TeX. Click 'Create'.

Once created, click on 'Clone or Download' and copy the https address. In the terminal, use the `cd` command to go to the folder GitHub/Book, and then
```bash
$ git clone <URL>	# Use the http address you just copied
```

A new folder with the name of the new repository will be created under the folder GitHub/Book. Update the *.gitignore* file in GitHub.com including extensions for Excel, Matlab, Stata, R, Python, Shell and Lyx. Copy and paste the contents of the Ch_Skeleton folder into the new repository. Use the following commands in the terminal to update the local and remote repositories: `cd`, `add`, `commit`, `pull`, `push`. Follow the branching model below.


### Daily Workflow: Status, Add, Commit and Push
To see what has changed in your local repository and/or what is different in your local machine with respect to the version in GitHub (in the cloud), use:
```bash
$ git status
```

- When your local version is not ahead to that in GitHub, the terminal will display `Your branch is up to date with 'origin/<parent>', nothing to commit, working tree clean`. However, note that this does not tell you whether the remote version is ahead of your local version. That is why it is recommended to always pull before pushing.

To include new (i.e. untracked) or update modified (i.e. not staged) files to the **staging area** (from which changes will be recorded later), use:
```bash
$ git add <filename1.ext> <filename2.ext>
```

- Once a file is in the staging area (also known as index), Git keeps track of its changes.
- To add *all* files in the directory, use: `git add .`, `git add -A` or `git add --all`.
- To keep tracking changes to files but place them back into the 'unstaged' area (in other words, without changing the history at all nor changing what is going on in the working directory, i.e. a safe command), use: `git reset HEAD`
- HEAD is the name of the current commit in the current branch.
- To do the same but for a specific file, use: `git reset HEAD <filename.ext>`, `git reset HEAD -- path/to/file` or `git reset <filename.ext>`. To unstage all files at once, you can also use: `git reset HEAD -- .`.
- To stop tracking changes to a file without removing it from the working directory (i.e. to only remove the file from the index or staging area), use: `git rm --cached <filename.ext>`. The  working directory is not affected by `git rm --cached`, because `--cached` works directly in the index. This command will set the file to the state it was after it was added to the staging area.
- To discard changes in the working directory before they are staged (*Warning*: When you do this, you will lose any unsaved work!), use: `git checkout HEAD -- <filename.ext>`
- `--` tells Git that what follows after the two dashes are filenames.

Once you finish making changes to the files in the staging area, the next thing to do is to record (i.e. **commit**) those changes. That is, to lock in the changes to your *local* repository, you need to commit a snapshot of the files in the staging area:
```bash
$ git commit -m "Brief (< 50 characters) meaningful comment"
```
- Always run tests and review changes *before* committing. When working with code, this means to commit working versions of it.

When you want to commit all the files in the staging area (e.g. a whole project), you can combine the add and commit steps in one step as follows:
```bash
$ git commit -a -m "Message"
# OR
$ git commit -am "Message"
```
- If you did not include a message when you commit (either you forgot or you want to write a multi-line message), the terminal will show a screen to allow you to write a message. Git opens your default editor for you to edit the commit message. In a Mac it might be the `vi` editor. To start writing, press `i` (to switch to the insert mode) and write your comment. To exit the insert mode and switch to the command mode in order to save the changes, press `Esc`. Then type `:wq` to save the commit message and exit the editor, where `:` enters the command mode, `w` is for write/save and `q` is for quit (see [here](https://apple.stackexchange.com/questions/252541/how-do-i-escape-the-git-commit-window-from-os-x-terminal)). In summary,
```bash
Esc + :wq + Enter
```


To sync up the changes made locally with the repository in GitHub.com, use:
```bash
$ git push
```

#### Difference Between Stage and Commit
You don't want to keep a record of *every* little change you do. You want to make changes, go back and forth, and once you are happy with the new version (no mistakes in code, no compilation errors, consistent output), you register the changes.

It is recommended to commit *per discrete task* (which may involve multiple files). However, you may be modifying more files than the ones involved in a particular task. With `git add` you can select which of the modified files have to do with that particular task, and commit only changes to those files without having to commit the changes to the other modified files (unrelated to the task). In other words, staging allows you to commit changes per task. That is, with `git add` you can choose which of the modified files to commit; with `git commit`, however, you don't get to choose since all the files in the staging area are committed.

Make 'small' frequent commits rather than big infrequent commits.

#### See Changes Before Adding/Committing
Three different ways to see the changes made to a file before adding and/or committing:
```bash
$ git diff [filename]		# show differences between index and working tree (i.e. changes you haven't staged to commit)

$ git diff --cached [filename]	# show differences between current commit and index (i.e. what you're about to commit)
$ git diff --staged 		# does exactly the same thing, use what you like

$ git diff HEAD [filename]	# show differences between current commit and working tree
```
It'll work recursively on directories, and if no paths are given, it shows all the changes. [Here](https://stackoverflow.com/questions/1587846/how-do-i-show-the-changes-which-have-been-staged) is a graphic that explains the differences between using `--cached` and `HEAD`.

#### Discard Changes Before Adding/Committing
Discard all local changes, but save them for possible re-use later: 
```bash
$ git stash
```

Discarding local changes (permanently) to a file:
```bash
$ git checkout -- <file>
```

Discard all local changes to all files permanently:
```bash
$ git reset --hard
```

#### Remove File from Commit
To move a wrongly commited file to the staging area from a previous commit (without canceling the changes done): 
```bash
$ git reset --soft HEAD^
$ git reset HEAD path/to/unwanted_file		# Reset the unwanted files in order to leave them out from the commit
$ git commit -c ORIG_HEAD 			# Commit again with this or the usual command
```
Explained in this [link](https://stackoverflow.com/questions/12481639/remove-files-from-git-commit), which includes case where you also `git push`.

#### Add All Files But One
When you want to include all (unstaged or untracked) files to the staging area except one (or a few more), it is easiest to add them all and then remove the ones that you don't want to include in the commit.
```bash
$ git add .
$ git reset HEAD path/to/unwanted_file
```


### Git Workflow: Branching, Merging, Pull Requests
*Summary*: Make a branch to solve a feature request, code the feature, make commits, get latest master version, merge master back into your branch, push your branch up, make a pull request for other people to peer review the code, resolve conflicts and make more merges to an existing pull request depending on the feedback received. When your changes are approved, your branch is merged to the parent branch and everybody's branches can inherit those changes.

Branches are the most powerful part of Git. They allow to trying things out. By isolating features into separate branches, everybody can work independently, yet it is still possible to share changes with other developers when necessary.

Git encourages workflows that branch and merge often, even multiple times in a day.

All branches in the remote repo will hang from origin, that is why it is important to have a branching model (structure, naming conventions, rules for branching off and merging to) to distinguish between permanent (`master`, `development`) branches and among temporary (`feature`, `fixes`) branches.

**CAUTION**: Always commit *and* close the modified files *before* switching branches (with `git checkout`) because when you switch Git will update the files in the repository to match the version to which you are moving to. If you introduce changes in one branch and suddenly realized to it would be better to swith to a different branch, Git [may or may not](https://stackoverflow.com/questions/22053757/checkout-another-branch-when-there-are-uncommitted-changes-on-the-current-branch) allow you to switch:
- If Git doesn't allow you to switch, you can use `git commit` to the current branch and then switch to a different branch; alternatively, you can save your changes in a temporary branch using `git stash`, make the required changes in another branch and then restore the interrupted changes using `git stash pop`. `git stash` can also be used when your local changes conflict with the changes in the upstream (in which case, `git pull` will not merge): `git stash`, `git pull`, `git stash pop`.

#### Daily Workflow (Cont.)
Modify the files in the branch, add and commit to the branch as many edits as necessary with: `git add`, `git commit`.

Once you finish making changes, you want to incorporate the latest version of the `parent` branch in the remote repository into your local repository to ensure there are no conflicts: 
```bash
$ git checkout <parent>
$ git pull
$ git checkout <branchname>
$ git merge <parent>		# merges <parent> **into** the *current* branch (i.e. <branchname>)
```
- Always **commit before** pushing or pulling because if there are conflicts, Git reconstructs using the commits.
- Always **pull before** you push so that the local and the remote repositories are in sync.
- **Consult before** merging when working in a team in order to get feedback on a new feature branch. Create a pull request for this.
- If you want to merge the changes in `<branchname>` into the `<parent>`: `git checkout <parent>`, `git merge <branchname>`.

If there are conflicts, they will be indicated in the respective file (you are HEAD). Manually resolve any conflict. Delete all of the delimiters (`<<<`). Add the file back (`git add --all`) and finish the merge (`git merge --continue`). To abort the merge use: `git merge --abort`.


#### Knowing Where You Are and How to Move
To see the available branches:
```bash
$ git branch			# Displays all local branches
$ git branch -r			# Displays all remote branches
$ git branch -a			# Displays all local and remote branches

> * master			# If only the master branch exists
> * master, <branchname>	# If there are two branches
```   
- The asterisk tells you the branch in which you are currently working on. If you configured Git to display its output in color, the current branch will be displayed in green; remote branches will be displayed in red; the rest of the branches (local non-current) will be displayed in white.   

#### Download the Changes in the Remote Repository to the Local Repository
In the terminal, switch back to master and sync: 
```bash
$ git checkout master
$ git pull
```

In the terminal, go to the *local* `parent` branch (which initially will be the `master` branch) and make sure you have the most recent version of the *remote* `parent` branch:
```bash
$ git checkout <parent>		# Update the files to work on `parent`
$ git pull
```

#### Create a Branch
Create a new branch **off** the *current* branch and go to the new branch:
```bash
$ git branch <branchname>		# Creates a branch called <branchname>
# OR
$ git branch --set-upstream-to=origin/<branch> <branch>	# To set tracking information for the branch
					# Message displayed: "Branch '<branchname>' set up to track remote branch '<branchname>' from 'origin'"
# OR

$ git checkout <branchname>		# Switches to branch <branchname>
# OR
$ git checkout -b <branchname>		# Creates branch <branchname> and switches to it
# OR
$ git checkout -t origin/<branchname>	# Creates <branchname>, switches to it and tracks (for push and pull) its remote branch
# OR
$ git checkout -b <branchname> origin/<branchname> # Same as previous but local and tracking branches can have different names
```
- You can now make changes to the new branch `<branchname>` without affecting the `master` branch.
- If after switching to the branch you type `git branch`, the terminal will display: `master`, `* <branchname>`.
- [Link](https://stackoverflow.com/questions/10002239/difference-between-git-checkout-track-origin-branch-and-git-checkout-b-branch) explaining the difference between `git checkout -b` and `git checkout -t` for tracking a remote branch.


#### Upload Changes to the Remote Repository
Save all your commits in the local branch `<branchname>` to the remote repository (your branch `<branchname>` in GitHub):
```bash
$ git checkout <branchname>

$ git push	   		   # Works like `git push <branchname>`, where `<branchname>` is the *current* branch’s remote
# OR
$ git push origin  		   # Pushes the *current* branch to the configured upstream, if it has the same name as the current branch.
# OR
$ git push origin <branchname> 	   # Essentially the syntax is `git push <to> <from>`
# OR
$ git push -u origin <branchname>  # If there is no associated remote branch to <branchname>, use this line in the first push for Git to set `origin/<branchname>` as the upstream for the current branch
				   # This is no needed if the branch was created with `git checkout -b` or `git checkout -t`
				   # Message: `Branch '<branchname>' set up to track remote branch '<branchname>' from 'origin'`
```
-Note that you need to switch to `<branchname>` because if you are on `<parent>` and type `git push origin <branchname>`, Git will try to push the local `<parent>` branch (being the *current* branch) to the remote `<branchname>`, which would be incorrect. If you are in `<parent>` and you don't want to checkout to `<branchname>`, you can use: `git push origin <branchname>:<branchname>`.
- The options above push [just the current branch](https://stackoverflow.com/questions/820178/how-do-you-push-just-a-single-git-branch-and-no-other-branches), not other branches nor the `<parent>`. However, if for every branch that exists on the local side, you want the remote side to be updated if a branch of the same name already exists on the remote side use: `git push origin :` or `git push origin +:` (for non-fast-forward updates).

In GitHub.com refresh, go to your branch `<branchname>` and click the green button 'Compare, review, create a pull request', which will show your changes in green. This is also helpful to understand some conflicts.

#### Pull Requests
*Before* merging, create a pull request when collaborating with other colleagues.

Create a pull request for other people to peer review the changes by clicking the green button 'Create Pull Request'. After typing title and comments, click the green button 'Send pull request'.

Time for back and forth conversation about the changes, as well as necessary corrections (new commits and merges).
- Before you merge, you may have to resolve merge conflicts if others have made changes to the repo. 

When your pull request is approved and conflict-free, you can add your code to the `<parent>` branch.

Someone with privileges can accept the changes by clicking the green button 'Merge pull request', then the 'Confirm merge' button. The changes will now show up in the `<parent>` branch.
- It is usually a bad idea to merge your own pull requests when working with a team.

#### Delete Branches
Only delete temporary branches (`ftr` and `fix`), not permanent branches (`dev`).

Once it has been merged to in its upstream branch, the branch `<branchname>` can be safely deleted.

To delete a **local** branch (which has already been fully merged in its upstream branch) from the terminal:
```bash
$ git branch -d <branchname>
```

To delete a **remote** branch from the terminal ([link](https://stackoverflow.com/questions/2003505/how-do-i-delete-a-git-branch-both-locally-and-remotely), [link](https://stackoverflow.com/questions/5094293/git-remote-branch-deleted-but-still-appears-in-branch-a)):
```bash
$ git branch -d -r origin/<branch_name>		# Remove a particular remote-tracking branch
# OR
$ git push origin --delete <branch_name>
# OR
$ git push origin :<remote_branch_name>
```

To delete a branch **in GitHub**:
- After a pull request has been approved and merged, you can delete a branch by clicking the grey button 'Delete branch'. 
- If you merge a branch locally and then deleted it from the terminal, to delete it in GitHub click on the 'branches' tab at the top of the project's contents and click the trash button nex to the name of the branch.

When you delete branches in GitHub, they will still show up in the terminal with `git branch -a`. Also, after deleting the local branch (with `git branch -d <branchname>`) and the remote branch (with `git push origin --delete <branchname>`) other machines may still have "obsolete tracking branches". To remove all such [stale](https://makandracards.com/makandra/6739-git-remove-information-on-branches-that-were-deleted-on-origin) branches locally:
```bash
$ git remote prune origin
# OR
$ git fetch --prune
# OR
$ git fetch --all --prune		# In other machines after deleting remote branches to propagate changes
# OR
$ git fetch -p				# Prune remote branches
# OR
$ git pull -p
```



### Driessen's Branching Model
Use meaningful branch names. 
- [Link](https://stackoverflow.com/questions/273695/what-are-some-examples-of-commonly-used-practices-for-naming-git-branches) for useful naming conventions that facilitate the workflow. 
- [Link](https://nvie.com/posts/a-successful-git-branching-model/) explaining a successful Git branching model.

Based on the previous two sources, I will use a forward slash separator and the following branching categories and rules: 
- `dev` branch off from `master` and merge back into `master`. It is a permanent branch.
- `ftr` branch off from `dev` and merge back into `dev`. It is a temporary branch.
- `fix` branch off from `master` or `dev` and merge back into `master` or `dev`. It is a temporary branch. `fix` branches deal with bugs found in the `dev` branch or in the `master` branch (due to a -recent- merge from the `dev` branch).

Since `dev` is a permanent branch and `fix` branches are mainly used to correct bugs, most of the branches that will be used are feature `ftr` branches. Therefore, naming conventions are needed to differentiate between them; also since `fix` branches can be branched off from `master` *or* `dev`, it will be useful to distinguish between them. Thus, these are the naming conventions for the temporary branches:
- To distinguish a `fix` branched off from `master` or `dev`, the names of `fix` branches will begin with: `fix/mst` or `fix/dev`.
- There can be three types of feature branches and so `ftr` can take any of three tokens: `data`, `code`, `docs`.
  - `data` branches deal with raw or analytic data so this token will be followed by: `raw` and `ans`.
  - `code` branches deal with pre-analysis or analysis of the data so this token will be followed by: `pre` and `ans`.
  - `docs` branches deal with issues on paper, slides, equations, figures, tables, statistics, references or settings so this token will be followed by: `ppr`, `sld`, `eqn`, `fig`, `tab`, `sta`, `ref` and `set`.
- All three of the different types of feature branches can be used for experimenting or testing minor things unrelated to the previous categories, in which case any of the three types will be followed by: `tst`.
- **Examples**: `data/raw/feature-name`, `code/ans/feature-name`, `docs/eqn/feature-name`, `fix/dev/feature-name`, `code/tst/feature-name`, `docs/tst/feature-name`.
- Therefore, there are in total 17 possible types of temporary branches: 15 feautre branches (12 regular, 3 for tests), 2 fix branches.
- With this convention (names *and* forward slashes), no feature branch can have the following names: `ftr/cat` (e.g. `data/raw`,`code/ans`), `fix/dev`, `fix/mst`. That is, their names need to include the `/feature-name` part (see first link above).

#### Driessen's Model Adapted To A Research Project
[Implementation](https://stackoverflow.com/questions/4470523/create-a-branch-in-git-from-another-branch) of Driessen's branching model to a research project:
```bash
$ git checkout -b <branchname> <parent>	# Create a new branch **off** the `<parent>` branch *and* go to the new branch
					# Same as: git checkout <parent>, git branch <branchname>, git checkout <branchname>

$ git commit -am "Your message"		# Commit changes

$ git checkout <parent>
$ git merge --no-ff <branchname>	# Merge your changes to <parent> without a fast-forward

$ git push origin <parent>		# Push changes to the server
$ git push origin <branchname>
$ git branch -d <branchname>		# Optional: remove local and remote branches
$ git push origin --delete <branchname>
```

Implementation following the naming conventions:
```bash
# Develop branch
$ git checkout -b dev master
$ git push -u origin dev		# Sets the upstream for dev and see it in GitHub
	# Usual workflow
$ git status
$ git commit -am "Your message"
	# To merge dev branch into master (close all open files from the dev branch first)
$ git checkout master
$ git merge --no-ff dev			# Merge your changes to master without a fast-forward
$ git push origin master		# Push changes to the server
$ git push origin dev
$ git checkout dev			# Go back to dev branch, but if the master branch is changed after the dev branch
$ git branch -d dev			# was fully merged to master, delete the dev branch and create a new one from the
$ git push origin --delete dev		# newest version of the master branch


# Feature branches
	# Create the branch
$ git checkout -b ftr/cat/name dev
$ git push -u origin ftr/cat/name	# Sets the upstream for the branch and see it in GitHub
	# Usual workflow
$ git status
$ git commit -am "Your message"
	# To merge feature branch into dev (close all open files from the feature branch first)
$ git checkout dev
$ git pull				# Pull before push to ensure you have the latest version of the remote dev branch
$ git merge --no-ff ftr/cat/name	# Merge your branch changes to dev without a fast-forward
$ git pull				# When working in teams, it might be needed to again pull to ensure you have the latest version of the remote dev branch and there are no conflicts
$ git push origin dev			# Push changes to the server
$ git push origin ftr/cat/name		# Might need `git branch` for the name of the feature branch
	# To delete the feature branch
$ git branch -d ftr/cat/name		# Optional: remove fully merged local and remote branches
$ git push origin --delete ftr/cat/name


# Fix branches
	# Create the branch
$ git checkout -b fix/dev/name dev	OR	$ git checkout -b fix/mst/name master
$ git push -u origin fix/dev/name	OR	$ git push -u origin fix/mst/name
	# Usual workflow
$ git status
$ git commit -am "Your message"
				# fix/mst branches
	# To merge fix branch into master
$ git checkout master
$ git merge --no-ff fix/mst/name	# Merge your changes to master without a fast-forward
$ git push origin master		# Push changes to the server
$ git push origin fix/mst/name
	# To merge fix branch into dev
$ git checkout dev
$ git merge --no-ff fix/mst/name	# Merge your changes to dev without a fast-forward
$ git push origin dev			# Push changes to the server
				# fix/dev branches
	# To merge fix branch into dev
$ git checkout dev
$ git merge --no-ff fix/dev/name	# Merge your changes to dev without a fast-forward
$ git push origin dev			# Push changes to the server
$ git push origin fix/dev/name
	# To delete the fix branch
$ git branch -d fix/xxx/name		# Optional: remove local and remote branches
$ git push origin --delete fix/xxx/name
```


### Details
- A **ref** is anything pointing to a commit (e.g. branches (heads), tags, and remote branches), they are stored in the .git/refs directory (e.g. `refs/heads/master`, `refs/remotes/master`, `refs/tags`). For example, `refs/heads/0.58` specifies a branch named `0.58`; if you don't specify what namespace the ref is in, Git will look in the default ones, so using only `0.58` is ambiguous (there could have both a `branch` and a `tag` named `0.58`).
- When an update changes a branch (or more in general, a ref) that used to point at commit A to point at another commit B, it is called a **fast-forward** update if and only if B is a descendant of A. Hence a fast-forward update from A to B does not lose any history.
- To check out files from a previous commit (to reverse changes): `git checkout COMMIT_IDENTIFIER -- file1, file2`.
- Warning: `git reset` have options `--hard` and `--soft` that can be used to rewrite history and to throw out commits that you no longer want.
- If you use `git init` to create a local repository, and then want to upstream it to a remote (empty) repo, in your first push you need to use: `git push -u origin master`. This will create an upstream `master` branch on the upstream (`git push origin master`) *and* will record `origin/master` as a remote tracking branch so that the local branch `master` will be pushed to the upstream (origin) `master` (upstream branch). Since Git 1.7.11, the default push policy is `simple`: push only the current branch, and only if it has a similarly named remote tracking branch on the upstream. [Link](https://stackoverflow.com/questions/17096311/why-do-i-need-to-explicitly-push-a-new-branch/17096880#17096880) for an explanation.
- [Why do I have to `git push --set-upstream origin <branch>`?](https://stackoverflow.com/questions/37770467/why-do-i-have-to-git-push-set-upstream-origin-branch)
- Reasons for not keeping the repository in Dropbox: there is a chance of conflicts between the syncing of Dropbox and GitHub, and the space limit in Dropbox might be an issue when the project grows in size.
- Reasons for having a project for each chapter: GitHub has a limit of 1 GB per project and has limits of 100MB per file, keeping them separate minimizes these issues.
- To understand GitHub from scratch: Healey (intuitively explains Git workflow); Youtube videos by Learn Code show the basic workflow; Pinter (2019) explains benefits and gives recommendations; Sviatoslav (2017); Notes by Fernández-Villaverde complement/reinforce the previous one; StackExchange links for clarification, reinforcement and understanding the daily workflow.
- It is recommended to include a license file in your repositories, or at least explicitly claim copyright by including: Copyright [yyyy] [name of copyright owner].
- [Working with large files](https://help.github.com/en/articles/working-with-large-files)
- [Ignoring files](https://help.github.com/en/articles/ignoring-files)
- [Rename a repository](https://help.github.com/en/articles/renaming-a-repository)
- [Relocate a local repo](https://stackoverflow.com/questions/11384928/change-git-repository-directory-location)

### Solving Issues
See history of local commits
```bash
$ git log
```

See history of remote commits
```bash
$ git log HEAD..origin/brach_name
```

To remove a big file [wrongly committed](https://thomas-cokelaer.info/blog/2018/02/git-how-to-remove-a-big-file-wrongly-committed/)
```bash
$ git filter-branch --tree-filter 'rm -rf Codes/Pre-Analysis/struct_data.mat' HEAD
$ git push
```

It may cause the local and remote branches to diverge, in which case (see [this](https://stackoverflow.com/questions/2452226/master-branch-and-origin-master-have-diverged-how-to-undiverge-branches) and [this](http://serebrov.github.io/html/2012-02-13-git-branches-have-diverged.html))
```bash
$ git rebase origin/code/ans/fit-models
```

To exit the prompt `>` (e.g. if you opened up a string with the odd number of `'` characters when making a commit) and go back to your normal bash prompt, [use](https://stackoverflow.com/questions/26228848/how-do-i-exit-my-git-commit-message-im-not-in-the-vim-i-used-the-commit-m) `ctrl` + `c` or close the string by typing `'` again.

