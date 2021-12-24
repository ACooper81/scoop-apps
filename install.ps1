Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb 'https://raw.githubusercontent.com/scoopinstaller/install/master/install.ps1' | iex
scoop install sudo git
sudo scoop install 7zip git sudo dark innounp lessmsi aria2 --global --no-cache
scoop config SCOOP_REPO 'https://github.com/Ash258/Scoop-Core'
scoop bucket add Scoop-Apps 'https://github.com/ACooper81/scoop-apps'
scoop update
sudo scoop list
scoop checkup
