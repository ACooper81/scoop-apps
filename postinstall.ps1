scoop install 7zip git sudo dark innounp lessmsi aria2 --global --no-cache
sudo scoop list
Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
scoop update
