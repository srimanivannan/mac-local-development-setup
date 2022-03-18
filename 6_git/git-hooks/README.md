### Purpose

This sets up a client-side git hook to enforce a story or defect id in your commit messages.

You can either include the story id directly in your commit message, or if your branch includes a story id in its name, then this git hook
will automatically parse the story id from the branch name and prepend it to your commit message for you.

Story/defect ids consist of an S or D followed by some numbers.

### Setup

##### Standard setup

1. cd $HOME

2. git clone [this repo] 

3. After running this command, any new repos you clone or create will make use of these git hooks:
   -   git config --global init.templatedir '~/ms-git-hooks'

##### Special case

3. If you already have existing projects cloned that you'd like to add these git hooks to, run this (requires git version 2.9+):
   -   cd into existing cloned repo dir
   -   git config core.hooksPath $HOME/ms-git-hooks/hooks

##### How to disable this

If you'd like to turn off story ID enforcement for any particular local repo you have, just go to the repo root and type:
    `rm .git/hooks/prepare-commit-msg`