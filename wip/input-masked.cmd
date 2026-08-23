@echo OFF
cls

set psScript=$securePwd = Read-Host "Enter phrase" -AsSecureString; ^
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePwd)); ^
Write-Host $plainPwd

for /f %%a in ('powershell -Command "&{%psScript%}"') do (
    set "THEPHRASE=%%~a"
)
    set "MY_VAR=%THEPHRASE%"
    set "NEW_VAR=buttercupPrincess"

set psScript=
