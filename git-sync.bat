@ECHO off
for /d %%D IN ("%1*") DO call:sync %%D
GOTO :eof

:sync
CD %1
IF EXIST .\.git echo %1 & git pull
CD ..
GOTO :eof