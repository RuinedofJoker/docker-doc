@echo off
echo ��ʼ�ύ��git....
echo ��ǰ·�� [%~dp0]
set abPath=%~dp0
set drive=%abPath:~0,1%
%drive%:
cd %abPath%
git add .
git commit -m "%date:~0,4%/%date:~5,2%/%date:~8,2%"
git pull
git push
@echo off
echo ���͵�git�ɹ�
@echo on
pause
