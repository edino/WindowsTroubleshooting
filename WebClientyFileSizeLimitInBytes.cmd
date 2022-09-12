net stop webclient

reg add "HKLM\SYSTEM\CurrentControlSet\Services\WebClient\Parameters" /v "FileSizeLimitInBytes" /t REG_DWORD /d "4294967295" /f

net start webclient