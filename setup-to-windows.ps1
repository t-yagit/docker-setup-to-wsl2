choco install docker-engine docker-cli docker-compose 
[System.Environment]::SetEnvironmentVariable("DOCKER_HOST", "tcp://localhost:2375", "User")
cp startup.ps1 $([System.Environment]::GetFolderPath("Startup"))