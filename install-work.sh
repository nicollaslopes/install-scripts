#### FAZER DOWNLOAD DO >>> VSCODE, DISCORD, OBSIDIAN, CHROME PELO FIREFOX !!! #########
## MOVER ttf PARA DOCUMENTS <<<<<<<<<<

RED="\e[31m"
ENDCOLOR="\e[0m"

echo -e "${RED} >>>>>>>>>>>      Updating the system... ${ENDCOLOR}"
sudo apt update -y

echo -e "${RED} >>>>>>>>>>>      Installing curl... ${ENDCOLOR}"
sudo apt install curl -y

echo -e "${RED} >>>>>>>>>>>      Installing Brave Browser... ${ENDCOLOR}"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

echo -e "${RED} >>>>>>>>>>>      Installing git... ${ENDCOLOR}"
sudo apt install git -y

echo -e "${RED} >>>>>>>>>>>      Installing net-tools... ${ENDCOLOR}"
sudo apt install net-tools -y

echo -e "${RED} >>>>>>>>>>>      Installing htop... ${ENDCOLOR}"
sudo apt install htop -y

echo -e "${RED} >>>>>>>>>>>      Installing neofetch... ${ENDCOLOR}"
sudo apt install neofetch -y

echo -e "${RED} >>>>>>>>>>>      Installing spotify... ${ENDCOLOR}"
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

echo -e "${RED} >>>>>>>>>>>      Installing remmina... ${ENDCOLOR}"
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update -y
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret

echo -e "${RED} >>>>>>>>>>>      Installing vscode... ${ENDCOLOR}"
chmod +x ~/Downloads/code*
sudo dpkg -i ~/Downloads/code*

echo -e "${RED} >>>>>>>>>>>      Installing discord... ${ENDCOLOR}"
chmod +x ~/Downloads/disc*
sudo dpkg -i ~/Downloads/disc*

echo -e "${RED} >>>>>>>>>>>      Installing obsidian... ${ENDCOLOR}"
chmod +x ~/Downloads/obsi*
sudo dpkg -i ~/Downloads/obsi*

echo -e "${RED} >>>>>>>>>>>      Installing insomnia... ${ENDCOLOR}"
chmod +x ~/Downloads/Inso*
sudo dpkg -i ~/Downloads/Inso*

echo -e "${RED} >>>>>>>>>>>      Installing chrome... ${ENDCOLOR}"
chmod +x ~/Downloads/google-chrom*
sudo dpkg -i ~/Downloads/google-chrom*

echo -e "${RED} >>>>>>>>>>>      Installing docker... ${ENDCOLOR}"
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker ${USER}

echo -e "${RED} >>>>>>>>>>>      Creating folder to fonts... ${ENDCOLOR}"
mkdir ~/.local/share/fonts
cd ~/Documents/ttf
cp * ~/.local/share/fonts
fc-cache -f -v

echo -e "${RED} >>>>>>>>>>>      Configuring dock and terminal... ${ENDCOLOR}"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.mutter center-new-windows true


echo -e "${RED} >>>>>>>>>>>      Configuring pip e installing dependencies... ${ENDCOLOR}"
sudo apt install python3-pip
sudo rm /usr/lib/python3.12/EXTERNALLY-MANAGED
python3 -m pip install --upgrade pip setuptools
python3 -m pip install pyautogui
sudo apt install build-essential python3-dev
sudo apt-get install python3-tk python3-dev
python3 -m pip install plyer


echo -e "${RED} >>>>>>>>>>>      Installing zsh... ${ENDCOLOR}"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.mutter center-new-windows true
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


