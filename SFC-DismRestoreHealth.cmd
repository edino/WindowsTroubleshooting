@echo off
date /t & time /t
echo Dism /Online /Cleanup-Image /StartComponentCleanup
Dism /Online /Cleanup-Image /StartComponentCleanup
echo ...
date /t & time /t
echo Dism /Online /Cleanup-Image /ScanHealth
Dism /Online /Cleanup-Image /ScanHealth
echo ...
date /t & time /t
echo Dism /Online /Cleanup-Image /CheckHealth
Dism /Online /Cleanup-Image /CheckHealth
echo ...
date /t & time /t
echo Dism /Online /Cleanup-Image /RestoreHealth
Dism /Online /Cleanup-Image /RestoreHealth /Source:wim:V:\sources\install.wim:6
echo ...
date /t & time /t
echo SFC /scannow
SFC /scannow
date /t & time /t
pause