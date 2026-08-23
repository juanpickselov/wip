@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

@gh repo list juanpickselov --topic "%1" --json url --jq .[].url -L 500 | sort
GOTO :EOF

:usage
ECHO ----------------------
ECHO Usage : repos [topic]
ECHO ----------------------
EXIT /b 1
