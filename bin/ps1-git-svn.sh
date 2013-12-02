#!/bin/bash
parse_git_branch() { 
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git::\1)/' 
} 
parse_svn_branch() { 
  parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk -F / '{print "(svn::"$1 "/" $2 ")"}' 
} 
parse_svn_url() { 
  svn info 2>/dev/null | grep -e '^URL*' | sed -e 's#^URL: *\(.*\)#\1#g ' 
} 
parse_svn_repository_root() { 
  svn info 2>/dev/null | grep -e '^Repository Root:*' | sed -e 's#^Repository Root: *\(.*\)#\1\/#g ' 
} 
shorten_curr_dir(){
  echo -n "${PWD/#$HOME/~}" | awk -F "/" '{ if (length($0) > 14) { if (NF>4) printf "%s/%s.", $1, $2; for (i=3; i<NF-1; i++){ printf "%s", substr($(i),1,1); if (i!=NF-2) {printf "."} }; print "/" $(NF-1) "/"  $(NF); } else print $0;}'

#  {
#    if (length($0) > 14) 
#    { 
#      if (NF>4) printf "%s/%s/", $1, $2; 
#      for (i=3; i<NF-1; i++)
#      { 
#        printf "%s", substr($(i),1,1); 
#        if (i!=NF-2) 
#        {
#          printf "."
#        } 
#      }; 
#      print "/" $(NF-1) "/"  $(NF); 
#    } 
#    else print $0;
#  }'
}

export PS1="\[\033[00m\]\u@\h\[\033[01;34m\] \$(shorten_curr_dir) \[\033[31m\]\$(parse_git_branch)\$(parse_svn_branch) \[\033[00m\]$\[\033[00m\] "

