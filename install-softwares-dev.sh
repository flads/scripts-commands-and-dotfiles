#!/bin/bash

#---------------------------------------#
# PHP, GIT, GIT-FLOW, VIM, WGET AND CURL:
#---------------------------------------#

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:certbot/certbot -y
sudo apt-get update

sudo apt-get install git git-flow vim curl wget -y

sudo apt-get install php7.3 php7.3-bcmath php7.3-cgi php7.3-cli php7.3-curl php7.3-dev php7.3-enchant php7.3-fpm php7.3-gd php7.3-gmp php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-pgsql php7.3-pspell php7.3-readline php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xml php7.3-xmlrpc php7.3-xsl php7.3-zip php-imagick -y

sudo a2enconf php7.3-fpm

sudo curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && composer self-update

# ----------------------- #
#  NODEJS AND NPM WITH NVM:
# ----------------------- #

sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | zsh

echo 'export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc

source ~/.zshrc

nvm install v12.14.0
nvm use v12.14.0

# ------ #
#  YARN:
# ------ #

sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn -y

# -------- #
# OH MY ZSH:
# -------- #

sudo apt-get update
sudo apt-get install zsh -y

sudo apt-get install powerline fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s /bin/zsh
cd ~/.oh-my-zsh && upgrade_oh_my_zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

