# Backup Strategy

## Overview
Automated daily backups of all Docker volumes and configuration files.

## What Gets Backed Up
- Docker volumes (Uptime Kuma, Grafana, Prometheus, NPM)
- docker-compose.yml
- prometheus.yml
- promtail.yml

## Backup Schedule
- Runs every day at 2:00 AM automatically via cron job
- Backup location: /opt/backups/
- Each backup is stored in a timestamped folder (YYYY-MM-DD_HH-MM-SS)
- Only last 7 backups are kept to save disk space

## How to Run Manually
```bash
/opt/devops/backup.sh
```

## How to Restore
1. Find the backup folder: ls /opt/backups/
2. Copy config files back: cp /opt/backups/DATE/docker-compose.yml /opt/devops/
3. Restore volumes: extract volumes.tar.gz back to Docker volumes
4. Restart containers: docker compose -f /opt/devops/docker-compose.yml up -d

## Backup Verification
Check backup logs: cat /var/log/backup.log
