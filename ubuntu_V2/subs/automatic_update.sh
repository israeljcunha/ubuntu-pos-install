sudo apt-get autoremove -y 1&> /dev/null 2&> /dev/null 
echo 10
sudo apt-get autoclean -y 1&> /dev/null 2&> /dev/null
echo 20
sudo apt-get clean -y 1&> /dev/null 2&> /dev/null
echo 30
sudo dpkg --configure -a 1&> /dev/null 2&> /dev/null
echo 40
sudo apt-get install -f -y 1&> /dev/null 2&> /dev/null
echo 50
sudo rm -rf /home/israelcunha/.local/share/Trash/files/* 1&> /dev/null 2&> /dev/null
echo 60
rm -vfr ~/.thumbnails/normal/* 1&> /dev/null 2&> /dev/null
echo 70
rm -f ~/.cache/thumbnails/normal/* 1&> /dev/null 2&> /dev/null
echo 80
sudo apt-get update -y  1&> /dev/null 2&> /dev/null
echo 90
sudo apt-get upgrade -y  1&> /dev/null 2&> /dev/null
snap refresh --list
flatpak update
echo 100
profile-cleaner f 1&> /dev/null 2&> /dev/null