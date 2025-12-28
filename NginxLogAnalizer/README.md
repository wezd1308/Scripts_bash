# Nginx Access Log Analyzer (Bash)

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

