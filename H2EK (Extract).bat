@echo off
echo Clearing shader_cache data..
del /q .\shader_cache\
echo Extracting H2EK game data..
.\bin\x64\7zr.exe x .\H2EK.7z
pause
