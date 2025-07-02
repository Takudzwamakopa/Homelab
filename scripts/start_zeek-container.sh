#!/bin/bash
echo "[*] Starting Zeek container with volume for logs..."
sudo docker run --rm -it |
--net=host \
-v /home/ironman/zeek_logs:/zeek/logs \
blacktop/zeek -i enp0s3
