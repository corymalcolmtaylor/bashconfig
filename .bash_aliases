alias l='ls -Flrta'
alias cp='cp -i'

alias ga='git add .'
alias gc='function _gc(){ git commit -m "$1";}; _gc'
alias gpl='git pull'
#to pull from a forked repos paent repo 
alias gplu='git pull upstream master'
alias gps='git push'
alias gd='git diff'
alias gs='git status'
alias gf='git fetch --all; git reset --hard origin/master'
alias gnb='git checkout -b '
alias gcm='git checkout master'
alias gpn='git push -u origin '
# when pushing an existing project to a new remote repo: eg- gpsu https://github.com/userName/repoName.git
alias gpsu='gitpushtourl'
function gitpushtourl {
	git remote add origin "$1";
	git push;
}
alias gi='git init'
#git clone example
alias gcl='echo "git clone  https://github.com/userName/repoName.git"'


alias cdhosts='cd ~/Dev/hosts/blacklistscripts'
alias cdpt='cd ~/Library/Android/sdk/platform-tools'
alias cddev='cd ~/Dev'
alias cdst='cd ~/Dev/AndroidStudioProjects/StrengthStandards'
alias cdan='cd ~/Dev/AndroidStudioProjects'
alias cdfst='cd ~/Dev/FirebaseProjects/StrengthStandards'

alias adev='adb devices'
alias aem='adb -s emulator-5554 shell'
alias adbres='adb kill-server && adb start-server'
alias nps='killall -9 node'
# Run atom without gpu acceleration
function runAtom {
    atom $@ --disable-gpu
}
alias a=runAtom
alias c='cat ' 
alias n='nano ' 
alias p='python3 ' 
LOS=$(uname);
if [ $LOS = "Darwin" ];
then
	alias v='mvim ';
else
	alias v='gvim ';
fi

