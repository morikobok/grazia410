SET INSTVER=401
if not "%ProgramFiles(x86)%"=="" reg.exe export HKLM\SOFTWARE\WOW6432Node\Grazia\%INSTVER% "%COMPUTERNAME%-%INSTVER%-HKLM-64-%date:~-4%%date:~3,2%%date:~0,2%.reg"
if "%ProgramFiles(x86)%"=="" reg.exe export HKLM\SOFTWARE\Grazia\%INSTVER% "%COMPUTERNAME%-%INSTVER%-HKLM-32-%date:~-4%%date:~3,2%%date:~0,2%.reg"
reg.exe export HKCU\SOFTWARE\Grazia\%INSTVER% "%COMPUTERNAME%-%INSTVER%-HKCU-%date:~-4%%date:~3,2%%date:~0,2%.reg"
pause