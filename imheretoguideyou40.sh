#Adduser,update 1,upgrade 1,autoremove 1 
sudo adduser mark sudo && apt update -y && apt upgrade -y && apt autoremove 
#Non-free,contrib repos
apt-get install software-properties-common -y && add-apt-repository contrib -y && add-apt-repository non-free -y 
#Wifi b43
apt install firmware-b43-installer firmware-b43legacy-installer -y

# ocs-url,flatpak, softwares
apt install libqt5svg5 qml-module-qtquick-controls htop neofetch stacer gparted lightdm-gtk-greeter-settings -y
apt install flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#RTL8192eu driver
apt-get install git linux-headers-generic build-essential dkms -y && git clone https://github.com/Mange/rtl8192eu-linux-driver
cd rtl8192eu-linux-driver
sudo dkms add . && dkms install rtl8192eu/1.0 -y 
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf && echo -e "8192eu\n\nloop" | sudo tee /etc/modules && echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/8192eu.conf
sudo update-grub; sudo update-initramfs -u
 
