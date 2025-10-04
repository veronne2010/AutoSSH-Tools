#!/bin/bash

echo "Welcome to AutoSSH-Tools installer"
echo "This script will help you to create a desktop shortcut to open an SSH session to a remote PC"
echo "You will be asked to enter the following information:" 

echo "----------------------------------"
read -p "Assign an alias to remote PC: " pc_name
read -p "Enter the IP address of remote PC: " pc_ip
read -p "Enter the username of remote PC: " pc_user
echo "----------------------------------"

iconsdir="$HOME/.local/share/desktop-directories/icons"
mkdir -p "$iconsdir"
mkdir -p "$HOME/.local/share/desktop-directories"
mkdir -p "$HOME/.local/share/applications"

# Download the icon
cd "$iconsdir" || exit
wget -q https://raw.githubusercontent.com/veronne2010/AutoSSH-Tools/main/icons/ssh.png

# Create .directory file
cat <<EOF > "$HOME/.local/share/desktop-directories/sshshortcuts.directory"
[Desktop Entry]
Comment=
GenericName=sshshortcuts
Icon=$iconsdir/ssh.png
Name=SSH Shortcuts
Type=Directory
EOF

# Create .desktop shortcut
cat <<EOF > "$HOME/.local/share/applications/ssh-${pc_name}.desktop"
[Desktop Entry]
Comment=
Exec=ssh ${pc_user}@${pc_ip}
Name=SSH to ${pc_name}
NoDisplay=false
OnlyShowIn=KDE;
Categories=sshshortcuts;
Path=
PrefersNonDefaultGPU=false
StartupNotify=true
Terminal=true
TerminalOptions=
Type=Application
X-KDE-SubstituteUID=false
X-KDE-Username=
EOF

chmod +x "$HOME/.local/share/applications/ssh-${pc_name}.desktop"

echo "✅ SSH shortcut created successfully!"
echo "You can find it in the KDE application menu under 'SSH Shortcuts'."