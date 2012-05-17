# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=4000
SAVEHIST=4000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tw/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

COMMAND_PROMPT="
%b@%n in %B%~%b 

%B%F{green}%# ~> %b"

export PS1="${COMMAND_PROMPT}"

source "$HOME/.rvm/src/rvm/scripts/rvm"
