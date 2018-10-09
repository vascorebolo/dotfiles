zshrcfile=.zshrc
gitconfigfile=.gitconfig
ohmyzshfile=.oh-my-zsh

if [ -f ~/$zshrcfile ]
then
  echo "$zshrcfile already exists"
else
  ln -s ~/dotfiles/$zshrcfile ~/$zshrcfile
  echo ".zshrc linked"
fi

if [ -f ~/$gitconfigfile ]
then
  echo ".gitconfig already exists"
else
  echo "\nPlease enter name for git"
  read name
  echo "Please enter email for git"
  read email

  echo "[user]\nname = $name\nemail = $email" > ~/.gitprofile

  ln -s ~/dotfiles/$gitconfigfile ~/$gitconfigfile
  echo ".gitconfig linked"
fi

rm -rf ~/.oh-my-zsh/custom/plugins
ln -s ~/dotfiles/.oh-my-zsh-custom/plugins ~/.oh-my-zsh/custom/plugins
echo "oh-my-zsh plugins linked"

rm -rf ~/.oh-my-zsh/custom/themes
ln -s ~/dotfiles/.oh-my-zsh-custom/themes ~/.oh-my-zsh/custom/themes
echo "oh-my-zsh themes linked"
