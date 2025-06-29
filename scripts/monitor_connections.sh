#!/bin/bash

echo "[*] Watching for new incoming connections..."
sudo netstat -tnpul | grep -i "listen"
