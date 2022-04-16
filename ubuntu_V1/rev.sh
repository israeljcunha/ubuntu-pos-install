sudo apt-get clean
sudo apt-get install -f
sudo dpkg --configure -a
sudo apt-get update
sudo rm /var/lib/apt/lists/* -vf
sudo apt-get update
sudo dpkg --configure -a
sudo apt-get update
sudo apt-get --fix-broken install

sudo apt-get update
sudo apt-get upgrade
