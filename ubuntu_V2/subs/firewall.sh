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
# sudo pluma /etc/default/grub
# GRUB_CMDLINE_LINUX="ipv6.disable=1"
# sudo update-grub2
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


sudo gedit /etc/default/grub && GRUB_CMDLINE_LINUX="ipv6.disable=1" && sudo update-grub2