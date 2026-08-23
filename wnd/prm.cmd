@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] EQU [] GOTO usage

gh pr merge %1 -m
GOTO :EOF

:usage
ECHO -------------------------------------
ECHO Usage       : gh pr merge [pr url] -m
ECHO Description : merge pr
ECHO -------------------------------------
EXIT /b 1
