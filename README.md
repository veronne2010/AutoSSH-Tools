# 🖥️ AutoSSH-Tools

AutoSSH-Tools is a simple Bash script designed to create desktop shortcuts for quickly opening SSH sessions to remote PCs. This tool is primarily intended for KDE but can be adapted for other Linux desktop environments. 🚀

## ✨ Features

* 🗂️ Create `.desktop` shortcuts for remote SSH sessions.
* 📥 Automatically downloads a SSH icon.
* 🏷️ Adds the shortcut to the applications menu under `SSH Shortcuts`.
* ⚡ Fully automated and easy to use.

## 🛠️ Requirements

* 🐧 Linux operating system
* 💻 Bash shell
* 📡 `wget` installed
* 🖥️ KDE Desktop Environment (tested), may work on other DEs

## 🚀 Installation & Usage

1. Clone or download this repository:

```bash
git clone https://github.com/veronne2010/AutoSSH-Tools.git
cd AutoSSH-Tools
```

2. Make the script executable:

```bash
chmod +x autosshtools.sh
```

3. Run the script:

```bash
./autosshtools.sh
```

4. Follow the prompts:

* ✏️ Assign an alias to the remote PC
* 🌐 Enter the IP address of the remote PC
* 👤 Enter the username of the remote PC

The script will automatically:

* 📥 Download the SSH icon
* 📁 Create the `.directory` file for KDE
* 🖱️ Create the `.desktop` shortcut in your applications menu
* ✅ Make the shortcut executable

## 📝 Notes

* The shortcut will appear in the KDE application menu under `SSH Shortcuts`. 📂
* Directories are created automatically if they do not exist:

  * `$HOME/.local/share/desktop-directories/icons`
  * `$HOME/.local/share/desktop-directories`
  * `$HOME/.local/share/applications`

## 📄 License

This project is licensed under the GNU GPLv3
