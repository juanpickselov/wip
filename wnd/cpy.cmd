@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

SET "SCRIPT_PATH=C:\zskr"
SET "PROJ_PATH=C:\zprj\cmd\skr\wnd"
IF EXIST %SCRIPT_PATH% (
    DEL %SCRIPT_PATH%\.
    FOR %%F IN (%PROJ_PATH%\*.cmd) DO (
        IF /I %%F NEQ %PROJ_PATH%\cpy.cmd (
            COPY %%F %SCRIPT_PATH% >nul 2>&1
        )
    )
)
SET "SCRIPT_PATH="
SET "PROJ_PATH="
GOTO :EOF

:usage
ECHO -------------------------------------
ECHO Usage       : cpy
ECHO Description : copy cmd files to zskr
ECHO -------------------------------------
EXIT /b 1
