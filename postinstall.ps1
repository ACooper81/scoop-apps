scoop install aria2 7zip git sudo dark innounp lessmsi scoop-search --global --no-cache
sudo scoop list
Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
scoop update
scoop checkup
