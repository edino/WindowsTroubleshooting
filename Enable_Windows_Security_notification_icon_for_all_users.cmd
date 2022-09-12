; Created by: Edino de Souza
; Created on: November 17th 2018


reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /t REG_EXPAND_SZ /d "\"%ProgramFiles%\Windows Defender\MSASCuiL.exe\"" /f