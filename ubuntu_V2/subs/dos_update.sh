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

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' UPGRADE APPS 
	echo -e "${newline}"

	sudo snap refresh --list
	sudo flatpak update -v
	sudo flatpak update
	flatpak uninstall --unused

	echo -e "${newlinefinal}"
	echo -e "${newline}"
	echo -e ${tab}'['$res']' THE END - CLEAN AND ATUALIZER SYSTEM
	echo -e "${newline}"

	echo -e "${newlinefinal}"