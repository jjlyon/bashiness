function maxWidth()
{
  COL="$(tput cols)"
  [[ $1 -lt $COL ]] && ret=$1 || ret=$COL
  echo $ret
}

function grepr()
{
  grep -R "$@" *
}

function pam()
{
  ssh -t -p 2222 jl045425@PAM root@"$1"
}
