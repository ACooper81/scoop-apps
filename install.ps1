Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb 'https://raw.githubusercontent.com/scoopinstaller/install/master/install.ps1' | iex
scoop install sudo git
scoop config SCOOP_REPO 'https://github.com/Ash258/Scoop-Core'
scoop bucket add 'Base'
scoop bucket add Scoop-Apps 'https://github.com/ACooper81/scoop-apps'
[Environment]::SetEnvironmentVariable('SCOOP', '$env:UserProfile\scoop', 'User')
scoop update
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
scoop install 7zip git sudo dark innounp lessmsi aria2 --global --no-cache
sudo scoop list
Add-MpPreference -ExclusionPath 'C:\Users\User\scoop'
Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
scoop update
