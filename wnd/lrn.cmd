@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

START "" C:\zutlz\lw\LibreWolf-Portable https://quii.gitbook.io/learn-go-with-tests https://go.dev/
GOTO :EOF

:usage
ECHO -----------------------------
ECHO Usage       : lrn
ECHO Description : learning sites
ECHO -----------------------------
EXIT /b 1
