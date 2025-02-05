clear
echo -e '\e[1;37mUpdating packages...\e[0m'
sudo apt update
sudo apt upgrade -y
clear
echo -e '\e[1;37mInstalling packages...\e[0m'

clear
echo -e '\e[1;37mDownloading vscode...\e[0m'
wget -O vscode.deb https://vscode.download.prss.microsoft.com/dbazure/download/stable/5437499feb04f7a586f677b155b039bc2b3669eb/code_1.90.2-1718750608_arm64.deb
clear
echo -e '\e[1;37mInstalling vscode...\e[0m'
dpkg -i vscode.deb
chmod +rwx vscode.deb

clear
echo -e '\e[1;37mJust a moment...\e[0m'
sudo apt-get --fix-missing install -y
sudo apt --fix-broken install 
mkdir /home/quyen/code
chmod +rwx /home/quyen/code
sudo apt install ./vscode.deb
rm vscode.deb
clear
echo -e '\e[1;37mDone!\e[0m'
