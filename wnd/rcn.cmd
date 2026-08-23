@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

FOR /D %%G in (%APPDATA%\JetBrains\IntelliJIdea* %APPDATA%\JetBrains\IdeaIC*) DO CALL :remove-list %%G
GOTO :EOF

:remove-list
IF EXIST %1\options\recentProjects.xml DEL %1\options\recentProjects.xml
GOTO :EOF

:usage
ECHO ---------------------------------
ECHO Usage       : rcn
ECHO Description : clear project list
ECHO ---------------------------------
EXIT /b 1
