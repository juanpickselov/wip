@ECHO OFF
SET _var1=64
SET _var2=123
CALL :myfunct Bonjour
ECHO _var1 is %_var1%
ECHO _var2 is %_var2%
ECHO Final result %_result%
GOTO :EOF

:myfunct
SETLOCAL
SET _var1=%1
SET _var2="%_var1%--%_var1%--%_var1%"
ENDLOCAL & SET _result=%_var2%
