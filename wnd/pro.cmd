@ECHO OFF
SETLOCAL
SET "PROJ_PATH=C:\zprj"
SET "UTLZ=C:\zutlz"
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF "%1" EQU "" GOTO usage
IF "%2" EQU "" GOTO list-projects
IF /I "%2" NEQ "" (SET "FOLDER_OR_FILE=%2")

CALL :editor-%1 2>NUL
IF %ERRORLEVEL%==1 (ECHO Which editor: i, c, n, w)
GOTO done

:editor-c
IF /I EXIST %PROJ_PATH%\%FOLDER_OR_FILE% (
  CALL code %PROJ_PATH%\%FOLDER_OR_FILE% --profile "snoflayk"
  GOTO done
)
IF /I EXIST %FOLDER_OR_FILE% (
  CALL code %FOLDER_OR_FILE%
) ELSE (
    GOTO list-projects
)
GOTO done

:editor-i
IF /I EXIST %PROJ_PATH%\%FOLDER_OR_FILE% (
  CALL START "" %UTLZ%\ijue\bin\idea64 nosplash %PROJ_PATH%\%FOLDER_OR_FILE%
  GOTO done
)
IF /I EXIST %FOLDER_OR_FILE% (
    CALL START "" %UTLZ%\ijue\bin\idea64 nosplash %FOLDER_OR_FILE%
) ELSE (
    GOTO list-projects
)
GOTO done

:editor-iC
IF /I EXIST %PROJ_PATH%\%FOLDER_OR_FILE% (
  CALL START "" %UTLZ%\ijce\bin\idea64 nosplash %PROJ_PATH%\%FOLDER_OR_FILE%
  GOTO done
)
IF /I EXIST %FOLDER_OR_FILE% (
    CALL START "" %UTLZ%\ijce\bin\idea64 nosplash %FOLDER_OR_FILE%
) ELSE (
    GOTO list-projects
)
GOTO done

:editor-n
IF /I EXIST %FOLDER_OR_FILE% (
    CALL "C:\Windows\System32\notepad.exe" %FOLDER_OR_FILE%
)
GOTO done

:list-projects
ECHO project:
FOR /F "eol=: delims=" %%F IN ('dir /ad /b %PROJ_PATH%') DO ECHO   - %%F
ECHO:

:done
ENDLOCAL
CD /d C:\ztmp
GOTO :EOF

:usage
ECHO ------------------------------------------------------
ECHO Usage       : pro [editor] [project folder or file]
ECHO Description : open project or file with editor
ECHO Editor      : i idea, ic idea ce, c VSCode, n notepad
ECHO ------------------------------------------------------
EXIT /b 1
