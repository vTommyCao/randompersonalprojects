@echo off

:input

SET /P van=on/off:
IF "%van%"=="on" (goto van_on) ELSE IF "%van%"=="off" (goto van_off) ELSE (goto input)
:van_on
sc config vgk start= system

pause

:van_off
sc config vgk start= disabled
pause 