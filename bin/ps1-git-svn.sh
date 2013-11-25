#!/bin/bash

find 2>/dev/null | \
  egrep "\.json|\.js|\.properties" | \
  grep -v node_modules | \
  grep -v "bower.*test" | \
  grep -v "bower.*\.bower\.json" | \
  grep -v "min\.js" | \
  ctags -a -L '-'
