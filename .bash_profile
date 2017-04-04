PS1="\u@\h\$ "
#if [ $(id -u) -eq 0 ];
#then
#	PS1="\e[0;31m \w\a[\u@\h]\$\e[m"
#else
#	PS1="\e[0;36m \w\a[\u@\h]\$\e[m"
#fi
case $TERM in
	xterm*)
	if [ $(id -u) -eq 0 ];
	then
		PS1="\[\033]0;\u@\h: \w\007\]\e[0;31m[\u@\h]\$\e[m "
	else
		PS1="\[\033]0;\u@\h: \w\007\]\e[0;36m[\u@\h]\$\e[m "
	fi
	;;
	*)
		PS1="\u@\h\$ "
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

LOS=$(uname);
if [ $LOS = "Darwin" ]; then
	PATH=".:/Users/$USER/Library/Android/sdk/platform-tools:$PATH"
	PATH="/Users/$USER/Dev/npm_Global/bin:$PATH"
	PATH="/usr/local/bin:$PATH"
fi


export PATH=$PATH


