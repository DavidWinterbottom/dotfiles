# .bashrc file
# By Balaji S. Srinivasan (balajis@stanford.edu)
#
# Concepts:
#
#    1) .bashrc is the *non-login* config for bash, run in scripts and after
#        first connection.
#    2) .bash_profile is the *login* config for bash, launched upon first connection.
#    3) .bash_profile imports .bashrc, but not vice versa.
#    4) .bashrc imports .bashrc_custom, which can be used to override
#        variables specified here.
#           
# When using GNU screen:
#
#    1) .bash_profile is loaded the first time you login, and should be used
#       only for paths and environmental settings

#    2) .bashrc is loaded in each subsequent screen, and should be used for
#       aliases and things like writing to .bash_eternal_history (see below)
#
# Do 'man bashrc' for the long version or see here:
# http://en.wikipedia.org/wiki/Bash#Startup_scripts
#
# When Bash starts, it executes the commands in a variety of different scripts.
#
#   1) When Bash is invoked as an interactive login shell, it first reads
#      and executes commands from the file /etc/profile, if that file
#      exists. After reading that file, it looks for ~/.bash_profile,
#      ~/.bash_login, and ~/.profile, in that order, and reads and executes
#      commands from the first one that exists and is readable.
#
#   2) When a login shell exits, Bash reads and executes commands from the
#      file ~/.bash_logout, if it exists.
#
#   3) When an interactive shell that is not a login shell is started
#      (e.g. a GNU screen session), Bash reads and executes commands from
#      ~/.bashrc, if that file exists. This may be inhibited by using the
#      --norc option. The --rcfile file option will force Bash to read and
#      execute commands from file instead of ~/.bashrc.

# -----------------------------------
# -- 1.1) Set up umask permissions --
# -----------------------------------
#  The following incantation allows easy group modification of files.
#  See here: http://en.wikipedia.org/wiki/Umask
#
#     umask 002 allows only you to write (but the group to read) any new
#     files that you create.
#
#     umask 022 allows both you and the group to write to any new files
#     which you make.
#
#  In general we want umask 022 on the server and umask 002 on local
#  machines.
#
#  The command 'id' gives the info we need to distinguish these cases.
#
#     $ id -gn  #gives group name
#     $ id -un  #gives user name
#     $ id -u   #gives user ID
#
#  So: if the group name is the same as the username OR the user id is not
#  greater than 99 (i.e. not root or a privileged user), then we are on a
#  local machine (check for yourself), so we set umask 002.
#
#  Conversely, if the default group name is *different* from the username
#  AND the user id is greater than 99, we're on the server, and set umask
#  022 for easy collaborative editing.
if [ "`id -g`" == "`id -u`" -a `id -u` -gt 99 ]; then
	umask 002
else
	umask 022
fi

# ---------------------------------------------------------
# -- 1.2) Set up bash prompt and ~/.bash_eternal_history --
# ---------------------------------------------------------

# Append to history
# See: http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
shopt -s histappend

## -----------------------
## -- 2) Set up aliases --
## -----------------------

# 2.2) Listing, directories, and motion
if [[ `uname` == "MINGW32_NT-6.2" || `uname` == "MINGW32_NT-6.1" || `uname` == "MINGW32_NT-10.0" ]];  then
  alias ls="ls -aF --color"
  alias ll="ls -alrtF --color"
  alias cds="cd /c/local/source"
elif [[ `uname` == "Linux" ]];  then
  alias ls="ls -aF --color"
  alias ll="ls -alrtF --color"
elif [[ `uname` == "Darwin" ]] ; then
  alias ls="ls -aFG"
  alias ll="ls -alrtFG"
  alias cds="cd /local/source"
  alias cdd="cd /Users/david/Dropbox/David/docs/"
fi

alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

alias vi="vim"
if [[ `uname` == "Darwin" ]];  then
  alias vi="mvim"
  alias vim="mvim"
fi

alias npmls="npm ls --depth=0"

# 2.3) Text and editor commands
export EDITOR='vim'
export VISUAL='vim' 

# 2.4) grep options
#export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='1;31' # green for matches

# 2.5) sort options
# Ensures cross-platform sorting behavior of GNU sort.
# http://www.gnu.org/software/coreutils/faq/coreutils-faq.html#Sort-does-not-sort-in-normal-order_0021
unset LANG
export LC_ALL=POSIX

# 2.6) Install rlwrap if not present
# http://stackoverflow.com/a/677212
#command -v rlwrap >/dev/null 2>&1 || { echo >&2 "Install rlwrap to use node: sudo apt-get install -y rlwrap";}

## ------------------------------
## -- 3) User-customized code  --
## ------------------------------

## Define any user-specific variables you want here.
source ~/.bashrc_custom

set -o vi

# Make prompt git + svn aware 
#. ps1-git-svn.sh
