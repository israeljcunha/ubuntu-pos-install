#!/bin/bash
# figlet SysUpdate

newline="\n"
newlinefinal="\n\n"
tab="\t"

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' CLEAN AND ATUALIZER SYSTEM 
echo -e "${newline}"
echo -e ${tab}[#####--------------------------------------------] - 4%
sudo apt-get autoremove -y 1&> /dev/null 2&> /dev/null  

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 1 PARTE
echo -e "${newline}"
echo -e ${tab}[########-----------------------------------------] - 16%

sudo apt-get autoclean -y 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 2 PARTE
echo -e "${newline}"
echo -e ${tab}[################---------------------------------] - 32%

sudo apt-get clean -y 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' REPAIR PACKAGES
echo -e "${newline}"
echo -e ${tab}[####################-----------------------------] - 48%

sudo dpkg --configure -a 1&> /dev/null 2&> /dev/null
sudo apt-get install -f 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' CLEANING LIXEIRA
echo -e "${newline}"
echo -e ${tab}[######################---------------------------] - 52%

sudo rm -rf /home/israelcunha/.local/share/Trash/files/* 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' CLEANING THUMBNAILS
echo -e "${newline}"
echo -e ${tab}[########################-------------------------] - 60%

rm -vfr ~/.thumbnails/normal/* 1&> /dev/null 2&> /dev/null
rm -f ~/.cache/thumbnails/normal/* 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' UPDATE SYSTEM
echo -e "${newline}"
echo -e ${tab}[###############################------------------] - 70%

sudo apt-get update 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' UPGRADE SYSTEM
echo -e "${newline}"
echo -e ${tab}[#####################################------------] - 80%

sudo apt-get upgrade 1&> /dev/null 2&> /dev/null

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' INSTALL UPSYS
echo -e "${newline}"
echo -e ${tab}[############################################-----] - 90%

sleep 6s
sudo cp -r ./* /bin/

clear
figlet SysUpdate
echo -e "${newline}"
echo -e ${tab}'['$res']' THE END
echo -e "${newline}"
echo -e ${tab}[#################################################] - 100%

echo -e "${newlinefinal}"