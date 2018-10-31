# bash-completion
#     firebase-cli
#     git
#     neovim/neovim/neovim
#     nvm
#     thefuck
#     tldr
#     tmux
#     tree
#     yarn
#     zsh
#     zsh-completions
#     zsh-syntax-highlighting

sudo apt-get install software-properties-common -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y

sudo apt-add-repository ppa:neovim-ppa/stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update

sudo apt-get install neovim tmux yarn zsh

sudo pip3 install thefuck

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

