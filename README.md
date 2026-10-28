# git-practice-BT25CSE204

| | |
|---|---|
| **Name** | Nishant Kumar |
| **Roll number** | BT25CSE204 |
| **Section** | CSE C2 |
| **Repository** | https://github.com/nishantrana012/git-practice-BT25CSE204 |

## About this assignment
Hands-on practice with Git and GitHub: committing, branching, issues, pull requests,
merge conflicts and undoing changes. Each exercise is a small Bash program kept in its
own folder, developed on a feature branch and merged through a pull request.

## Completed exercises
| # | Folder | Topic | Program | Issue | Pull request |
|---|---|---|---|---|---|
| 1 | `exercise-01` | add, commit, status, log; input validation | `greet.sh` | https://github.com/nishantrana012/git-practice-BT25CSE204/issues/1 | https://github.com/nishantrana012/git-practice-BT25CSE204/pull/2 |
| 2 | `exercise-02` | feature branch workflow | `wordstats.sh` | https://github.com/nishantrana012/git-practice-BT25CSE204/issues/3 | https://github.com/nishantrana012/git-practice-BT25CSE204/pull/4 |
| 3 | `exercise-03` | creating and resolving a merge conflict | `show_greeting.sh` | https://github.com/nishantrana012/git-practice-BT25CSE204/issues/5 | https://github.com/nishantrana012/git-practice-BT25CSE204/pull/6 and https://github.com/nishantrana012/git-practice-BT25CSE204/pull/7 |
| 4 | `exercise-04` | stash, revert, restore, tags | `sandbox_demo.sh` | https://github.com/nishantrana012/git-practice-BT25CSE204/issues/8 | https://github.com/nishantrana012/git-practice-BT25CSE204/pull/9 |

Every exercise folder has its source code, sample input (where needed) and `output.txt`.

## Folders, topics and programs

| Folder | Topic | Program | Sample input | Sample output |
|---|---|---|---|---|
| [`exercise-01`](exercise-01) | Git basics: add, commit, status, log; input validation | [`greet.sh`](exercise-01/greet.sh) | [`input.txt`](exercise-01/input.txt) | [`output.txt`](exercise-01/output.txt) |
| [`exercise-02`](exercise-02) | Feature branch workflow | [`wordstats.sh`](exercise-02/wordstats.sh) | [`input.txt`](exercise-02/input.txt) | [`output.txt`](exercise-02/output.txt) |
| [`exercise-03`](exercise-03) | Creating and resolving a merge conflict | [`show_greeting.sh`](exercise-03/show_greeting.sh) | [`settings.conf`](exercise-03/settings.conf) | [`output.txt`](exercise-03/output.txt) |
| [`exercise-04`](exercise-04) | Undoing changes: stash, revert, restore, tag | [`sandbox_demo.sh`](exercise-04/sandbox_demo.sh) | none needed | [`output.txt`](exercise-04/output.txt) |

**What each program does**
- **`greet.sh`** reads a name from the input file and prints a greeting. It reports an error if the file is missing, the name is empty, or it contains characters other than letters and spaces.
- **`wordstats.sh`** prints the line, word and character counts of a text file.
- **`show_greeting.sh`** prints every `key -> value` pair from `settings.conf`. The settings file is the one that produced the merge conflict.
- **`sandbox_demo.sh`** creates a temporary repository and demonstrates `git stash`, `git revert`, `git restore` and `git tag`.

## How to compile and run
The programs are Bash scripts, so there is nothing to compile. You need a Linux shell
(Linux, WSL or Git Bash) with Bash and Git installed.

```bash
git clone https://github.com/nishantrana012/git-practice-BT25CSE204.git
cd git-practice-BT25CSE204

cd exercise-01 && bash greet.sh input.txt && cd ..
cd exercise-02 && bash wordstats.sh input.txt && cd ..
cd exercise-03 && bash show_greeting.sh settings.conf && cd ..
cd exercise-04 && bash sandbox_demo.sh && cd ..
```

Compare your results with the `output.txt` in each folder.

## Git practice record
See [git-commands.md](git-commands.md) for every command used, what it does, and the
write-up of the merge conflict from exercise 03.

## Repository layout
```
.
├── README.md
├── git-commands.md
├── .gitignore
├── exercise-01/   greet.sh, input.txt, output.txt
├── exercise-02/   wordstats.sh, input.txt, output.txt
├── exercise-03/   show_greeting.sh, settings.conf, output.txt
└── exercise-04/   sandbox_demo.sh, output.txt
```
No passwords, tokens or compiled binaries are stored in this repository.
