sudo apt-get clean  -y
sudo apt-get install -f
sudo dpkg --configure -a
sudo apt-get update  -y
sudo rm /var/lib/apt/lists/* -vf
sudo apt-get update  -y
sudo dpkg --configure -a
sudo apt-get update  -y
sudo apt-get --fix-broken install  -y
sudo apt-get update  -y
sudo apt-get upgrade  -y

echo -e "${newlinefinal}" 
echo -e "${newline}"
echo -e ${tab}'['$res']' Deleting Orphaned Libraries
echo -e "${newline}"
sudo deborphan | xargs sudo apt-get -y remove --purge
echo -e "${newlinefinal}"
echo -e "${newline}"
echo -e ${tab}'['$res']' Removing unnecessary packages
echo -e "${newline}"
sudo deborphan --guess-data | xargs sudo apt-get -y remove --purge    
echo -e "${newlinefinal}"
echo -e "${newline}"
echo -e ${tab}'['$res']' Updating system packages
echo -e "${newline}"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo rm -rf /var/cache/snapd  
sudo apt-get autoremove -y

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