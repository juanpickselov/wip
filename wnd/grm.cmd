@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

CALL git remote %*
GOTO :EOF

:usage
ECHO ------------------------------
ECHO Usage       : grm [args]
ECHO Description : git remote args
ECHO ------------------------------
EXIT /b 1
