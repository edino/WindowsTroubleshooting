start cmd.exe /C cleanmgr.exe /sagerun:12
start cmd.exe /C CHKDSK C:  /F 
start cmd.exe /C CHKDSK D:  /F
start cmd.exe /C CHKDSK E:  /F
start cmd.exe /C Defrag C: /U /V /H
start cmd.exe /C Defrag D: /U /V /H
start cmd.exe /C Defrag E: /U /V /H
start cmd.exe /C SFC /SCANNOW
start cmd.exe /C WINSAT FORMAL RESTART CLEAN
start cmd.exe /C Secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose

