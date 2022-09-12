:: This script was created by Matthew Wai on TenForums at http://www.tenforums.com
:: Tutorial: http://www.tenforums.com/tutorials/4189-fast-startup-turn-off-windows-10-a.html 
:: /************************************************************************************/
@echo off & title Turn on or off fast starup in Windows 10. & mode con cols=68 lines=6 & color 17
:: ************************************************************************************/
Set "Variable=0" & if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs"
fsutil dirty query %systemdrive%  >nul 2>&1 && goto :(Privileges_got)
If "%1"=="%Variable%" (echo. &echo. Please right-click on the file and select &echo. "Run as administrator". &echo. Press any key to exit. &pause>nul 2>&1& exit)
cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "%~0", "%Variable%", "", "runas", 1 > "%temp%\getadmin.vbs"&cscript //nologo "%temp%\getadmin.vbs" & exit
:(Privileges_got)
:: ************************************************************************************/
For /f "tokens=3" %%v in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /V "HiberbootEnabled"') do set Result=%%v
If "%Result%" == "0x0" (goto Turn_it_on?) else (goto Turn_it_off?) & Exit
:: /*************************************************************************************/ 
:Turn_it_on?
echo. 
echo    Fast startup is currently disabled. Do you want to turn it on?
echo.
echo             Press (Y)es to turn on fast startup.
echo             Press (N)o  to exit.
      
CHOICE /C "YN" /M "Your choice?:" >nul 2>&1
If %errorlevel%==2 (Exit) else (goto Turn_on_fast_startup) & Exit
:: /*************************************************************************************/ 
:Turn_it_off?
echo. 
echo    Fast startup is currently enabled. Do you want to turn it off?
echo.
echo             Press (Y)es to turn off fast startup.
echo             Press (N)o  to exit.
  
CHOICE /C "YN" /M "Your choice?:" >nul 2>&1
If %errorlevel%==2 (Exit) else (goto Turn_off_fast_startup) & Exit
:: /*************************************************************************************/ 
:Turn_on_fast_startup
powercfg -h on
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /V HiberbootEnabled /T REG_dWORD /D 1 /F

If errorlevel 1 (echo. &echo. &echo.	
echo           The script has failed to perform the operation.
echo           Press any key to close this message.
echo. & pause > nul & EXIT) else (echo. &echo. &echo.	
echo             Fast startup has been turned on.
echo             Press any key to close this message.
echo. & pause > nul & EXIT)
:: /*************************************************************************************/                                                                              
:Turn_off_fast_startup
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /V HiberbootEnabled /T REG_dWORD /D 0 /F

If errorlevel 1 (echo. &echo. &echo.
echo           The script has failed to perform the operation.
echo           Press any key to close this message.
echo. & pause > nul & EXIT) else (echo. &echo. &echo.	
echo             Fast startup has been turned off.
echo             Press any key to close this message.
echo. & pause > nul & EXIT)
:: /*************************************************************************************/ 