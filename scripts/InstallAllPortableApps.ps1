$Excluded = "*Nightly-*","*NightlyCLI-*"
Get-ChildItem -Path "$env:userprofile\scoop\buckets\scoop-apps\bucket" -File -Recurse -Filter "*Portable.json" -Exclude $Excluded | Select-Object BaseName | ForEach-Object { If(!(test-path -PathType container ("$env:userprofile\scoop\apps\" + $_.Basename))) {Write-Host $_.BaseName}}