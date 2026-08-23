@ECHO OFF
SET ASAUCE=Whoa
SET MY_LIST=%ASAUCE%, Zebra, Bottleneck
FOR %%I in (%MY_LIST%) DO CALL :process-list %%I
ECHO not in the block
GOTO :EOF

:process-list
 ECHO %1
 GOTO :EOF
