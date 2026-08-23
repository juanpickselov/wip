@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
ECHO %1
GOTO :EOF

:usage
ECHO ----------------------------
ECHO Usage       : say [message]
ECHO Description : echo message
ECHO ----------------------------
EXIT /b 1

