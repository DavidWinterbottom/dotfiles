@echo off

:: my standard aliases
doskey cds=cd c:\local\source
doskey ls=ls -aF --color
doskey ll=ls -alrtF --color

:: vim
doskey vim=c:\local\tools\Vim\vim74-kaoriya-win32\vim.exe $*
doskey vi=vim $*
