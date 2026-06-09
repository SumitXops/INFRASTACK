# Infrastack - Self-Hosted Developer Platform
# CI/CD Pipeline Active

<div align="center">

# 🚀 INFRASTACK

**A production-ready self-hosted developer platform**

![Visitors](https://api.visitorbadge.io/api/visitors?path=SumitXops%2FINFRASTACK&label=Visitors&labelColor=%23000000&countColor=%2300ff88)
[![GitHub last commit](https://img.shields.io/github/last-commit/SumitXops/INFRASTACK?color=00ff88&style=flat-square)](https://github.com/SumitXops/INFRASTACK/commits/main)
[![GitHub repo size](https://img.shields.io/github/repo-size/SumitXops/INFRASTACK?color=0099ff&style=flat-square)](https://github.com/SumitXops/INFRASTACK)

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=22&pause=1000&color=00FF88&center=true&vCenter=true&width=600&lines=Docker+%2B+CI%2FCD+%2B+Monitoring+%2B+Logging;Self-hosted+on+AWS+EC2;Prometheus+%2B+Grafana+%2B+Loki;Built+by+Sumit+Kumar" alt="Typing SVG" />

</div>

---

## 🌐 Live Platform

|
|
|
|
---
|
---
|
|
 🖥️ 
**
Server
**
|
 AWS EC2 t3.micro — Ubuntu 24.04 LTS 
|
|
 🌍 
**
Domain
**
|
 http://sumit-devops.ddns.net 
|
|
 🔁 
**
CI/CD
**
|
 Auto-deploys on every 
`git push`
|
|
 📊 
**
Status
**
|
 All 8 containers running 
|

---

## 🏗️ Architecture
Internet
│
▼
Nginx Proxy Manager  (ports 80 / 443 / 81)
│
├──▶ Nginx          :8080
├──▶ Whoami         :8081
├──▶ Portainer      :9000
├──▶ Uptime Kuma    :3001
├──▶ Prometheus     :9090
├──▶ Grafana        :3000
├──▶ Loki           :3100
└──▶ Promtail       (agent)


---

## 🛠️ Tech Stack

<div align="center">

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)
![AWS](https://img.shields.io/badge/AWS_EC2-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu_24.04-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

</div>

---

## 📦 Services

| Service | Port | Purpose | Status |
|---------|------|---------|--------|
| Nginx | 8080 | Web server | ✅ Running |
| Whoami | 8081 | Identity service | ✅ Running |
| Portainer | 9000 | Docker UI | ✅ Running |
| Nginx Proxy Manager | 80/81/443 | Reverse proxy | ✅ Running |
| Uptime Kuma | 3001 | Uptime monitoring | ✅ Running |
| Prometheus | 9090 | Metrics collection | ✅ Running |
| Grafana | 3000 | Metrics dashboard | ✅ Running |
| Loki + Promtail | 3100 | Log aggregation | ✅ Running |

---

## 🔄 CI/CD Pipeline
git push origin main
│
▼
GitHub Actions
│
├── SSH into EC2
├── git pull latest code
├── docker compose up -d
└── verify containers ✅


Every push auto-deploys to the live server in under 60 seconds.

---

## 📊 Monitoring Stack

- **Prometheus** scrapes metrics every **15 seconds**
- **Grafana** dashboard: Node Exporter Full (ID: 1860)
- **Uptime Kuma** checks all services every **60 seconds**
- Metrics: CPU · Memory · Disk · Network · Container health

---

## 📋 Centralized Logging

- **Promtail** collects all Docker container logs + system logs
- **Loki** stores and indexes logs
- Query logs in Grafana using **LogQL**: `{job="containerlogs"}`
- Stats: 3.42K info · 26 warnings · 23 errors · 444 unknown

---

## 💾 Backup & Recovery

| Scenario | Recovery Time |
|----------|--------------|
| Single container crash | ~2 minutes |
| Server reboot | ~5 minutes |
| Config file loss | ~10 minutes |
| Full server rebuild | ~30 minutes |

Automated daily backups at **2:00 AM** via cron — last 7 backups retained.

---

## 🔒 Security

- 🔥 **UFW Firewall** — only required ports open
- 🛡️ **Fail2Ban** — brute force protection
- 🔑 **EC2 Instance Connect** — no static SSH keys
- 🌐 **Nginx Proxy Manager** — SSL termination

---

## 📁 Project Structure
INFRASTACK/
├── docker-compose.yml          # All 8 services
├── prometheus.yml              # Metrics scrape config
├── promtail.yml                # Log collection config
├── backup.sh                   # Automated backup script
├── .github/
│   └── workflows/
│       └── deploy.yml          # CI/CD pipeline
├── MONITORING_SETUP.md
├── LOGGING_REPORT.md
├── BACKUP_STRATEGY.md
├── DISASTER_RECOVERY_PLAN.md
└── PLATFORM_AUDIT_REPORT.md


---

## 🚀 Deploy Your Own

```bash
# 1. Clone the repo
git clone https://github.com/SumitXops/INFRASTACK.git

# 2. Enter the folder
cd INFRASTACK

# 3. Start all services
docker compose up -d

# 4. Open Portainer
http://your-server-ip:9000
```

---

## 📈 Skills Demonstrated

`Linux Administration` · `Docker & Compose` · `CI/CD Automation`
`Prometheus & Grafana` · `Loki Log Management` · `AWS EC2`
`Security Hardening` · `Backup & DR Planning` · `Technical Docs`

---

<div align="center">

**Built by [Sumit Kumar](https://github.com/SumitXops)**

![GitHub followers](https://img.shields.io/github/followers/SumitXops?style=social)
![GitHub stars](https://img.shields.io/github/stars/SumitXops/INFRASTACK?style=social)

</div>
