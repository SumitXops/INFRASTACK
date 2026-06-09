# Monitoring Setup

## Overview
Full monitoring stack using Prometheus, Grafana, and Uptime Kuma.

## Components

### Prometheus
- Collects metrics from the server every 15 seconds
- Accessible at: http://52.66.60.199:9090
- Scrapes Node Exporter for system metrics

### Node Exporter
- Installed on the host server
- Collects CPU, memory, disk, and network metrics
- Accessible at: http://52.66.60.199:9100

### Grafana
- Visualizes metrics from Prometheus
- Accessible at: http://52.66.60.199:3000
- Dashboard: Node Exporter Full (ID: 1860)

### Uptime Kuma
- Monitors service availability every 60 seconds
- Accessible at: http://52.66.60.199:3001
- Monitors: Nginx, Whoami, Portainer, Grafana

## Metrics Collected
- CPU usage percentage
- Memory usage percentage
- Disk usage percentage
- Container status
- Service uptime and response time

## Alerting
- Uptime Kuma sends alerts when any service goes down
- Grafana dashboards show real-time and historical data
