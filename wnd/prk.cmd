@ECHO OFF
SET "UTLZ=C:\zutlz"
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF /I "%1" EQU "" GOTO usage

CD /D %UTLZ%

IF NOT EXIST %UTLZ%\%1 GOTO usage

IF NOT EXIST %UTLZ%\%1-prev (
  ECHO moving %1 to %1-prev
  MOVE %1 %1-prev
  MD %1
)
IF /I "%1" EQU "code" (
  IF /I NOT EXIST %UTLZ%\%1\data\ (
    MD %UTLZ%\%1\data
  )
)

SET "UTLZ="
GOTO :EOF

:usage
ECHO ----------------------------------------------------
ECHO Usage       : prc [folder name]
ECHO Description : move app folder to -prev and recreate
ECHO ----------------------------------------------------
EXIT /b 1
