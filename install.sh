#### FAZER DOWNLOAD DO >>> VSCODE, DISCORD, OBSIDIAN <<< PELO FIREFOX !!! #########

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

echo -e "${RED} >>>>>>>>>>>      Installing PHP 8.3 and Composer... ${ENDCOLOR}"
sudo apt install php8.3 -y
sudo apt-get install -y php8.3-mysql php8.3-cli php8.3-common php8.3-mysql php8.3-zip php8.3-gd php8.3-mbstring php8.3-curl php8.3-xml php8.3-bcmath
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

echo -e "${RED} >>>>>>>>>>>      Installing spotify... ${ENDCOLOR}"
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

echo -e "${RED} >>>>>>>>>>>      Installing vscode... ${ENDCOLOR}"
chmod +x ~/Downloads/code*
sudo dpkg -i ~/Downloads/code*

echo -e "${RED} >>>>>>>>>>>      Installing discord... ${ENDCOLOR}"
chmod +x ~/Downloads/disc*
sudo dpkg -i ~/Downloads/disc*

echo -e "${RED} >>>>>>>>>>>      Installing obsidian... ${ENDCOLOR}"
chmod +x ~/Downloads/obsi*
sudo dpkg -i ~/Downloads/obsi*

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
cd ~/Documents/TTF
cp * ~/.local/share/fonts
fc-cache -f -v

echo -e "${RED} >>>>>>>>>>>      Installing ANKI.. ${ENDCOLOR}"
sudo apt-get install libxcb-cursor0
cd ~/Documents/anki
chmod +x install.sh
sudo ./install.sh

echo -e "${RED} >>>>>>>>>>>      Configuring dock and terminal... ${ENDCOLOR}"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.mutter center-new-windows true

