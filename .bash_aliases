alias l='ls -lrta'
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

alias cdpt='cd /Users/$USER/Library/Android/sdk/platform-tools'
alias cddev='cd /Users/$USER/Dev'
alias cdst='cd /Users/$USER/Dev/AndroidStudioProjects/StrengthStandards'
alias cdan='cd /Users/$USER/Dev/AndroidStudioProjects'
alias cdhosts='cd ~/Dev/hosts/blacklistscripts'
alias adev='adb devices'
alias aem='adb -s emulator-5554 shell'

# Run atom without gpu acceleration
function runAtom {
    atom $@ --disable-gpu
}
alias a=runAtom
alias n='nano ' 
alias v='mvim '

