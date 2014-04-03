# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PS1='\[\e[1;32m\]\u@\h [\W] \$\[\e[0m\] '

alias ".."="cd ../"
alias "..."="cd ../../"

alias lh="ls -hl"



# URxvt Title
case "$TERM" in 
*rxvt*)
	PROMPT_COMMAND='echo -ne "${TTY}\\033]0;${USER}@${HOSTNAME}: [${DIRSTACK}]\007"'
	;;
*)
	;;
esac

