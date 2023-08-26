#update,upgrade etc.
apt update -y && apt upgrade -y && apt autoremove
#sudo privilage,repo non-free,contrib
sudo adduser mark sudo && apt-get install software-properties-common -y && add-apt-repository contrib -y && add-apt-repository non-free && apt install firmware-b43-installer htop stacer gparted gnome-software -y && apt install libqt5svg5 qml-module-qtquick-controls flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt install git

