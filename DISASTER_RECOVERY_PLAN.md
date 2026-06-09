# Disaster Recovery Plan

## Overview
Procedures to recover the platform from various failure scenarios.

## Scenario 1 - Container Failure
A single container crashes or stops responding.

### Steps
1. Check container status: docker ps -a
2. Check container logs: docker logs <container-name>
3. Restart container: docker restart <container-name>
4. If still failing: docker compose -f /opt/devops/docker-compose.yml up -d

## Scenario 2 - Server Failure
The EC2 instance becomes unresponsive.

### Steps
1. Go to AWS EC2 console
2. Select the instance and click Instance State -> Reboot
3. Wait 60 seconds and reconnect via EC2 Instance Connect
4. Verify containers are running: docker ps
5. If containers stopped: docker compose -f /opt/devops/docker-compose.yml up -d

## Scenario 3 - Configuration Recovery
Configuration files are accidentally deleted or corrupted.

### Steps
1. Pull latest config from GitHub:
   git -C /opt/devops pull origin main
2. Or restore from backup:
   cp /opt/backups/LATEST-DATE/docker-compose.yml /opt/devops/
3. Restart all containers:
   docker compose -f /opt/devops/docker-compose.yml up -d

## Scenario 4 - Full Server Loss
The server is completely lost and needs to be rebuilt from scratch.

### Steps
1. Launch new EC2 instance (Ubuntu 24.04, t3.micro)
2. Configure security groups (ports 80,443,81,3000,3001,8080,8081,9000,9090)
3. Install Docker: curl -fsSL https://get.docker.com | sh
4. Clone the repo: git clone https://github.com/SumitXops/INFRASTACK.git /opt/devops
5. Start everything: docker compose -f /opt/devops/docker-compose.yml up -d
6. Restore volumes from latest backup

## Recovery Time Objectives
- Container failure: 2 minutes
- Server reboot: 5 minutes
- Full rebuild: 30 minutes
