#!/bin/zsh

brew install --casks \
	firefox \
	google-chrome \
	brave-browser \
	visual-studio-code \
	openlens \
	bitwarden \
	iterm2 \
	font-hack-nerd-font \
	spotify \
	postman \
	utm \
	pgadmin4 \
	karabiner-elements \
	cyberduck \
	vlc \
	geekbench \
	rectangle \
	orbstack

brew install \
	starship \
	tmux \
	fortune \
	lolcat \
	htop \
	neofetch \
	ncdu \
	iperf3 \
	nvm \
	dos2unix

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
