@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF /I "%1" EQU "" GOTO usage

SET "ALGOR=SHA256"
IF /I "%2" NEQ "" SET "ALGOR=%2"
IF NOT EXIST %1 GOTO usage

certutil -hashfile %1 %ALGOR%
SET "ALGOR="
GOTO :EOF

:usage
ECHO ---------------------------------
ECHO Usage       : vrf [file] [algor]
ECHO Description : cert check in cwd
ECHO ---------------------------------
EXIT /b 1
