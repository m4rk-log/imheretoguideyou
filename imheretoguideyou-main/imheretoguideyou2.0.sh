#update,upgrade, autoremoves
apt update -y && apt upgrade -y && apt autoremove -y

#adds sudo privelge to user (mark), and modifies the mirrors
sudo adduser mark sudo && apt-get install software-properties-common -y && add-apt-repository contrib -y && add apt-apt-repository non-free

#Wi-Fi Driver for Broadcom b43,Git,RTL8192eu driver 
apt install firmware-b43-installer -y firmware-b43legacy-installer -y git -y 
apt-get install git linux-headers-generic build-essential dkms -y && git clone https://github.com/Mange/rtl8192eu-linux-driver
cd rtl8192eu-linux-driver
sudo dkms add . && dkms install rtl8192eu/1.0 -y 
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf && echo -e "8192eu\n\nloop" | sudo tee /etc/modules && echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/8192eu.conf
sudo update-grub; sudo update-initramfs -u

#Git,ocs and other softwares,flatpak
apt install libqt5svg5 qml-module-qtquick-controls -y apt update -y && apt upgrade -y && apt autoremove -y 
git clone https://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@github.com/m4rked-proxy/imheretoguideyou.git && cd imheretoguideyou/ && sudo dpkg -i ocs-url_3.1.0-0ubuntu1_amd64.deb
apt install htop stacer neofetch -y && apt install gnome-software gparted timeshift lightdm-gtk-greeter-settings -y 
apt install flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

systemctl reboot
