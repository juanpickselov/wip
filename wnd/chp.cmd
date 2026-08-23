@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF "%1" EQU "" GOTO usage
IF %1 LSS 1 GOTO usage
IF %1 GTR 99 GOTO usage
ECHO creating %1 chapter(s)
SET COUNT=%1

FOR /L %%I IN (1, 1, %COUNT%) DO CALL :make-folders %%I
SET "_FORMATTEDVALUE="
GOTO :EOF

:make-folders
 IF %1 LEQ 9 SET "_FORMATTEDVALUE=0%1"
 IF %1 LEQ 9 MKDIR c%_FORMATTEDVALUE%
 IF %1 GEQ 10 MKDIR c%1
GOTO :EOF

:usage
ECHO:
ECHO -------------------
ECHO Usage : chp 1 - 99
ECHO -------------------
ECHO:
EXIT /b 1
