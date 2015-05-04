@echo off

SETLOCAL
git describe --abbrev=0 --tags > ___temptemp.txt
SET /p CURRENT=<___temptemp.txt
del ___temptemp.txt

set NEXTMINOR=%CURRENT:~-1%
set /a INC=%NEXTMINOR%+1

set version=%CURRENT:~0,-1%%INC%
echo Upgrading to %version%

git add . --all
git commit -a -m %1
git tag -a %version% -m %1
git push
git push --tags
ENDLOCAL