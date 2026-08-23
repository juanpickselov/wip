@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

CALL git push %*
GOTO :EOF

:usage
ECHO ----------------------------
ECHO Usage       : gpu [args]
ECHO Description : git push args
ECHO ----------------------------
EXIT /b 1
