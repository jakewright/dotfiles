# Dotfiles

A collection of useful aliases and functions to source from your bash profile.
I use this to keep dotfiles syncronised between different computers.
Inspired by https://github.com/cowboy/dotfiles, this is simplified version and has no bootstrapping scripts.

## Bash Scripts

To use these scripts, clone the repository:

```bash
cd ~
git clone git@github.com:jakewright/dotfiles.git
```

Then add the following to `~/.bash_profile`:

```bash
source ~/dotfiles/git.sh
source ~/dotfiles/web.sh
source ~/dotfiles/unix.sh
```

Reload your bash profile by running `source ~/.bash_profile`.

Feel free to clone the repository to a different directory, just update the paths that you source as appropriate.

## Gitignore

To use the global git ignore file, run:

```bash
git config --global core.excludesfile ~/dotfiles/gitignore_global
```
