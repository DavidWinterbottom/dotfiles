#!/bin/bash

function checkdiff {
  echo "$1 (<repo >~)"
  diff -b $1 ../$1  
}

checkdiff .bash_profile 
checkdiff .bashrc 
checkdiff .bashrc_custom 
checkdiff .babelrc
checkdiff .jshintrc
checkdiff .eslintrc
checkdiff .inputrc 
checkdiff .screenrc 
checkdiff .gitconfig 
checkdiff dos_bashrc.bat

# .grails
# .m2
