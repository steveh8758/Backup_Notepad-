@echo off 
REM attrib -s -h -r %appdata%\Notepad++

taskkill /im notepad++.exe /f >nul

rmdir %appdata%\Notepad++ /Q /S
MD %appdata%\Notepad++
timeout -t 1 /nobreak

xcopy .\appdata\ "%appdata%\Notepad++\" /E /Q /C /H /R /X /Y
copy .\programfiles\functions\*.* "%programfiles%\Notepad++\functionList\" /Y
copy .\programfiles\functions_autoCom\*.* "%programfiles%\Notepad++\autoCompletion\" /Y
xcopy .\programfiles\plugins\ "%programfiles%\Notepad++\plugins\" /E /Q /C /H /R /X /Y

start notepad++.exe