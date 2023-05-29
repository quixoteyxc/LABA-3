@echo off
mkdir M:\lab3\labs\groups\FIO\cmd\hide
attrib +h M:\lab3\labs\groups\FIO\cmd\hide
mkdir M:\lab3\labs\groups\FIO\cmd\open
xcopy /? > M:\lab3\labs\groups\FIO\cmd\open\copyhelp.txt
xcopy M:\lab3\labs\groups\FIO\cmd\open\copyhelp.txt M:\lab3\labs\groups\FIO\cmd\hide\copied_copyhelp.txt
pause