@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
START "" "C:\zutlz\lw\LibreWolf-Portable" "https://myworkspace.jpmchase.com"
IF /I "%1" == "n" GOTO done
EXIT

:done
GOTO :EOF

:usage
ECHO -----------------------------
ECHO Usage       : ws [n]
ECHO Description : open ws [stay]
ECHO -----------------------------
EXIT /b 1
