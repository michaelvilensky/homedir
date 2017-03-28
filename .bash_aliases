. ~/bin/make-completer-wrapper.sh
alias idle='/home/sagiv/bin/idle.py -s &'
function lsw()
{
 ls -lah `which $*`
}
function label () { echo -ne "\x1B]0;$*\a"; }
function lw () { less `which $*`; }
function say () { echo $* | festival --tts; }
alias local_easy_install="easy_install -d $HOME/work/python -s $HOME/bin"
alias title=label
alias updisp="export DISPLAY=`echo $SSH_CLIENT | awk {'print $1'}`:0.0"
# git aliases
alias gs='git status'
alias gd='git diff'
alias gg='git grep'
alias gsu='git submodule update --init'
alias ls="ls -F"
alias less="less -Rf"

alias ls='gls -F --color=auto'
alias la='ls -a'
alias lf='ls -FA'
alias ll='ls -lA'
alias dir='gdir --color=auto'
alias vdir='gvdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ku='kubectl'
alias kubegke='kubectl config use-context gke_secful-dev_us-central1-c_cluster1'
alias kubeaws_euwest-1a='kubectl config use-context aws_secful-eu-west-1a'
alias kubeaws_euwest-1b='kubectl config use-context aws_secful-eu-west-1b'
alias kubeaws_eueast-1a='kubectl config use-context aws_secful-eu-east-1a'

alias kubeprod='kubectl config use-context aws_secful-us-west-2a'
alias kubedev='kubectl config use-context aws_secful-eu-west-1a'
alias kubedemo='kubectl config use-context aws_secful-eu-central-1a'

alias findpod='kubectl get pod | cut -d " " -f 1 | grep'

alias kubemongodemo="kubedemo; kubectl port-forward \$(findpod mongo-) 27020:27017"
alias kubemongoprod="kubeprod; kubectl port-forward \$(findpod mongo-) 27019:27017"
alias kubemongodev="kubedev; kubectl port-forward \$(findpod mongo-) 27018:27017"

alias deletepod='kubectl delete pod'

function kubelog_func() {
    name=`findpod ${1}`
    kubectl logs -f $name
}
alias kubelog=kubelog_func
