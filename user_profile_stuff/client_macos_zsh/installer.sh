#!/bin/zsh

echo >> /Users/$(whoami)/.zprofile
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/usr/local/bin/brew shellenv)"

brew install --casks \
	firefox \
	google-chrome \
	brave-browser \
	visual-studio-code \
	openlens \
	bitwarden \
	iterm2 \
	font-hack-nerd-font \
	docker \
	spotify \
	postman \
	utm \
	pgadmin4 \
	karabiner-elements \
	cyberduck \
	vlc \
	geekbench \
	rectangle

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
