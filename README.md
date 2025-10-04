
# Linux Automation Scripts

This repository contains a collection of **Linux shell scripts** for system administration, automation, and server management tasks. These scripts are aimed at **simplifying repetitive tasks** for Linux admins and provide practical examples for learning Bash scripting.

---

## 📝 Scripts Included

### 1. User Management Script
- **File:** `user-management.sh`
- **Description:**  
  - Checks if a list of users exists on the system.  
  - Creates missing users.  
  - Prompts to set passwords for users.  
  - Creates and adds users to groups if necessary.  
- **Key Features:**  
  - Automated user creation  
  - Password management  
  - Group assignment  

---

### 2. File Operations Script
- **File:** `file-operations.sh`
- **Description:**  
  - Checks if a file exists; prompts to create if missing.  
  - Allows adding content to files.  
  - Provides options to:  
    - Check file size  
    - Change permissions  
    - Change owner or group  
    - Check inode  
    - Compress file  
    - Create hard and soft links  
    - Copy file to destination  
- **Key Features:**  
  - File management automation  
  - Permission and ownership control  
  - Link creation and compression  

---

### 3. Server Reachability Script
- **File:** `server-reachable.sh`
- **Description:**  
  - Checks if a range of servers is reachable via ping.  
  - Checks if servers are accessible via SSH.  
  - Logs reachable, unreachable, SSHable, and non-SSHable servers with timestamps.  
- **Key Features:**  
  - Network and server monitoring  
  - Automated SSH check  
  - Logs results for easy tracking  

---

## ⚡ How to Use
1. Clone the repository:
```bash
git clone https://github.com/yourusername/linux-automation-scripts.git
cd linux-automation-scripts

