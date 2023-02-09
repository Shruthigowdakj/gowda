# Define the download URL for the Visual Studio Code installation file
$VSCodeDownloadUrl = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"

# Define the target location for the Visual Studio Code installation file
$VSCodeInstaller = "$env:TEMP\vscode-installer.exe"

# Download the Visual Studio Code installation file
Invoke-WebRequest -Uri $VSCodeDownloadUrl -OutFile $VSCodeInstaller

# Install Visual Studio Code
Start-Process -FilePath $VSCodeInstaller -ArgumentList "/silent" -Wait

# Clean up the installation file
Remove-Item $VSCodeInstaller
