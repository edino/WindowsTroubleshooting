sc config wsearch start= disabled
net stop wsearch
esentUtl.exe /d %AllUsersProfile%\Microsoft\Search\Data\Applications\Windows\Windows.edb
sc config wsearch start= delayed-auto
net start wsearch