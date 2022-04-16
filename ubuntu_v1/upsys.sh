#!/bin/bash

res='	'PROCESS'	' 


set_swap(){
	sudo swapon --show
	free -h
	df -h
	sudo fallocate -l 20G /swapfile
	ls -lh /swapfile
	-rw-r--r-- 1 root root 20.0G Apr 25 11:14 /swapfile
	sudo chmod 600 /swapfile
	ls -lh /swapfile
	sudo mkswap /swapfile
	sudo swapon /swapfile
	sudo swapon --show
	free -h
	sudo cp /etc/fstab /etc/fstab.bak
	echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
	cat /proc/sys/vm/swappiness
	sudo sysctl vm.swappiness=10
	sudo pluma /etc/sysctl.conf


	cat /proc/sys/vm/vfs_cache_pressure
	sudo sysctl vm.vfs_cache_pressure=50
	sudo pluma /etc/sysctl.conf
}


Initial_Install(){

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo "	=> INSTALL GIT 		"
	echo -e "${newline}"
	sudo apt-get install git -y

	DOS_Update

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo "	=> INSTALL LATEX 		"
	echo -e "${newline}"
	sudo apt-get install texlive texlive-latex-extra texlive-lang-portuguese -y
	sudo apt-get install texlive-math-extra -y
	sudo apt-get install texlive-full -y

	DOS_Update

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo "	=> INSTALL DEBORPHAN		"
	echo -e "${newline}"
	sudo apt-get install deborphan -y
	sudo apt-get install gtkorphan -y

	DOS_Update

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo "	=> INSTALL GOOGLE CHROME 		"
	echo -e "${newline}"
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb 

	DOS_Update
	sudo apt install screenfetch

	sudo apt install breeze-cursor-theme
	sudo snap install oxygen-cursors

	echo "********************************************************************************************"
	echo "	=> INSTALL LATEX 		"
	echo "********************************************************************************************"
	sudo apt-get update -y
	sudo apt-get upgrade -y
	sudo apt-get install -f -y
	sudo apt-get autoremove -y
	sudo apt-get clean -y
	sudo apt-get autoclean -y
	sudo apt-get install texlive texlive-latex-extra texlive-lang-portuguese -y
	sudo apt-get install texlive-math-extra -y
	sudo apt-get install texlive-full -y


	echo "********************************************************************************************"
	echo "	=> INSTALL ATOM 		"
	echo "********************************************************************************************"
	sudo apt-get update -y
	sudo apt-get install atom -y

	echo "********************************************************************************************"
	echo "	=> INSTALL SQLITE_DB 		"
	echo "********************************************************************************************"
	sudo apt-get install sqlite3 -y
	sudo apt-get install libsqlite3-dev -y
	sudo apt-get install sqlitebrowser -y


	echo "********************************************************************************************"
	echo "	=> INSTALL EVERNOTE - MIXNOTE2 		"
	echo "********************************************************************************************"
	sudo apt-get update -y
	sudo apt-get install nixnote2 -y
	sudo apt-get update -y

	echo "********************************************************************************************"
	echo "	=> INSTALL GIT 		"
	echo "********************************************************************************************"
	sudo apt-get install git -y
	sudo apt-get update -y


	echo "********************************************************************************************"
	echo "	=> INSTALL NOTEPAD 		"
	echo "********************************************************************************************"

	sudo apt-get update -y 
	sudo apt-get install notepadqq -y

	echo "********************************************************************************************"
	echo "	=> INSTALL Other APPS 		"
	echo "********************************************************************************************"

	sudo apt install zsh
	sudo apt install curl wget git
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	-rw-r--r--  1 tecmint tecmint  3538 Oct 27 02:40 .zshrc

	sudo apt install -f

	sudo apt install speedtest-cli
	sudo snap install brave
	sudo snap install pycharm-community --classic
	sudo snap install sublime-text --classic
	sudo snap install postman
	sudo snap install insomnia
	sudo snap install jupyter
	sudo snap install code --classic
	sudo snap install dbeaver-ce
	sudo snap install sqlitebrowser
	sudo snap install notepadqq

	sudo apt install -f


	echo "********************************************************************************************"
	echo "	=> INSTALL flathub 		"
	echo "********************************************************************************************"

	sudo apt install flatpak
	sudo apt install gnome-software-plugin-flatpak
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


	echo "********************************************************************************************"
	echo "	=> INSTALL flathub software 		"
	echo "********************************************************************************************"

	flatpak install flathub org.audacityteam.Audacity
	flatpak install flathub io.brackets.Brackets
	flatpak install flathub org.gnome.Builder
	# flatpak install flathub io.dbeaver.DBeaverCommunity
	flatpak install flathub io.github.gitahead.GitAhead
	flatpak install flathub io.github.shiftey.Desktop
	flatpak install flathub com.jgraph.drawio.desktop
	flatpak install flathub com.discordapp.Discord
	flatpak install flathub com.valvesoftware.Steam
	flatpak install flathub org.telegram.desktop
	flatpak install flathub us.zoom.Zoom
	flatpak install flathub io.github.wereturtle.ghostwriter
	flatpak install flathub com.github.marktext.marktext
	flatpak install flathub net.xmind.ZEN
	flatpak install flathub com.gitlab.davem.ClamTk
	flatpak install flathub nz.mega.MEGAsync
	flatpak install flathub io.bit3.WhatsAppQT

	echo "********************************************************************************************"
	echo "	=> INSTALL SWAP		"
	echo "********************************************************************************************"

	set_swap
}


DOS_Update(){

	newline="----------------------------------------------------------------------------------------------"
	newlinefinal="\n\n"
	tab="\t"

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' CLEAN AND ATUALIZER SYSTEM 
	echo -e "${newline}"

	sudo apt-get autoremove -y
    sudo apt-get --purge autoremove -y

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 1 PARTE
	echo -e "${newline}"

	sudo apt-get autoclean -y 

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 2 PARTE
	echo -e "${newline}"

	sudo apt-get clean -y

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' REPAIR PACKAGES
	echo -e "${newline}"

	sudo dpkg --configure -a 
	sudo apt-get install -f -y
	sudo apt-get -f install -y

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' CLEANING LIXEIRA
	echo -e "${newline}"

	sudo rm -rf /home/israelcunha/.local/share/Trash/files/* 

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' CLEANING THUMBNAILS
	echo -e "${newline}"

	rm -vfr ~/.thumbnails/normal/* 
	rm -f ~/.cache/thumbnails/normal/* 

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' UPDATE SYSTEM
	echo -e "${newline}"

	sudo apt-get update -y

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' UPGRADE SYSTEM
	echo -e "${newline}"

	sudo apt-get upgrade -y

	# echo -e "${newlinefinal}"
	# echo -e "${newline}"
	# echo -e ${tab}'['$res']' CLEAN FINAL
	# echo -e "${newline}"

	# profile-cleaner f 

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' THE END - CLEAN AND ATUALIZER SYSTEM
	echo -e "${newline}"

	echo -e "${newlinefinal}"

	Orfhan_PPA_Cleanning

}


Orfhan_PPA_Cleanning(){

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

	sudo apt-get update 
	sudo apt-get upgrade 

	sudo apt-get full-upgrade
	sudo rm -rf /var/cache/snapd  
	sudo apt-get autoremove
}


DOS_LOAGING(){

	newline="\n"
	newlinefinal="\n\n"
	tab="\t"

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' CLEAN AND ATUALIZER SYSTEM 
	echo -e "${newline}"
	echo -e ${tab}[#####--------------------------------------------] - 4%

	sudo apt-get autoremove -y 1&> /dev/null 2&> /dev/null 

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 1 PARTE
	echo -e "${newline}"
	echo -e ${tab}[########-----------------------------------------] - 16%

	sudo apt-get autoclean -y 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 2 PARTE
	echo -e "${newline}"
	echo -e ${tab}[################---------------------------------] - 32%

	sudo apt-get clean -y 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' REPAIR PACKAGES
	echo -e "${newline}"
	echo -e ${tab}[####################-----------------------------] - 48%

	sudo dpkg --configure -a 1&> /dev/null 2&> /dev/null
	sudo apt-get install -f 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' CLEANING LIXEIRA
	echo -e "${newline}"
	echo -e ${tab}[######################---------------------------] - 52%

	sudo rm -rf /home/israelcunha/.local/share/Trash/files/* 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' CLEANING THUMBNAILS
	echo -e "${newline}"
	echo -e ${tab}[########################-------------------------] - 60%

	rm -vfr ~/.thumbnails/normal/* 1&> /dev/null 2&> /dev/null
	rm -f ~/.cache/thumbnails/normal/* 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' UPDATE SYSTEM
	echo -e "${newline}"
	echo -e ${tab}[###############################------------------] - 70%

	sudo apt-get update 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' UPGRADE SYSTEM
	echo -e "${newline}"
	echo -e ${tab}[#####################################------------] - 80%

	sudo apt-get upgrade 1&> /dev/null 2&> /dev/null

	# clear
	# echo -e "${newline}"
	# echo -e ${tab}'['$res']' CLEAN FINAL
	# echo -e "${newline}"
	# echo -e ${tab}[############################################-----] - 90%

	# profile-cleaner f 1&> /dev/null 2&> /dev/null

	clear
	echo -e "${newline}"
	echo -e ${tab}'['$res']' THE END - CLEAN AND ATUALIZER SYSTEM
	echo -e "${newline}"
	echo -e ${tab}[#################################################] - 100%

	echo -e "${newlinefinal}"
}


DOS(){

	sudo apt-get autoremove  
	sudo apt-get autoclean 
	sudo apt-get clean
	sudo dpkg --configure -a
	sudo apt-get install -f
	sudo rm -rf /home/israelcunha/.local/share/Trash/files/* 
	rm -vfr ~/.thumbnails/normal/* 
	rm -f ~/.cache/thumbnails/normal/* 1
	sudo apt-get update 
	sudo apt-get upgrade 
	# profile-cleaner f 
	Orfhan_PPA_Cleanning
	
}


ActiveFirewall(){

	echo -e "${newlinefinal}" 
	echo -e "${newline}"
	echo -e "--------------------------------------------------------------------------"
	echo -e "							FIREWALL STATUS 							   "
	echo -e "--------------------------------------------------------------------------"
	sudo ufw status
	echo -e "${newline}"
	echo -e "--------------------------------------------------------------------------"
	echo -e "							FIREWALL ENABLE 							   "
	echo -e "--------------------------------------------------------------------------"
	sudo ufw enable
	echo -e "${newline}"
	echo -e "--------------------------------------------------------------------------"
	echo -e "						FIREWALL ADD SSH RULES							   "
	echo -e "--------------------------------------------------------------------------"
	sudo ufw allow ssh
	echo -e "${newline}"
	echo -e "--------------------------------------------------------------------------"
	echo -e "						    FIREWALL FINISH								   "
	echo -e "--------------------------------------------------------------------------"
	echo -e "${newlinefinal}" 
	echo -e "${newline}"

}


Internet_Test() {

	ping www.google.com.br -c 1 >/dev/null; 

	if [ "$?" = "0" ] ;
	then
		echo -e "${newlinefinal}" 
		echo -e "${newline}"
	    echo "==> Conexão Estável		";
	    echo -e "${newline}"
	    echo "==> Teste de Conexão - SPEEDTEST	";
		echo -e "${newline}"
		speedtest-cli
		echo -e "${newline}"

	else
		echo -e "${newlinefinal}" 
		echo -e "${newline}"
	    echo "==> Conexão Instável. 	"
	    echo -e "${newline}"
	fi

}


AUTOMATIC_UPDATE(){
	{
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
		echo 100
		profile-cleaner f 1&> /dev/null 2&> /dev/null

	} | whiptail --gauge "Please wait while the system updates..." 6 50 0

	whiptail --title "Process completed!" --msgbox "The upgrade process has been completed, now the computer is clean and up to date." 8 78
}




if [ `whoami` = 'root' ]; then

	while [[ $exitstatus -le "EXIT" ]]; do

		OPTION=$(whiptail --title "MENU ACTION" --menu \
		"Choose the update method." 30 95 20 \
		"AUTOMATIC-UPDATE" "Shows only the load bar, without interaction." \
		"DOS-LOAGING" "Show process and load bar, without interaction." \
		"DOS-TITLE" "Shows all processes separated by title, with interaction." \
		"DOS" "Show all data, with interaction." \
		"Orfhan-PPA-Cleanning" "List of applications for installation." \
		"INSTALL-INIT-SOFTWARES" "List of applications for installation initial." \
		"SPEED TEST" "Speed Test Network." \
		"FIREWALL" "Active firewall and add ssh rules". \
		"RECOVERY" "Recovery Files By Photorec (testdisk) ". \
		3>&1 1>&2 2>&3)

		exitstatus=$?
		

		if [ $exitstatus = 0 ]; then

			case $OPTION in

			"Orfhan-PPA-Cleanning")
				Orfhan_PPA_Cleanning;;

			"INSTALL-INIT-SOFTWARES")
				Initial_Install;;

			"AUTOMATIC-UPDATE")
				AUTOMATIC_UPDATE;;

			"DOS-TITLE")
				DOS_Update;;

			"DOS-LOAGING")
				DOS_LOAGING;;

			"DOS")
				DOS;;

			"SPEED TEST")
				Internet_Test;;

			"FIREWALL")
				ActiveFirewall;;

			"RECOVERY")
				sudo photorec;;

			esac
		fi

	done
	
else
    whiptail --title "Process Error!" --msgbox "You must be root to continue the process, try again in the root environment." 8 78
	echo -e "\n\n----------------------------------------------------------------------------------------------"
	echo -e "\n\tYou must be root to continue the process, try again in the root environment."
	echo -e "\n----------------------------------------------------------------------------------------------\n\n"
fi


echo -e "\n----------------------------------------------------------------------------------------------"
echo -e "\n\t\t\t\t SYSTEM INFORMATION		"
echo -e "\n----------------------------------------------------------------------------------------------\n"
screenfetch


