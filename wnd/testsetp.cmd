@ECHO OFF
IF /I "%USERNAME%" == "tbonez" (
    SET /P CONFIRMIT=What say you [ya:no]
)


IF /I "%CONFIRMIT%" == "no" (
  ECHO:
  ECHO %USERNAME% says Nooooooooooo!
  ECHO %CONFIRMIT%
)

IF /I "%CONFIRMIT%" == "ya" (
  ECHO:
  ECHO Yes %USERNAME%, affirmative
  ECHO %CONFIRMIT% yeah yeah yeahs
)

