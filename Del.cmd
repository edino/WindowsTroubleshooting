@echo off
echo What directory would you like to delete?
set /p UserInputPath=""
echo Choosen Directory: %UserInputPath%
del /f/s/q %UserInputPath% > nul
rmdir /s/q %UserInputPath%
echo Directory: %UserInputPath% was deleted.
pause
