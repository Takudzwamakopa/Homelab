#!/bin/bash
# discover devices on the subnet

echo"[*] Scanning for live hosts on the 10.0.2.0/24 network..."

nmap -sn 10.0.2.0/24
