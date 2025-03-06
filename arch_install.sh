#Made By conexion 2025 github: https://github.com/xconexionx
#This is free software

clear
echo "Warning! This script is slow. Starting Arch Install for ARM in 3 seconds."
sleep 3
pkg install wget -y
pkg install proot -y
cd
mkdir ~/arch2
cd ~/arch2
wget http://os.archlinuxarm.org/os/ArchLinuxARM-am33x-latest.tar.gz
tar -xzf ArchLinuxARM-am33x-latest.tar.gz
rm ArchLinuxARM-am33x-latest.tar.gz
echo -e "unset LD_PRELOAD\nproot -r ~/arch2 -0 -b /proc:/proc -b /sys:/sys" > $PREFIX/bin/start-arch
chmod +x $PREFIX/bin/start-arch
clear
echo "Install complete! Run the start-arch command to launch arch!"
