#!/bin/bash

DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="/opt/backups/$DATE"

mkdir -p $BACKUP_DIR

echo "Starting backup at $DATE"

# Backup docker volumes
docker run --rm \
  -v uptime-kuma-data:/source/uptime-kuma:ro \
  -v npm-data:/source/npm-data:ro \
  -v prometheus-data:/source/prometheus:ro \
  -v grafana-data:/source/grafana:ro \
  -v $BACKUP_DIR:/backup \
  alpine tar czf /backup/volumes.tar.gz -C /source .

# Backup config files
cp /opt/devops/docker-compose.yml $BACKUP_DIR/
cp /opt/devops/prometheus.yml $BACKUP_DIR/
cp /opt/devops/promtail.yml $BACKUP_DIR/

echo "Backup completed: $BACKUP_DIR"

# Keep only last 7 backups
ls -dt /opt/backups/*/ | tail -n +8 | xargs rm -rf
