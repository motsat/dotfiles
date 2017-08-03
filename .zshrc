if [ -x /usr/local/bin/brew ]; then
  BREW_PREFIX=`brew --prefix`
  fpath=($BREW_PREFIX/share/zsh/functions(N) $BREW_PREFIX/share/zsh/site-functions(N) $fpath)
fi
autoload -U compinit
compinit
setopt auto_pushd
setopt correct
setopt auto_cd
alias -g V="| vim -R -"
alias be="bundle exec"
#alias g="grep -inr --color "

setopt list_packed
export PATH="$PATH:/usr/local/sbin"
#autoload -U predict-on
#predict-on
BREW_PREFIX=`brew --prefix`

if [ -e $BREW_PREFIX/etc/autojump ]; then
  source $BREW_PREFIX/etc/autojump
fi
function a(){
  mv $1 $2
}
#alias grep='grep -inr'
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

alias -g G="|grep"
alias g='grep -inr'
