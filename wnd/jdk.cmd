@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF "%1" EQU "" GOTO usage

SET "JAVA_HOME=C:\zutlz\jdk\jdk%1"
SET "PATH=%JAVA_HOME%\bin;%PATH%"
GOTO :EOF

:usage
ECHO ------------------------------
ECHO Usage       : jdk [version]
ECHO Description : use JDK version
ECHO ------------------------------
EXIT /b 1
