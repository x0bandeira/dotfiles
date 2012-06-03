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

PATH="$PATH:$HOME/bin"

for file in `ls $HOME/.zsh-init`; do
  source "$HOME/.zsh-init/$file"
done
