#!/bin/bash

function checkdiff {
  echo "$1 (<repo >~)"
  diff $1 ../$1  
}

checkdiff .bash_profile 
checkdiff .bashrc 
checkdiff .bashrc_custom 
checkdiff .screenrc 
checkdiff .gitconfig 
checkdiff .npmrc 
checkdiff .inputrc 

# .grails
# .m2
