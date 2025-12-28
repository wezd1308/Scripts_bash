# Nginx Access Log Analyzer (Bash)

Project URL: https://roadmap.sh/projects/nginx-log-analyser

Repository GitHub: https://github.com/wezd1308/Scripts_bash/tree/main/NginxLogAnalizer

A simple **Bash script** to analyze an **Nginx access log** and display useful statistics directly from the command line.

This project is ideal for practicing:
- Linux text processing
- Bash scripting
- Log analysis
- SysAdmin troubleshooting skills

---

## 📌 Features

The script analyzes the Nginx `access.log` file and displays:

- **Top IP addresses** with the highest number of requests
- **Most requested paths**
- **Most frequent HTTP response status codes**

All results are shown in a clean, readable format with colored output.

---

## 📂 Script

```bash
#!/bin/bash

echo -e "\e[32mTop 5 IP addresses with the most requests:\e[0m"
sudo cat /var/log/nginx/access.log | cut -d " " -f 1 | sort | uniq -c | sort -nr | awk '{print  $2 " - " $1 " requests "}'

echo

echo -e "\e[32mTop 5 most requested paths:\e[0m"
sudo cat /var/log/nginx/access.log | cut -d " " -f 11 | sort | uniq -c | sort -nr | awk '{print  $2 " - " $1 " requests "}'

echo

echo -e "\e[32mTop 5 response status codes:\e[0m"
sudo cat /var/log/nginx/access.log | cut -d " " -f 9 | sort | uniq -c | sort -nr | awk '{print  $2 " - " $1 " requests "}'

---

## ⚙️ Requirements

Linux system

Nginx installed

Access to /var/log/nginx/access.log

Bash shell

sudo privileges (required to read Nginx logs)

---

## 🚀 How to Use

Make the script executable:
chmod +x nginx_log_analyzer.sh

---

## Run the script:

./nginx_log_analyzer.sh

⚠️ The script reads /var/log/nginx/access.log, so it may require sudo privileges depending on your system permissions.

---

## 🛠 Requirements

Linux system

Nginx installed

Access to /var/log/nginx/access.log

Bash shell
---

## 👨‍💻 Author

Walter Zambrano

