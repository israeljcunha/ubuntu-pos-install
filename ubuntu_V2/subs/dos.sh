sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get clean -y
sudo dpkg --configure -a
sudo apt-get install -f
sudo rm -rf /home/israelcunha/.local/share/Trash/files/*
rm -vfr ~/.thumbnails/normal/* 
rm -f ~/.cache/thumbnails/normal/* 1
sudo apt-get update -y
sudo apt-get upgrade -y
snap refresh --list
flatpak update