@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

IF [%HTTP_PROXY%] NEQ [] (
    ECHO %HTTP_PROXY% > http_proxy_value
    SET HTTP_PROXY=
)
IF [%HTTPS_PROXY%] NEQ [] (
    ECHO %HTTPS_PROXY% >> http_proxy_value
    SET HTTPS_PROXY=
)
GOTO :EOF

:usage
ECHO --------------------------
ECHO Usage       : prx
ECHO Description : unset proxy
ECHO --------------------------
EXIT /b 1
