alias l='ls -Flrta'
alias cp='cp -i'

alias ga='git add .'
alias gc='function _gc(){ git commit -m "$1";}; _gc'
alias gpl='git pull'
alias gplu='git pull upstream master'
alias gps='git push'
alias gs='git status'
alias gf='git fetch --all; git reset --hard origin/master'
alias gnb='git checkout -b '
alias gcm='git checkout master'
alias gpn='git push -u origin '

alias cdhosts='cd ~/Dev/hosts/blacklistscripts'
alias cdpt='cd ~/Library/Android/sdk/platform-tools'
alias cddev='cd ~/Dev'
alias cdst='cd ~/Dev/AndroidStudioProjects/StrengthStandards'
alias cdan='cd ~/Dev/AndroidStudioProjects'

alias adev='adb devices'
alias aem='adb -s emulator-5554 shell'
alias adbres='adb kill-server && adb start-server'

# Run atom without gpu acceleration
function runAtom {
    atom $@ --disable-gpu
}
alias a=runAtom
alias n='nano ' 
LOS=$(uname);
if [ $LOS = "Darwin" ];
then
	alias v='mvim ';
else
	alias v='gvim ';
fi

