@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco install package.config 
[System.Environment]::SetEnvironmentVariable("DOCKER_HOST", "tcp://localhost:2375", "User")
cp startup.bat $([System.Environment]::GetFolderPath("Startup"))