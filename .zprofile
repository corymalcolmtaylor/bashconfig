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
		PS1='\[\e[0;31m\][\u@\h]$ \[\e[0m\]' 
	else
      	PS1='\[\e[0;36m\][\u@\h]$ \[\e[0m\]' 
	fi
	;;
	*)
	PS1="\u@\h\$ "
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
 
DEVHOME='/Volumes/macex/Dev'

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

LOS=$(uname);
if [ $LOS = "Darwin" ]; then
	# PATH=".:$PATH:/Users/$USER/Library/Android/sdk/platform-tools"
	PATH=".:$PATH:/Volumes/macex/androidSDK/emulator"
	PATH="$PATH:/Volumes/macex/androidSDK/platform-tools"
	PATH="$PATH:/Volumes/macex/androidSDK"
	PATH="$PATH:/Volumes/macex/npm_Global/bin"
	PATH="$PATH:/usr/local/bin:/usr/local/mysql/bin"
	PATH="$PATH:/usr/local/Cellar/mongodb/3.6.3/bin"
	PATH="$PATH:/Volumes/macex/flutter/bin"
	#PATH="$PATH:/Users/$USER/dev/flutter/bin"
	PATH="$PATH:/Users/$USER/.nimble/bin"
	PATH="$PATH:/usr/local/Cellar/python/3.7.3/Frameworks/Python.framework/Versions/3.7/bin"
  export ANDROID_AVD_HOME='/Volumes/macex/androidSDK/.android/avd'
  DEVHOME='/Volumes/macex/Dev'
  export DEVHOME=$DEVHOME
fi
export DEVHOME=$DEVHOME
export PS1=$PS1
export PATH=$PATH
export CLICOLOR=1
eval "$(rbenv init -)"


