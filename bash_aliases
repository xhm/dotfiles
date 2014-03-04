alias sshcse='ssh yshi843@cse.unsw.edu.au'
alias mycat=pygmentize
alias logout="gnome-session-save --force-logout"

function pless() {
  mycat "$1" | less -R
}
