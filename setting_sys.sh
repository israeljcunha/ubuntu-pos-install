#!/bin/bash

res='	'PROCESS'	' 

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

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo "	=> INSTALL BRAVE BROWSER	"
	echo -e "${newline}"
	sudo apt install apt-transport-https curl
	curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
	echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update
	sudo apt install brave-browser

	DOS_Update
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

