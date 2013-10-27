REM setup.bash

SETX HOME "C:\Users\David"
SETX JAVA_HOME "C:\dev\languages\Java\jdk1.7.0_45"
SETX GRAILS_HOME "C:\dev\languages\grails\2.3.1"
SETX GROOVY_HOME "C:\dev\languages\groovy\2.1.8"
SETX MVN_HOME "C:\dev\tools\apache-maven\2.2.1"
SETX MVN_OPTS ""
SETX PATH "%USERPROFILE%\AppData\Roaming\npm\;C:\dev\languages\nodejs\;%MVN_HOME%\bin;%GRAILS_HOME%\bin;%JAVA_HOME%\bin;C:\dev\tools\Git\bin;C:\dev\tools\Subversion\bin;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\" /M

REM NodeJs Setup
SETX NODE_PATH "%USERPROFILE%\AppData\Roaming\npm\node_modules"

REM Console 2 setup
cp "C:\Users\David\.dotfiles\console2\console.xml"  "C:\dev\tools\Console2\console.xml"

REM Grails 2 setup
cp "C:\Users\David\.dotfiles\settings.xml"  "C:\Users\David\.grails\settings.xml"