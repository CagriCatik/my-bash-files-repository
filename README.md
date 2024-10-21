# My Bash Files Repository

This repository contains a collection of bash scripts and documentation that help automate various installation and configuration tasks across different development environments and tools. It is organized into several categories to streamline setup processes for development projects.

## Categories

### KiCad
- **`install-kicad-linux.sh`**: Automates the installation of KiCad (a PCB design tool) on Linux systems.

### Linux
- **`github-config.md`**: A guide for configuring GitHub on Linux machines.
- **`install-tools.sh`**: Installs essential tools for Linux development.

### mdBook
- **`run-mdbook-creator.sh`**: A script to run mdBook, a utility for creating and publishing online books from Markdown files.

### Programming
- **`create-fullstack-app.sh`**: Automates the setup of a full-stack application development environment.
- **`install_lua.sh`**: Installs the Lua programming language on your system.

### ROS2
- A collection of scripts to install various ROS2 distributions and tools:
  - **Etcher**, **Foxglove Studio**, **PlotJuggler**, **RealSense** integration, and more.
  - Supports ROS2 versions like **Foxy**, **Galactic**, **Humble**, and **Iron**.

### Tools
- **`install-one-drive.sh`**: Installs OneDrive for Linux systems.
- **`install-tools.sh`**: Installs general-purpose tools needed for development.
- **`install_wireshark.sh`**: Installs Wireshark for network analysis.
- **`run-terminal_opener.sh`**: A script to customize terminal behavior.

### Bash

- [**Entering Terminal Commands**](./01_Entering-Terminal-Commands/README.md)
  - [whoami, uname](./01_Entering-Terminal-Commands/01_whoami-uname.md)
  - [ifconfig, ip, ping](./01_Entering-Terminal-Commands/02_ifconfig-ip-ping.md)
  - [df, free, ps, top, kill](./01_Entering-Terminal-Commands/03_df-free-ps-top-kill.md)
- [**Navigating the Termina**l](./02_Navigating-Terminal/README.md)
  - [Changing Directories](./02_Navigating-Terminal/01_cd.md)
  - [Important Directories](./02_Navigating-Terminal/02_important-dir.md)
  - [Editing Files within a Directory](./02_Navigating-Terminal/03_editing-files.md)
- [**Making and Manipulating**](./03_Making-Manipulating/README.md)
  - [Making and Manipulation Files](./03_Making-Manipulating/01_making-manipulation-files.md)
  - [Making and Manipulation Directories](./03_Making-Manipulating/02_making-manipulation-dirs.md)
- [**Searching through Files**](./04_Searching-Files/README.md)
  - [Piping and Redirection](./04_Searching-Files/01_Piping-Redirection.md)
  - [Searching with Grep](./04_Searching-Files/02_Searching-Grep.md)
  - [Awk](./04_Searching-Files/03_Awk.md)
- [**File Permissions and Executing Files**](./05_File-Permissions/README.md)
  - [Permissions](./05_File-Permissions/01_Permissions.md)
  - [Owner, Group, All Users](./05_File-Permissions/02_Owner-Group-All-Users.md)
  - [Changing Permissions and Executing Files](./05_File-Permissions/03_Changing-Permissions.md)
  - [Adding to the Sudo Group](./05_File-Permissions/04_Adding-Sudo-Group.md)
- [**Installing Software**](./06_Installing-Software/README.md)
  - [Advance Packaging Tool](./06_Installing-Software/01_APT.md)
  - [Updating the System and Installing Software](./06_Installing-Software/02_Updating-System.md)
- [**Compressing and Extracting Files**](./07_Compressing-Extracting-Software/README.md)
  - [Compressing Files With Gzip](./07_Compressing-Extracting-Software/01_Gzip.md)
  - [Creating Archives with Tar](./07_Compressing-Extracting-Software/02_Tar.md)
- [**Bash Script**](./08_Bash-Scripting/README.md)
  - [Writing Your First Script With Echo](./08_Bash-Scripting/01_Echo.md)
  - [An Introduction to Expansion](./08_Bash-Scripting/02_Expansion.md)
  - [Parameter and Command Expansion](./08_Bash-Scripting/03_Parameter-Command.md)
  - [Arithmetic Expansion and Getting User Input](./08_Bash-Scripting/04_Arithmetic-Expansion.md)
  - [Tests and If Statements](./08_Bash-Scripting/05_Tests-If-Statement.md)
  - [Looping With For](./08_Bash-Scripting/06_Looping-For.md)
  - [Looping with While and Until](./08_Bash-Scripting/07_Looping-While-Until.md)


## How to Use

1. **Clone the repository**:

   ```bash
   git clone git@github.com:CagriCatik/my-bash-files-repository.git
   ```

2. **Navigate to a specific directory** and run the desired script:

   ```bash
   cd <directory>
   ./<script_name>.sh
   ```

   Make sure the scripts have executable permissions. If not, use the following command:

   ```bash
   chmod +x <script_name>.sh
   ```
