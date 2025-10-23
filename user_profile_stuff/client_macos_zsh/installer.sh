#!/bin/zsh

brew install --casks \
	firefox \
	visual-studio-code \
	librewolf \
	iterm2 \
	font-hack-nerd-font \
	rectangle \
	temurin \
	pgadmin4 \
	google-chrome \
	brave-browser \
	bitwarden \
	freelens \
	karabiner-elements \
	cyberduck \
	postman \
	openvpn-connect \
	vlc \
	utm \
	geekbench \
	orbstack \
	cursor

brew install \
	starship \
	tmux \
	fortune \
	lolcat \
	htop \
	neofetch \
	ncdu \
	iperf3 \
	pre-commit \
	cmatrix \
	nvm \
	dos2unix \
	rustup \
	plz-cli \
	go

sudo gem install catsay

xattr -d com.apple.quarantine /Applications/LibreWolf.app

# set up nvm
# apple silicon
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# intel
#export NVM_DIR="$HOME/.nvm"
#  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
mkdir ~/.nvm
nvm install 18
nvm alias default 18

# time to set up rust
rustup-init -y

cd ~
strfile -c % my_quotes my_quotes.dat
