[System.Environment]::SetEnvironmentVariable("DOCKER_HOST", "tcp://localhost:2375", "User")
cp startup.bat $([System.Environment]::GetFolderPath("Startup"))