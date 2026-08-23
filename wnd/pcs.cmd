@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

code C:\zdocs\pcsetts
GOTO :EOF

:usage
ECHO -------------------------------
ECHO Usage       : command ^& args
ECHO Description : get the pcs
ECHO -------------------------------
EXIT /b 1
