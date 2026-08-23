@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF /I [] EQU [%1] GOTO usage

CALL git checkout %*
GOTO :EOF

:usage
ECHO ------------------------------------------
ECHO Usage       : gco [-b] branchName
ECHO Description : git checkout [make] branch
ECHO ------------------------------------------
EXIT /b 1
