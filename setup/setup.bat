@echo off
SET LOG_FILE=C:\Users\David\.dotfiles\setup\setup.log 

SETX HOME "C:\Users\David" /M
ECHO HOME %HOME% > %LOG_FILE%

REM default Windows stuff
SET PATH=%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0;

REM git setup
SET  PATH=C:\dev\tools\Git\bin;%PATH% 

REM svn setup
SET PATH=C:\dev\tools\Subversion\bin;%PATH%

REM java setup
SET  JAVA_HOME=C:\dev\languages\Java\jdk1.7.0_45
SETX JAVA_HOME %JAVA_HOME% /M
ECHO JAVA_HOME %JAVA_HOME% >> %LOG_FILE%
SET PATH=%JAVA_HOME%\bin;%PATH%

REM mvn setup
SET MVN_HOME=C:\dev\tools\apache-maven\2.2.1
SETX MVN_HOME %MVN_HOME% /M
ECHO MVN_HOME %MVN_HOME% >> %LOG_FILE%

SET MVN_OPTS=" " 
SETX MVN_OPTS "%MVN_OPTS%" /M
ECHO MVN_OPTS %MVN_OPTS% >> %LOG_FILE%
SET PATH=%MVN_HOME%\bin;%PATH%

REM ctags
SET PATH=C:\dev\tools\ctags\ctags58;%PATH% 

REM Set the PATH now...
SETX PATH %PATH% /M
ECHO PATH %PATH% >> %LOG_FILE%

REM console2 setup
cp "C:\Users\David\.dotfiles\console2\console.xml"  "C:\dev\tools\Console2\console.xml">> %LOG_FILE%

REM gvm setup
REM curl -s get.gvmtool.net | bash
REM source "/c/Users/David/.gvm/bin/gvm-init.sh"
REM cp "C:\Users\David\.dotfiles\settings.xml"  "%GRAILS_HOME%\settings.xml"

