#!/bin/bash


echo "Welcome to AutoSSH-Tools installer"
echo "This script will help you to create a desktop shortcut to open an SSH session to a remote PC"
echo "You will be asked to enter the following information:" 

echo "----------------------------------"
read -p "Assign an alias to remote PC:" pc_name
read -p "Enter the IP address of remote PC:" pc_ip
read -p "Enter the username of remote PC:" pc_user
echo "----------------------------------"

iconsdir = /home/$USER/.local/share/desktop-directories/icons

# Download of the icon
cd $iconsdir
wget https://raw.githubusercontent.com/veronne2010/AutoSSH-Tools/main/icons/ssh.png

# Creation of the .directory file
touch /home/$USER/.local/share/desktop-directories/sshshortcuts.directory

# Installing .directory file
echo "[Desktop Entry]" > /home/$USER/.local/share/desktop-directories/sshshortcuts.directory
echo "Comment=" > /home/$USER/.local/share/desktop-directories/sshshortcuts.directory
echo "GenericName=sshshortcuts" > /home/$USER/.local/share/desktop-directories/sshshortcuts.directory
echo "Icon=/home/$USER/.local/share/desktop-directories/icons/ssh.png" > /home/$USER/.local/share/desktop-directories/sshshortcuts.directory
echo "Name=SSH Shortcuts" > /home/$USER/.local/share/desktop-directories/sshshortcuts.directory

# Creation of the .desktop file
touch /home/$USER/.local/share/applications/ssh-$pc_name.desktop

# Installing .desktop file
echo "[Desktop Entry]" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Comment=" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Exec=ssh" + $pc_ip + "-l" $pc_user > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Name= SSH to" $pc_name > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "NoDisplay=false" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "OnlyShowIn=KDE;" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Categories=sshshortcuts;" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Path=" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "PrefersNonDefaultGPU=false" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "StartupNotify=true" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Terminal=true" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "TerminalOptions=" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "Type=Application" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "X-KDE-SubstituteUID=false" > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
echo "X-KDE-Username="  > /home/$USER/.local/share/applications/ssh-$pc_name.desktop
