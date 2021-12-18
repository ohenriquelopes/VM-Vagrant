 sudo apt-get update
 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

 apt-get update -y
 apt-get install -y docker-ce docker-ce-cli containerd.io


 usermod -aG docker vagrant

 systemctl enable docker

 systemctl start docker

 reboot