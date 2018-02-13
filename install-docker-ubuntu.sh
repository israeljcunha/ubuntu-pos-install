echo "----------------------------------------------------------"
echo " INSTALl DOCKER "
echo "----------------------------------------------------------"

sudo apt-get install curl
curl -fsSL http://get.docker.com/ | sh

echo "----------------------------------------------------------"
docker --version

echo "----------------------------------------------------------"
echo " INIT SERVICE DOCKER"
echo "----------------------------------------------------------"
sudo /etc/init.d/docker start
sudo service docker start

echo "----------------------------------------------------------"
echo " EXECUTION CONTAINER DOCKER - Install System"
echo "----------------------------------------------------------"
sudo docker run -ti ubuntu /bin/bash


echo "----------------------------------------------------------"
echo "                            COMANDS                       "
echo "----------------------------------------------------------"
echo " docker ps => mostra os containers"
echo " docker run <nome_container>  => executa o container"
echo " docker run -ti ubuntu /bin/bash  => executa o container com terminal interativo"
echo " docker images  => mostra os containers locais"
echo " docker ps -a  => ultimas execuções"
echo " CTRL + P + Q - Sai e mantém o container ativo"
echo " CTRL + D - Fecha tudo"
echo " sudo docker attach <id_container> => abre o container rodando"
echo " docker create ubuntu - cria container sem interação imediata"
echo " docker stop/start/pause/unpause <id_container>"
echo " docker stats => atraz o consuno de hardware"
echo " docker top <id_container> => atraz os processos do container"
echo " docker logs <id_container> => atraz os logs do container"
echo " docker rm -f <id_container> => deletar container"
echo "----------------------------------------------------------"




