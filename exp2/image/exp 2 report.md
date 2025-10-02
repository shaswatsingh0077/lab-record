<img width="816" height="597" alt="SS2" src="https://gist.github.com/user-attachments/assets/304a3a91-4304-4a3d-a767-8af03fe93b9f" />
<img width="882" height="632" alt="sS1" src="https://gist.github.com/user-attachments/assets/cf6e668a-2930-47d4-861f-b9cfb94ba1e5" />
# 🔬 Experiment 2: Linux File Systems, Permissions, and Essential Commands

## 📖 Table of Contents
1. [Theory: Understanding Linux File Systems](#theory-understanding-linux-file-systems)  
2. [File Permissions](#file-permissions)  
3. [Users and Ownership](#users-and-ownership)  
4. [Basic Navigation Commands](#basic-navigation-commands)  
5. [File Operations](#file-operations)  
6. [File Viewing and Editing](#file-viewing-and-editing)  
7. [User Management](#user-management)  
8. [System Information](#system-information)  
9. [Practice Exercises](#practice-exercises)  

---

## 1. Theory: Understanding Linux File Systems
Linux uses a hierarchical file system structure:  
- Root directory `/`  
- Subdirectories like `/home`, `/etc`, `/usr`, `/var`  
- Everything in Linux is treated as a **file**, including devices.  
- **Absolute paths** start from `/`; **relative paths** start from the current directory.

---

## 2. File Permissions
Linux file permissions control access to files and directories:  
- **Permission types**:  
  - `r` – Read  
  - `w` – Write  
  - `x` – Execute  
- **Permission classes**:  
  - `u` – User (owner)  
  - `g` – Group  
  - `o` – Others  
- **View permissions**:  
  ```bash
  ls -l
  Bash 
  chmod 755 filename
  chmod u+x filename
  chown user:group filename