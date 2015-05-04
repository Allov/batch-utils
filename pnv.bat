@echo off

for /f %%i in ('git describe --abbrev=0 --tags') do set CURRENT=%%i

set NEXTMINOR=%CURRENT:~-1%
set /a INC=%NEXTMINOR%+1

set version=%CURRENT:~0,-1%%INC%

git add . --all
git commit -a -m %1
git tag -a %version% -m %1
git push
git push --tags