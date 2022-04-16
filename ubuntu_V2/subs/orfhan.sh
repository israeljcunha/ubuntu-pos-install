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