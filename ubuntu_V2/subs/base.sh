clear

echo "********************************************************************************************"
echo "	=> INSTALL CURSORES		"
echo "********************************************************************************************"
sudo apt install breeze-cursor-theme -y
sudo snap install oxygen-cursors -y

echo "********************************************************************************************"
echo "	=> INSTALL SYSTEM INFO 		"
echo "********************************************************************************************"
sudo apt install screenfetch -y
sudo apt install neofetch -y

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
echo "	=> INSTALL SPEEDTEST 		"
echo "********************************************************************************************"
sudo apt-get update -y
sudo apt install -f
sudo apt install speedtest-cli -y

echo "********************************************************************************************"
echo "	=> INSTALL ZSH 		"
echo "********************************************************************************************"
sudo apt install zsh -y
sudo apt install curl wget git -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
-rw-r--r--  1 tecmint tecmint  3538 Oct 27 02:40 .zshrc

echo "********************************************************************************************"
echo "	=> INSTALL DEBORPHAN		"
echo "********************************************************************************************"
sudo apt-get update -y
sudo apt-get install deborphan -y

echo "********************************************************************************************"
echo "	=> INSTALL PLUMA		"
echo "********************************************************************************************"
sudo apt-get update -y
sudo apt-get install pluma -y

echo "********************************************************************************************"
echo "	=> INSTALL flathub 		"
echo "********************************************************************************************"

sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install -f -y
sudo apt install update -y
sudo apt install upgrade -y

echo "********************************************************************************************"
echo "	=> INSTALL TestDisk 		"
echo "********************************************************************************************"
sudo apt -y install testdiskf
sudo apt install net-tools
sudo apt-get install --fix-missing  
sudo apt-get update
sudo apt-get install traceroute
sudo apt-get install inetutils-traceroute
sudo apt-get update
sudo apt-get install python3 python3-venv python3-pip
sudo pluma /home/israel/.ssh/id_rsa.pub

echo "********************************************************************************************"
echo "	=> INSTALL OTHERS FLATHUB APPS  		"
echo "********************************************************************************************"

flatpak install flathub org.audacityteam.Audacity
flatpak install flathub io.brackets.Brackets
flatpak install flathub org.gnome.Builder
flatpak install flathub io.dbeaver.DBeaverCommunity
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
flatpak install flathub com.spotify.Client
flatpak install flathub com.bitwarden.desktop
flatpak install flathub org.videolan.VLC
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.inkscape.Inkscape
flatpak install flathub org.darktable.Darktable
flatpak install flathub org.kde.kdenlive
flatpak install flathub edu.mit.Scratch
flatpak install flathub org.texstudio.TeXstudio
flatpak install flathub ca.desrt.dconf-editor
flatpak install flathub org.gnome.Firmware
flatpak install flathub com.skype.Client

echo "********************************************************************************************"
echo "	=> INSTALL OTHERS SNAP APPS 		"
echo "********************************************************************************************"

sudo apt install -f
sudo snap install brave
sudo snap install pycharm-community --classic
sudo snap install sublime-text --classic
sudo snap install postman
sudo snap install insomnia
sudo snap install jupyter
sudo snap install code --classic
sudo snap install sqlitebrowser
sudo snap install notepadqq
sudo apt install -f
sudo apt-get install sl
sudo apt-get install figlet
sudo apt-get install cowsay
sudo apt install ubuntu-wallpapers ubuntustudio-wallpapers -y
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-restricted-extras libavcodec-extra -y
sudo apt install libdvdcss2 -y
sudo dpkg-reconfigure libdvd-dpkg -y
sudo apt install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip plzip
sudo apt install hardinfo
sudo apt install htop

echo "----------------------------------------------------------"
echo " INSTALl DOCKER "
echo "----------------------------------------------------------"

sudo apt-get install curl
curl -fsSL http://get.docker.com/ | sh

echo "----------------------------------------------------------"
docker --version

echo "----------------------------------------------------------"
echo " INIT SERVICE DOCKER"
echo "----------------------------------------------------------"
sudo /etc/init.d/docker start
sudo service docker start

echo "----------------------------------------------------------"
echo " EXECUTION CONTAINER DOCKER - Install System"
echo "----------------------------------------------------------"
sudo docker run -ti ubuntu /bin/bash
