#!/bin/bash

function checkdiff {
  echo "$1 (<repo >~)"
  diff -b $1 ../$1  
}

checkdiff .bash_profile 
checkdiff .bashrc 
checkdiff .bashrc_custom 
checkdiff .screenrc 
checkdiff .gitconfig 
checkdiff .npmrc 
checkdiff .inputrc 
checkdiff .eslintrc

# .grails
# .m2
