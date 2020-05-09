# UPDATE
sudo yum update -y

# HomeBrew on Linux
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# remote git and install git from brew
sudo yum remove git -y
brew install git

# install phpbrew
curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
chmod +x phpbrew.phar

sudo mv phpbrew.phar /usr/local/bin/phpbrew
phpbrew init

echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc

# phpbrewでphpをインストールする際に、php7.2以上がシステムのデフォルトになっていないと
# エラーが発生するので、brewでphp7.4をインストールする
brew install php@7.4

# intall php7.4 of phpbrew
phpbrew intall php7.4 +default +mysql +pdo +fpm +opcache +intl
phpbrew switch php7.4
