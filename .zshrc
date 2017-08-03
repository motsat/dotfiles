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
alias psuni="ps aux | grep -v 'grep' | grep --color unicorn"
#alias g="grep -inr --color "

setopt list_packed
export PATH="$PATH:/usr/local/sbin"
#autoload -U predict-on
#predict-on
if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
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

#setopt INTERACTIVE_COMMENTS
cmd_tag()
{
  while getopts s:ul: OPT
  do
    case $OPT in
      "s" ) CMD_TAG="$OPTARG";;
      "u" ) CMD_TAG="" ;;
      "l" ) list_cmd_tag $OPTARG ;;
    esac
  done
}
list_cmd_tag()
{
  cat ~/cmd_tag.txt | awk -F "," '{print $1}'|sort|uniq
  #if [ $1 ];then
  #  cat ~/cmd_tag.txt
  #else
  #  echo $1
  #fi
}
precmd(){
  if [ $CMD_TAG ];then
    cmd=`history | tail -1 | sed -E "s/^  +[0-9]+  //"`
    #perl -p -w -e 's/  [0-9]+  //g'
    echo $cmd
    echo "$CMD_TAG $cmd" >> ~/cmd_tag.txt
  fi
}
#setopt share_history
alias -g G="|grep"
t config --global alias.co checkout
git config --global alias.st 'status'
git config --global alias.ci 'commit -a'
git config --global alias.di 'diff'
git config --global alias.br 'branch'
alias g='grep -inr'
