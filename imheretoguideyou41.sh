#Adduser,update 1,upgrade 1,autoremove 1 
sudo adduser mark sudo && apt update -y && apt upgrade -y && apt autoremove 
#Non-free,contrib repos
apt-get install software-properties-common -y && add-apt-repository contrib -y && add-apt-repository non-free -y 
#Wifi b43
apt install firmware-b43-installer firmware-b43legacy-installer -y

# ocs-url,flatpak, softwares
apt install libqt5svg5 qml-module-qtquick-controls htop neofetch stacer gparted lightdm-gtk-greeter-settings -y
apt install flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#modules for ssh and more 
sudo apt install git python3 python3-pip php openssh-client -y 

