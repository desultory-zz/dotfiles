if [[ $- != *i* ]] ; then
	return
fi

shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend
shopt -s dotglob

[ -d "$HOME/.local/bin" ] && [ `echo $PATH | grep -c "$HOME/.local/bin"` -eq 0 ] && PATH="$HOME/.local/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

PS1='\[\033[01;31m\]\u\[\033[01;34m\]@\[\033[01;32m\]\h\[\033[01;34m\] \[\033[01;33m\]\w \[\033[01;34m\]\$\[\033[00m\] '

cd $HOME
