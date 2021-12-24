if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs }
scoop install 7zip git sudo dark innounp lessmsi aria2 --global --no-cache
sudo scoop list
Add-MpPreference -ExclusionPath 'C:\Users\User\scoop'
Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
scoop update
