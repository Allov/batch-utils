@echo off

git tag
set /p version=[Enter new version]

git add . --all
git commit -a -m %1
git tag -a %version% -m %1
git push
git push --tags