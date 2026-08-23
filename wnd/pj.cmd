@ECHO OFF
SET "PROJ_PATH=C:\zprj"
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] EQU [] GOTO usage

IF /I EXIST %PROJ_PATH%\%1 (
CD /D %PROJ_PATH%\%1
) ELSE (
ECHO project:
FOR /F "eol=: delims=" %%F IN ('dir /ad /b %PROJ_PATH%') DO ECHO   - %%F
ECHO:
)
GOTO :EOF

:usage
ECHO --------------------------------------------
ECHO Usage        : pj project[\subfolder]
ECHO Description  : navigate to project folder
ECHO --------------------------------------------
EXIT /b 1
