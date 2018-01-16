echo "********************************************************************************************"
echo "	=> INSTALL GOOGLE CHROME 		"
echo "********************************************************************************************"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
sudo apt-get update

echo "********************************************************************************************"
echo "	=> INSTALL PYCHARM 		"
echo "********************************************************************************************"
sudo apt-get update
sudo snap install pycharm-community --classic

echo "********************************************************************************************"
echo "	=> INSTALL SPOTIFY 		"
echo "********************************************************************************************"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D941
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

echo "********************************************************************************************"
echo "	=> INSTALL GITKRAKEN 		"
echo "********************************************************************************************"
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb

echo "********************************************************************************************"
echo "	=> INSTALL LATEX 		"
echo "********************************************************************************************"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -f
sudo apt-get autoremove
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get install texlive texlive-latex-extra texlive-lang-portuguese
sudo apt-get install texlive-math-extra
sudo apt-get install texlive-full

echo "********************************************************************************************"
echo "	=> INSTALL TEXSTUDIO 		"
echo "********************************************************************************************"
wget -c http://download.opensuse.org/repositories/home:/jsundermeyer/xUbuntu_12.04/amd64/texstudio-qt4_2.12.4-2_amd64.deb
sudo gdebi texstudio-qt4_2.12.4-2_amd64.deb

echo "********************************************************************************************"
echo "	=> INSTALL ATOM 		"
echo "********************************************************************************************"
sudo add-apt-repository ppa:webupd8team/atom -y && sudo apt-get update && sudo apt-get install atom -y

echo "********************************************************************************************"
echo "	=> INSTALL SQLITE_DB 		"
echo "********************************************************************************************"
sudo apt-get install sqlite3
sudo apt-get install libsqlite3-dev
sudo apt-get install sqlitebrowser

echo "********************************************************************************************"
echo "	=> INSTALL MEGA 		"
echo "********************************************************************************************"
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O megasync.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/nautilus-megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O nautilus-megasync.deb
sudo dpkg -i megasync.deb
sudo dpkg -i nautilus-megasync.deb
sudo apt-get install -f

echo "********************************************************************************************"
echo "	=> INSTALL EVERNOTE - MIXNOTE2 		"
echo "********************************************************************************************"
sudo add-apt-repository ppa:nixnote/nixnote2-daily
sudo apt-get update
sudo apt-get install nixnote2
sudo apt-get update

echo "********************************************************************************************"
echo "	=> INSTALL GIT 		"
echo "********************************************************************************************"
sudo apt-get install git
sudo apt-get update

echo "********************************************************************************************"
echo "	=> INSTALL VMWARE 		"
echo "********************************************************************************************"
wget https://download3.vmware.com/software/player/file/VMware-Player-14.1.1-7528167.x86_64.bundle?HashKey=d9f196c2c516c5faf9570b7cb258c705&params=%7B%22sourcefilesize%22%3A%22110.47+MB%22%2C%22dlgcode%22%3A%22PLAYER-1411%22%2C%22languagecode%22%3A%22en%22%2C%22source%22%3A%22DOWNLOADS%22%2C%22downloadtype%22%3A%22manual%22%2C%22eula%22%3A%22N%22%2C%22downloaduuid%22%3A%22f8e4679e-5132-471a-97cb-c52dc4e24310%22%2C%22purchased%22%3A%22N%22%2C%22dlgtype%22%3A%22Product+Binaries%22%2C%22productversion%22%3A%2214.1.1%22%2C%22productfamily%22%3A%22VMware+Workstation+Player%22%7D&AuthKey=1516058597_0465f2c6072703b0f72fc1a957605605
sudo chmod 777 VMware-Player-14.1.1-7528167.x86_64.bundle
sudo ./VMware-Player-14.1.1-7528167.x86_64.bundle
