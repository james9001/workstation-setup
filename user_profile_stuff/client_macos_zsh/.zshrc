export OPENAI_API_KEY="${ENV_VAR_OPENAI_API_KEY}"
export SNYK_TOKEN="${ENV_VAR_SNYK_TOKEN}"
export HOMEBREW_NO_ANALYTICS=1

alias ls='ls -halG'


alias aup="docker compose up -d --remove-orphans"
alias adown="docker compose down --remove-orphans"
alias als="docker container ls -a"
alias abuild="docker compose build"

alias powah="sudo powermetrics --samplers smc"

cleantmux () {
    THIS_SESSION_ID=`tmux display-message -p '#S'`
    for session in $(tmux list-sessions | cut -d: -f1); do     
        if [[ "$session" != "$THIS_SESSION_ID" ]]; then
            tmux kill-session -t $session
        fi
    done
}

reposync () {
    cd ~/repositories
    for dir in ~/repositories/*; do
        if [ -d "$dir" ]; then
            cd "$dir"
            echo "repo: $dir"
            echo "pull from origin: $(git pull 2>&1)"
            echo "push to origin: $(git push origin 2>&1)"
            #
            #
            #
            #
            cd ..
            echo "---"
        fi
    done
}

pingg () {
    ping 8.8.8.8 | while read pong; do echo "$(date): $pong"; done
}


if [[ $(tmux list-sessions | wc -l) -gt 10 ]]; then
    echo "More than 10 tmux sessions active. Clean the others up with \"cleantmux\""
fi

path+=('/Applications/mvn/apache-maven-3.6.3/bin')
path+=('/Users/$(whoami)/bin')
path+=('/Users/$(whoami)/go/bin')

#use lowercase v to return the path to a jdk
#use uppercase V to show the list of available jdks
#gotta love macOS huh
#export JAVA_HOME=`/usr/libexec/java_home -v 11.0.13`
export JAVA_HOME=/usr/local/opt/openjdk

if [[ "$TERM" =~ tmux ]]; then
    #echo $([ $[ $RANDOM % 6 ] = 0 ] && fortune || fortune ~/my_quotes) | catsay --cat contemplating | lolcat -a -d 1
    fortune ~/my_quotes | catsay --cat contemplating | lolcat -a -d 1
fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#Starship. This may have to go last but im not really sure
eval "$(starship init zsh)"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [[ "$ITERM_PROFILE" != "" ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
