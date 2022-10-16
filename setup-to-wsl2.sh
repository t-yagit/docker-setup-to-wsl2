sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# apt-cache madison docker-ce
sudo apt-get install -y docker-ce=5:20.10.18~3-0~ubuntu-focal docker-ce-cli=5:20.10.18~3-0~ubuntu-focal containerd.io docker-compose-plugin
sudo cat <<EOF > /etc/docker/daemon.json
{
    "tls": false,
    "hosts": ["tcp://0.0.0.0:2375"],
    "experimental": true
}
EOF
sudo service docker stop
sudo service docker start
sudo gpasswd -a ${whoami} docker
sudo chgrp docker /var/run/docker.sock
exit