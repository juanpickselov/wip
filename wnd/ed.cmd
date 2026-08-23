@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

C:\zutlz\tulz\edit %*
GOTO :EOF

:usage
ECHO ----------------------------------
ECHO Usage        : ed [args]
ECHO Description  : runs microsoft edit
ECHO ----------------------------------
EXIT /b 1
