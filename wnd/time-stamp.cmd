@ECHO OFF
CALL :get-date
CALL :get-time
PING -n 11 127.0.0.1>nul
CALL :get-time

GOTO :EOF

:get-date
:: get-date
:: Display date independent of OS Locale, Language or date format.
SETLOCAL
SET t=2& IF "%DATE%z" LSS "A" SET t=1
FOR /F "skip=1 tokens=2-4 delims=(-)" %%A IN ('ECHO/^|DATE') DO (
  FOR /F "tokens=%t%-4 delims=.-/ " %%J IN ('DATE/t') DO (
    SET %%A=%%J&SET %%B=%%K&SET %%C=%%L)
)
ECHO %yy%%mm%%dd%
ENDLOCAL&SET _yyyy=%yy%&SET _mm=%mm%&SET _dd=%dd%
GOTO :EOF

:get-time
SETLOCAL
FOR /F "tokens=1-3 delims=1234567890 " %%a IN ("%time%") DO SET "delims=%%a%%b%%c"
FOR /F "tokens=1-4 delims=%delims%" %%G IN ("%time%") DO (
  SET _hh=%%G
  SET _min=%%H
  SET _ss=%%I
  SET _ms=%%J
)
:: Strip any leading spaces
SET _hh=%_hh: =%

:: Ensure the hours have a leading zero
IF 1%_hh% LSS 20 SET _hh=0%_hh%

CALL :show-time %_hh%%_min%%_ss%
ENDLOCAL&SET _time=%_hh%:%_min%
GOTO :EOF

:show-time
ECHO LOG%1
GOTO :EOF
