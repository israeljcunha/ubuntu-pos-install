#!/bin/bash

if [ `whoami` = 'root' ]; then
	OPTION=$(whiptail --title "MENUN ACTION" --menu \
	"Choose the update method." 30 95 20 \
	"AUTOMATIC-UPDATE" "Shows only the load bar, without interaction." \
	"DOS-LOAGING" "Show process and load bar, without interaction." \
	"DOS-TITLE" "Shows all processes separated by title, with interaction." \
	"DOS" "Show all data, with interaction." \
	"INSTALL-ADTIONAL-SOFTWARES" "List of applications for installation." \
	"INSTALL-INIT-SOFTWARES" "List of applications for installation initial." \
	3>&1 1>&2 2>&3)

	exitstatus=$?
	if [ $exitstatus = 0 ]; then
		if [  $OPTION = "INSTALL-ADTIONAL-SOFTWARES" ]; then
			sudo chmod +x add_install.sh
			sudo ./add_install.sh
		elif [ $OPTION = "INSTALL-INIT-SOFTWARES" ]; then
			sudo chmod +x init_install.sh
			sudo ./init_install.sh
		elif [ $OPTION = "AUTOMATIC-UPDATE" ]; then
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

		elif [ $OPTION = "DOS-TITLE" ]; then

			res='	'PROCESS'	' 
			newline="----------------------------------------------------------------------------------------------"
			newlinefinal="\n\n"
			tab="\t"

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' CLEAN AND ATUALIZER SYSTEM 
			echo -e "${newline}"

			sudo apt-get autoremove 

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 1 PARTE
			echo -e "${newline}"

			sudo apt-get autoclean 

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' REMOVER PACOTES OBSOLETOS - 2 PARTE
			echo -e "${newline}"

			sudo apt-get clean 

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' REPAIR PACKAGES
			echo -e "${newline}"

			sudo dpkg --configure -a 
			sudo apt-get install -f 

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

			sudo apt-get update 

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' UPGRADE SYSTEM
			echo -e "${newline}"

			sudo apt-get upgrade 

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' CLEAN FINAL
			echo -e "${newline}"

			profile-cleaner f 

			echo -e "${newlinefinal}"
			echo -e "${newline}"
			echo -e ${tab}'['$res']' THE END - CLEAN AND ATUALIZER SYSTEM
			echo -e "${newline}"

			echo -e "${newlinefinal}"

		elif [ $OPTION = "DOS-LOAGING" ]; then

			res='	'PROCESS'	' 
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

			clear
			echo -e "${newline}"
			echo -e ${tab}'['$res']' CLEAN FINAL
			echo -e "${newline}"
			echo -e ${tab}[############################################-----] - 90%

			profile-cleaner f 1&> /dev/null 2&> /dev/null

			clear
			echo -e "${newline}"
			echo -e ${tab}'['$res']' THE END - CLEAN AND ATUALIZER SYSTEM
			echo -e "${newline}"
			echo -e ${tab}[#################################################] - 100%

			echo -e "${newlinefinal}"

		elif [ $OPTION = "DOS" ]; then

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
			profile-cleaner f 
		fi

	else

		whiptail --title "Process Error!" --msgbox "Process Canceled by the user.No action was taken." 8 78
		echo -e "\n\n----------------------------------------------------------------------------------------------"
		echo -e "\n\t\tProcess Error! \n\t\tProcess Canceled by the user. \n\t\tNo action was taken."
		echo -e "\n----------------------------------------------------------------------------------------------\n\n"
	fi
	
else
    whiptail --title "Process Error!" --msgbox "You must be root to continue the process, try again in the root environment." 8 78
	echo -e "\n\n----------------------------------------------------------------------------------------------"
	echo -e "\n\tYou must be root to continue the process, try again in the root environment."
	echo -e "\n----------------------------------------------------------------------------------------------\n\n"
fi