curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt-get update
# apt-cache madison docker-ce
sudo apt-get install docker-ce=5:20.10.18~3-0~ubuntu-focal docker-ce-cli=5:20.10.18~3-0~ubuntu-focal containerd.io docker-compose-plugin
sudo service docker stop
sudo service docker start
sudo gpasswd -a ${whoami} docker
sudo chgrp docker /var/run/docker.sock
exit