# Define the download URL for the Visual Studio Code installation file
//$VSCodeDownloadUrl = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"

# Define the target location for the Visual Studio Code installation file
//$VSCodeInstaller = "$env:TEMP\vscode-installer.exe"

# Download the Visual Studio Code installation file
//Invoke-WebRequest -Uri $VSCodeDownloadUrl -OutFile $VSCodeInstaller

# Install Visual Studio Code
//Start-Process -FilePath $VSCodeInstaller -Wait//
 Install-VSCode.ps1 -Architecture 32-bit
    Installs Visual Studio Code (32-bit) and the powershell extension.

# Clean up the installation file
Remove-Item $VSCodeInstaller
