 
 #Atualiza o sistema e instala as dependencias
 sudo apt-get update
 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Adicionando chave para o repositorio oficial docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -


# Adicionando o repositorio as fontes do apt
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


 apt-get update -y
 apt-get install -y docker-ce docker-ce-cli containerd.io

# Adicionando usuario ao grupo - evita digitar sudo em toda execução do Docker
 usermod -aG docker vagrant


 systemctl enable docker

 systemctl start docker

 reboot