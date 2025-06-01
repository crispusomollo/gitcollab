# 🚀 IGWAT – *Interactive Git Workflow Assistant for Teams*


[![Use this template](https://img.shields.io/badge/GitHub-Use%20this%20template-brightgreen?style=for-the-badge&logo=github)](https://github.com/crispusomollo/gitcollab/generate)
[![Build Debian Package](https://img.shields.io/badge/build-.deb-blue?style=for-the-badge&logo=debian)](https://github.com/crispusomollo/gitcollab/releases)
![GitHub license](https://img.shields.io/github/license/crispusomollo/gitcollab)
![Platform](https://img.shields.io/badge/platform-bash-lightgrey)
![GitHub stars](https://img.shields.io/github/stars/crispusomollo/gitcollab?style=social)

Simplify your team's Git collaboration with a lightweight, terminal-based assistant that helps manage your workflow effortlessly. Whether you're starting new features, reviewing pull requests, or handling branches, this tool guides you through common Git tasks via an intuitive interactive menu — so you can focus on coding, not commands.

---

## 📚 Table of Contents

- [✨ Features](#-features)
- [💡 Why IGWAT?](#-why-igwat)
- [📦 Installation](#-installation)
- [🚀 Usage](#-usage)
- [🧹 Uninstalling](#-uninstalling)
- [🤝 Contributing](#-contributing)
- [👤 Authors](#-authors)
- [💼 License](#-license)
- [📘 Acknowledgements](#-acknowledgements)

---

## ✨ Features

- 🔧 **Start New Features or Tasks**  
  Quickly create and switch to new feature branches.

- 🔍 **Review & Merge Pull Requests**  
  Streamline your PR process directly from the terminal.

- 🛠️ **Git Utilities**  
  Run `status`, `pull`, and `fetch` without typing full commands.

- 🌿 **Branch Management**  
  Switch between branches or delete obsolete ones safely.

- 🚪 **Clean Exit**  
  Exit is always the last menu option — to avoid accidental quits.

---

## 💡 Why IGWAT?

- ⚡ **Boost Productivity** – No need to memorize Git commands.  
- 🤝 **Team Friendly** – Standardize Git workflows across your team.  
- 🧩 **Lightweight & Fast** – Terminal-based with no heavy dependencies.  
- 🔓 **Open Source & Customizable** – Tailor it to fit your team's workflow.

---

## 📦 Installation

### 🔧 Prerequisites

- Ubuntu/Debian-based system  
- Git installed
- Install GH CLI  
- Bash shell


### 📥 Install using `.deb` package (Recommended)

```bash
# Download the package
wget https://github.com/crispusomollo/gitcollab/blob/main/gitcollab-tools.deb

# Install the package
sudo dpkg -i gitcollab-tools.deb
```


### 💻 Manual Installation (Dev Mode)

```bash
sudo make install
```

or:

```bash
sudo ./install.sh
```

---

## 🚀 Usage
Navigate to any Git project folder, then run:

```bash
gitmenu
```

You will see a menu:

```bash
==============================
🚀 GIT COLLABORATION MENU
==============================
1. Start New Feature / Task
2. Review & Merge Pull Requests
3. Git Utilities (status, pull, fetch)
4. Branch Management (switch/delete)
5. Exit
------------------------------
👉 Choose an option [1-5]:

```

### 🔧 Commands

| Command     | Description                          |
| ----------- | ------------------------------------ |
| `gitmenu`   | Launch the interactive menu          |
| `gitcollab` | Start a feature/task + open draft PR |
| `gitreview` | Checkout PRs, test, and squash merge |

---

## 🧹 Uninstalling
To fully remove the IGWAT collaboration tools:

```bash
# 1. Download and run the uninstall script
wget https://github.com/crispusomollo/gitcollab/blob/main/uninstall-gitcollab.sh

# 2. Make the script executable
chmod +x uninstall-gitcollab.sh

# 3. Run the script
./uninstall-gitcollab.sh

```

---

## 🤝 Contributing
Want to add a feature? Fix a bug? Create a PR! Contributions, issues, and feature requests are welcome! 

1. Fork the repository
2. Create your feature branch
   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit your changes
   ```bash
   git commit -m 'Add your feature'
   ```
4. Push to the branch
   ```bash
   git push origin feature/your-feature

5. Open a Pull Request

Please ensure your code follows existing style and includes tests if applicable.

---

## 👤 Authors
- [Crispus M. Omollo](https://www.github.com/crispusomollo)


## 💼 License
[MIT License @ Crispus M. Omollo](https://github.com/crispusomollo/gitcollab/blob/main/LICENCE)


## 📘 Acknowledgements

 - [ALX Africa](https://www.alxafrica.com/)
 - [Fred Swaniker](https://www.africanleadershipacademy.org/ala_board/fred-swaniker/)
 - [How to write a Good readme](https://readme.so/editor)
 - [ChatGPT](https://chatgpt.com/)
