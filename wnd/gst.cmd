@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

CALL git status %*
GOTO :EOF

:usage
ECHO ------------------------------------
ECHO Usage       : gst [args]
ECHO Description : git status args
ECHO ------------------------------------
EXIT /b 1
