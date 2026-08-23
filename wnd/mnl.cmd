@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

START "" msedge "file:///C:/zread/gnu/mnul/index.html"
GOTO :EOF

:usage
ECHO --------------------------
ECHO Usage       : mnl
ECHO Description : Bash Manual
ECHO --------------------------
EXIT /b 1
