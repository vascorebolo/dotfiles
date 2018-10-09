# dotfiles
Project to store my dotfiles configurations, install apps and do general setup for a fresh install of mac os.

### Steps
* Install homebrew and nvm
* Make sure you're located in `~` folder
* Clone project to current folder
* Install apps using homebrew cask, with: `sh ~/dotfiles/casks.sh`
* Install node packages with: `sh ~/dotfiles/npm.sh`
* Setup dotfiles with: `sh ~/dotfiles/setup_dot_files.sh`
  - it'll create symlinks for dotfiles inside the Project
  - if no .gitconfig file is present, it prompts user for user.name and user.email of git
