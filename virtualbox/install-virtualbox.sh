sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get -y install build-essential dkms unzip wget
echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee -a /etc/apt/sources.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-5.1
sudo usermod -aG vboxusers $USER
##test
sudo systemctl status vboxdrv
