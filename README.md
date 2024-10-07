# docker


# Add install docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update




sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo apt install docker-compose -y

sudo docker run hello-world

sudo groupadd docker
sudo usermod -aG docker $USER

sudo usermod -aG docker ubuntu








sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce













# run cmds
docker-compose up

docker-compose down  
docker-compose build --no-cache  
docker-compose up -d



docker exec -it static-site /bin/bash

docker stop <container-name>
docker rm <container-name>

docker-compose up --build
docker-compose up --build service_name


alias de='docker exec -it'
de static-site /bin/bash




docker run -itd --name ub -p 8080:80 ubuntu:latest


# Remove Docker image using image ID
docker rmi image_id

# Remove Docker image using image name
docker rmi image_name







