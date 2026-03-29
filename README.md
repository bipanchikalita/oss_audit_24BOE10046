# oss_audit_24BOE10046
This repository contains a structured audit of the Linux Kernel and five functional shell scripts as part of the OSS NGMC course. *
 capstone project for the Open Source Software course, involving a detailed audit of the Linux Kernel, supported by Linux-based shell scripting assignments.
---

## Student Information

| Field               | Details              |
| ------------------- | -------------------- |
| Student Name        | Bipanchi Kalita      |
| Registration Number | 24BOE10046           |
| Course              | Open Source Software |

---

## Project Overview

The objective of this project is to provide a comprehensive analysis of the **Linux Kernel**, which is the core component of the Linux operating system and one of the most significant open-source projects in the world.

This project explores both theoretical and practical aspects of the Linux Kernel, including its architecture, development model, and real-world applications.

The analysis will include:

- The origin and evolution of the Linux Kernel since its creation by Linus Torvalds
- The licensing model (GNU General Public License - GPL) and its implications
- The global open-source community contributing to kernel development
- The role of the kernel in managing hardware, processes, memory, and system calls
- A comparison between Linux Kernel and proprietary operating system kernels
- A hands-on implementation of five Linux Bash scripts demonstrating system-level auditing

To bridge theory with practice, the scripting component focuses on interacting with system resources, analyzing logs, auditing disk usage, and understanding system-level behavior using Linux command-line tools.

---

## Tech Stack

| Component        | Details                                          |
| ---------------- | ------------------------------------------------ |
| Operating System | Kali Linux / Ubuntu (Linux-based)                |
| Shell            | Bash (/bin/bash)                                 |
| Core Software    | Linux Kernel                                     |
| Package Manager  | apt                                              |
| Core Utilities   | uname, whoami, dpkg, du, grep, awk, date, uptime |

---

## Project Structure

```
│
├── script1.sh              # System Identity Report
├── script2.sh              # Check FOSS packages
├── script3.sh              # Disk & Permission Auditor
├── script4.sh              # Log File Analyzer
├── script5.sh              # OSS Manifesto Generator
├── Screenshots             # Output screenshots
├── Linux Kernel Audit      # Project report
│
└── README.md               # Documentation
```

---

## Setup Instructions

### Prerequisites

Ensure you are running a Linux-based distribution such as Ubuntu or Kali Linux.

### Step 1 — Update Package Lists

```bash
sudo apt update
```

### Step 2 — Verify Kernel Version

```bash
uname -r
```

### Step 3 — Make Scripts Executable

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

---

## How to Run the Scripts

| Script     | Command                              |
| ---------- | ------------------------------------ |
| script1.sh | `./script1.sh`                       |
| script2.sh | `./script2.sh`                       |
| script3.sh | `./script3.sh`                       |
| script4.sh | `./script4.sh /var/log/syslog ERROR` |
| script5.sh | `./script5.sh`                       |

**Note:**
`script4.sh` requires two arguments:

1. Log file path
2. Keyword to search

If no keyword is provided, it defaults to **"ERROR"**.

---

## Script Descriptions

| Script     | Title                     | Description                                                                                                     |
| ---------- | ------------------------- | --------------------------------------------------------------------------------------------------------------- |
| script1.sh | System Identity Report    | Displays system details such as OS distribution, kernel version, logged-in user, uptime, and current date/time. |
| script2.sh | FOSS Package Inspector    | Checks if essential packages are installed using `dpkg` and explains them using a case statement.               |
| script3.sh | Disk & Permission Auditor | Analyzes selected directories for permissions, ownership, and disk usage.                                       |
| script4.sh | Log File Analyzer         | Reads a log file and counts occurrences of a keyword, displaying matching lines.                                |
| script5.sh | OSS Manifesto Generator   | Takes user input and generates a personalized open-source philosophy file.                                      |

---

## Output Explanation

- **script1.sh** — Displays a formatted system report including kernel version, uptime, and user details.
- **script2.sh** — Verifies installed packages and provides contextual information about them.
- **script3.sh** — Outputs a table showing directory permissions, ownership, and disk usage.
- **script4.sh** — Generates a log analysis report including keyword count and matching entries.
- **script5.sh** — Creates a file named `manifesto_<username>.txt` containing a personalized open-source manifesto.

---

## Concepts Used

This project demonstrates key Linux and shell scripting concepts:

- **Variables:** Used to store system values and user input (e.g., `$(whoami)`, `$(uname -r)`)
- **User Input:** Collected using `read -p` for dynamic interaction
- **Conditional Statements:** Used to check conditions like file existence or package installation
- **Case Statements:** Used for handling multiple conditions efficiently
- **Loops:**
  - `for` loops for iterating over directories
  - `while` loops for reading log files

- **Command-line Arguments:** Using `$1`, `$2` for flexible script execution
- **File Handling:** Reading from and writing to files using redirection
- **Text Processing Tools:** `grep`, `awk`, `cut`, `tail`, `tr`
- **System Commands:** `uname`, `uptime`, `du`, `dpkg`, `date`
- **Exit Codes:** Used for error handling (`exit 1`)
- **Retry Mechanism:** Uses `sleep` to retry operations when needed

---

## Notes

- All scripts are designed for Linux environments only
- Ensure execution permissions are granted before running scripts
- `script4.sh` requires a valid log file path (e.g., `/var/log/syslog` or `/var/log/kern.log`)
- `script3.sh` may require `sudo` for complete directory access
- `script5.sh` generates output in the current working directory

---

## Conclusion

This project demonstrates the importance of the Linux Kernel as the backbone of modern computing systems and highlights its role in enabling open-source innovation.

By combining theoretical understanding with practical scripting tasks, this audit provides a well-rounded exploration of how open-source systems function at a low level.

The project reflects core open-source principles such as transparency, collaboration, and freedom to modify and distribute software, while also strengthening essential Linux system administration skills.
