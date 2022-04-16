sudo dpkg --configure -a -y
sudo apt-get update -y
sudo apt-get -f install -y
sudo apt-get full-upgrade -y
sudo apt-get install --reinstall ubuntu-desktop -y
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo dconf reset -f /org/gnome/
sudo dconf reset -f /
sudo reboot