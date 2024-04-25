zshrcfile=.zshrc
gitconfigfile=.gitconfig
ohmyzshfile=.oh-my-zsh

# if [ -f ~/$zshrcfile ]
# then
#   currentdate=$(date -j +"%s")
#   echo "$zshrcfile already exists"
#   echo "renaming original file"
#   mv ~/$zshrcfile ~/$zshrcfile-$currentdate
# fi

# ln -s ~/dotfiles/$zshrcfile ~/$zshrcfile
# echo ".zshrc linked"

if [ -f ~/$gitconfigfile ]
then
  echo "$gitconfigfile already exists"
else
  echo "\nPlease enter name for git"
  read name
  echo "Please enter email for git"
  read email

  echo "[user]\nname = $name\nemail = $email" > ~/.gitprofile

  ln -s ~/dotfiles/$gitconfigfile ~/$gitconfigfile
  echo ".gitconfig linked"
fi

# rm -rf ~/.oh-my-zsh/custom/plugins
# ln -s ~/dotfiles/.oh-my-zsh-custom/plugins ~/.oh-my-zsh/custom/plugins
# echo "oh-my-zsh plugins linked"

# rm -rf ~/.oh-my-zsh/custom/themes
# ln -s ~/dotfiles/.oh-my-zsh-custom/themes ~/.oh-my-zsh/custom/themes
# echo "oh-my-zsh themes linked"

# # run terminal commands to activate mac os x things
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
