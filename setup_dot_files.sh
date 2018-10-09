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

if [ -f ~/$ohmyzshfile ]
then
  echo ".oh-my-zsh already exists"
else
  ln -s ~/dotfiles/$ohmyzshfile ~/$ohmyzshfile
  echo ".oh-my-zsh linked"
fi
