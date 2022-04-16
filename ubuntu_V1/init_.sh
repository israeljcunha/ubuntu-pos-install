clear


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
flatpak install flathub io.bit3.WhatsAppQT
sudo apt install zsh
sudo apt install curl wget git
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
-rw-r--r--  1 tecmint tecmint  3538 Oct 27 02:40 .zshrc

