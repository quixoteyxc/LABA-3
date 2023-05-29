@echo off
mkdir M:\lab3\labs\groups\FIO\batch\hide
attrib +h M:\lab3\labs\groups\FIO\batch\hide
mkdir M:\lab3\labs\groups\FIO\batch\open
xcopy /? > M:\lab3\labs\groups\FIO\batch\open\copyhelp.txt
xcopy M:\lab3\labs\groups\FIO\batch\open\copyhelp.txt M:\lab3\labs\groups\FIO\batch\hide\copied_copyhelp.txt
pause