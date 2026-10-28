# git-practice-BT25CSE204

**Name:** Nishant Kumar
**Roll number:** BT25CSE204
**Section:** CSE C2

## Description
Practice of basic Git and GitHub: commits, branches, issues, pull requests, merge conflicts
and undoing changes. Each exercise is a small Bash program in its own folder.

## Completed exercises

| Folder | Topic | Program | Issue | Pull request |
|---|---|---|---|---|
| exercise-01 | add, commit, status, log; input validation | greet.sh | [#1](https://github.com/nishantrana012/git-practice-BT25CSE204/issues/1) | [#2](https://github.com/nishantrana012/git-practice-BT25CSE204/pull/2) |
| exercise-02 | feature branch workflow | wordstats.sh | [#3](https://github.com/nishantrana012/git-practice-BT25CSE204/issues/3) | [#4](https://github.com/nishantrana012/git-practice-BT25CSE204/pull/4) |
| exercise-03 | merge conflict | show_greeting.sh | [#5](https://github.com/nishantrana012/git-practice-BT25CSE204/issues/5) | [#6](https://github.com/nishantrana012/git-practice-BT25CSE204/pull/6), [#7](https://github.com/nishantrana012/git-practice-BT25CSE204/pull/7) |
| exercise-04 | stash, revert, restore, tag | sandbox_demo.sh | [#8](https://github.com/nishantrana012/git-practice-BT25CSE204/issues/8) | [#9](https://github.com/nishantrana012/git-practice-BT25CSE204/pull/9) |

## How to run
The programs are Bash scripts, so nothing needs to be compiled. Run them in a Linux shell
(Linux, WSL or Git Bash):

```bash
cd exercise-01 && bash greet.sh input.txt
cd exercise-02 && bash wordstats.sh input.txt
cd exercise-03 && bash show_greeting.sh settings.conf
cd exercise-04 && bash sandbox_demo.sh
```

Each folder has an `output.txt` with the sample output.

## Git practice record
See [git-commands.md](git-commands.md) for the commands used and the merge conflict write-up.
