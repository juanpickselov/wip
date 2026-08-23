@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] EQU [] GOTO usage
IF [%2] EQU [] GOTO usage
IF [%3] EQU [] GOTO usage

gh pr create -B %1 -H %2 -b "" -t %3
GOTO :EOF

:usage
ECHO ----------------------------------------
ECHO Usage        : prc [into] [from] [title]
ECHO Description  : description here
ECHO ----------------------------------------
EXIT /b 1
