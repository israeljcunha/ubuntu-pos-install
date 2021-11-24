clear

echo "********************************************************************************************"
echo "	=> INSTALL PYCHARM 		"
echo "********************************************************************************************"
sudo apt-get update -y
sudo snap install pycharm-community --classic

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
echo "	=> INSTALL OTHERS APPS 		"
echo "********************************************************************************************"
sudo apt install net-tools
sudo apt-get install --fix-missing  
sudo apt-get update
sudo apt-get install traceroute
sudo apt-get install inetutils-traceroute
sudo apt-get update
sudo apt-get install python3 python3-venv python3-pip
