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

function pam2()
{
  ssh -t -p 2222 jl045425@corppamrelprd00 root@"$1"
}

function gcm()
{
  echo `parse_git_branch`
}

function knifes()
{
  knife "$@" -c ~/.chef/knife_sandbox.rb
}

function knifep()
{
  knife "$@" -c ~/.chef/knife_prod.rb
}
