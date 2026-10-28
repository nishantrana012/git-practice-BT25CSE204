# Git commands used

## Setup and first commits
| Command | Purpose |
|---|---|
| `git config --global user.name / user.email` | Set the identity stored in every commit. |
| `git clone <url>` | Copy the GitHub repository to my machine. |
| `git config core.autocrlf input` | Avoid Windows CRLF line endings breaking the shell scripts. |
| `git status` / `git status --short` | See which files are modified, staged or in conflict. |
| `git add <file>` / `git add -A` | Stage changes for the next commit. |
| `git commit -m "message"` | Save the staged changes with a descriptive message. |
| `git log --oneline` | Show a compact commit history. |
| `git push -u origin main` | Upload main and set it as the upstream branch. |

## Branching and pull requests
| Command | Purpose |
|---|---|
| `git checkout -b <branch>` | Create a branch and switch to it. |
| `git checkout <branch>` | Switch between branches. |
| `git push -u origin <branch>` | Publish a feature branch to GitHub. |
| `git pull origin main` | Download and merge the latest main (after a PR is merged). |
| `git branch -d <branch>` | Delete a merged local branch. |
| `gh issue create` | Open a GitHub issue for each exercise. |
| `gh pr create --base main --head <branch>` | Open a pull request ("Closes #N" links it to the issue). |
| `gh pr merge <url> --merge --delete-branch` | Merge the pull request and remove the branch. |

## Merging and undoing
| Command | Purpose |
|---|---|
| `git merge main` | Bring the latest main into my branch (this produced the conflict). |
| `git diff` | Inspect conflicting changes. |
| `git stash` / `git stash pop` | Temporarily shelve uncommitted work and bring it back. |
| `git revert HEAD` | Undo a commit by adding a new opposite commit (history is kept). |
| `git restore <file>` | Throw away uncommitted edits to a file. |
| `git tag -a v1.0 -m "message"` | Mark a release point. |
| `git push origin v1.0` | Publish the tag to GitHub. |

## Merge conflict encountered (Exercise 03)

**How it happened.** `exercise-03/settings.conf` contained `greeting=Hello`.
I created two branches from the same commit. `exercise-03-formal` changed the line
to `greeting=Good day`, and `exercise-03-casual` changed the same line to `greeting=Hey`.
The formal branch was merged into `main` through a pull request. When I then ran
`git merge main` on `exercise-03-casual`, Git could not decide which version of the
line to keep and stopped with a conflict.

**What Git showed** (`git status --short`):

```
UU exercise-03/settings.conf
```

**The conflicted file** (`exercise-03/settings.conf`):

```
<<<<<<< HEAD
greeting=Hey
=======
greeting=Good day
>>>>>>> main
```

**How I resolved it.**
1. Opened the file and read both sides: between `<<<<<<<` and `=======` is my branch's
   line, between `=======` and `>>>>>>>` is the line from `main`.
2. Decided to keep both values under different keys and deleted the conflict markers:

```
greeting=Good day
casual_greeting=Hey
```

3. Marked the file as resolved: `git add exercise-03/settings.conf`
4. Finished the merge: `git commit -m "Resolve merge conflict in settings.conf by keeping both greetings"`
5. Pushed the branch and merged its pull request, which was now conflict free.
