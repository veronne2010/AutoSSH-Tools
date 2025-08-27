# AutoSSH-Tools

> Minimal Python script to quickly assemble and copy an OpenSSH command.

---

## Why AutoSSH-Tools

AutoSSH-Tools was created out of the need to **quickly** generate simple OpenSSH commands without typing them manually every time.

* ⌨️ Step‑by‑step prompt for IP and username
* 🖥️ Prints the `ssh` command
* 📋 Optionally copies the result to clipboard

> Goal: less friction between you and your SSH connection.

---

## Status

* ✅ **MVP working** (see code below)
* 🚧 Further improvements planned (see Roadmap)

---

## Current Code (MVP)

```python
import pyperclip

# Generic
space = " "

# Access data
ip = input("Enter IP Address: ")
user = input("Enter Username: ")

# Command parts
comcommand1stpart = "ssh" + space
chiocciola = "@"

# Command assembly
comandossh = comcommand1stpart + user + chiocciola + ip
print(comandossh)

# Copy to clipboard
while True:
    copy_input = input("Is the result above correct? (Y/n): ")
    if copy_input.lower() == "y":
        pyperclip.copy(comandossh)
        print("Command copied to clipboard")
        break
    elif copy_input.lower() == "n":
        print("If you think the result is incorrect, restart the script")
        break
    else:
        print("Invalid response, command not copied,")
```

---

## Installation

> Requirements: **Python 3** and **OpenSSH** installed on the system (`ssh`).

**Linux / macOS**

```bash
# Clone the repo
git clone https://github.com/<user>/AutoSSH-Tools.git
cd AutoSSH-Tools

# (Optional) create venv
python -m venv .venv && source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run
python autossh.py
```

**Windows (PowerShell)**

```powershell
# Clone the repo
git clone https://github.com/<user>/AutoSSH-Tools.git
cd AutoSSH-Tools

# (Optional) virtual env
py -m venv .venv; .\.venv\Scripts\Activate.ps1

# Dependencies
pip install -r requirements.txt

# Run
py autossh.py
```

---

## Roadmap

* [x] **Basic script** (generate command + copy to clipboard)
* [ ] **TUI version** (interactive terminal interface)
* [ ] **TUI** with auto‑open terminal and run immediately
* [ ] **GUI app**
* [ ] **GUI** with integrated log and run features
* [ ] Export/import profiles
* [ ] Guided `scp`/`sftp` support

---

## Contributing

Pull requests and issues are welcome!

* Open an **issue** for bugs/features.
* For PRs: keep the code clean, add tests when possible, and update docs.

---

## License

```
GNU GENERAL PUBLIC LICENSE
Version 3, 29 June 2007
```

---

## Credits

Inspired by classic SSH aliases and quick‑tunnel generators that saved us in production.
