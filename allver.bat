@ECHO off
for /d %%D IN ("%1*") DO echo %%D & cd %%D & git describe --abbrev=0 --tags & cd ..
GOTO :eof