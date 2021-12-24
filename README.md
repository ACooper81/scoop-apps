# Description

# Automatic Install Script
Run the following in a non-admin PowerShell terminal and accept the security prompts.
- iwr -useb 'https://raw.githubusercontent.com/ACooper81/scoop-apps/master/install.ps1' | iex

As soon as scoop is installed do the following:
Run the following in a admin PowerShell terminal and
- scoop list; scoop checkup

# Manual Installation
Refer to new installer how to install base scoop.
https://github.com/ScoopInstaller/Install#scoop-uninstaller

Run the following in a non-admin PowerShell terminal
- Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
- iwr -useb 'https://raw.githubusercontent.com/scoopinstaller/install/master/install.ps1' | iex

As soon as base scoop is installed do the following:
Run the following in a admin PowerShell terminal
- scoop install 7zip git sudo dark innounp lessmsi aria2 --global --no-cache
- scoop config SCOOP_REPO 'https://github.com/Ash258/Scoop-Core'
- scoop bucket add Scoop-Apps 'https://github.com/ACooper81/scoop-apps'
- scoop update
- scoop checkup

Once installed, run scoop help for additional information.

# Scoop URL's
Website - https://scoop.sh/  
GitHub - https://github.com/lukesampson/scoop  
Apps - https://scoop.netlify.com/apps/  
Search Apps - https://scoop-docs.now.sh/apps/  
Awsome Scoop - https://github.com/ScoopInstaller/Awesome  

# Help URL's
Concepts - https://scoop.netlify.com/concepts/  
Documentation - https://github.com/lukesampson/scoop/wiki  
