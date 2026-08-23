@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

CALL git branch %*
GOTO :EOF

:usage
ECHO ----------------------------------
ECHO Usage       : gbr branchname args
ECHO Description : git branch args
ECHO ----------------------------------
EXIT /b 1
