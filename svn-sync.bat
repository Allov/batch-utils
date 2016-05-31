@ECHO off
for /d %%D IN ("%1*") DO call:sync %%D
GOTO :eof

:sync
CD %1
IF EXIST .\.svn echo %1 & svn update
CD ..
GOTO :eof