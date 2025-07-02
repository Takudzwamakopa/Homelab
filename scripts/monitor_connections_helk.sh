#!/bin/bash
#Save Metasploitable traffic from HELK interface (e.g. enp0s3)
INTERFACE="enp0s3"
OUTPUT=" /home/ironman/zeek_logs/metasploitable_traffic.pcap"
echo "[*] Capturing traffic on 
$INTERFACE..."
sudo tcpdump -i "$INTERFACE' -W
"$OUTPUT"
