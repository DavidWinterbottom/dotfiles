#!/bin/bash

function checkdiff {
  echo "$1 (<repo >~)"
  diff -b $1 ../$1  
}

checkdiff .bash_profile 
checkdiff .bashrc 
checkdiff .bashrc_custom 
checkdiff .babel.json
checkdiff .jshintrc
checkdiff .eslintrc
checkdiff .inputrc 
checkdiff .screenrc 
checkdiff .gitconfig 

# .grails
# .m2
