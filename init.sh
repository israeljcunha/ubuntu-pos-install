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
echo "deb http://ppa.launchpad.net/viktor-krivak/pycharm/ubuntu zesty main" | sudo tee /etc/apt/sources.list.d/pycharm-ide.list
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install pycharm

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




