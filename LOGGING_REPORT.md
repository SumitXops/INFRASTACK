# Logging Report

## Overview
Centralized logging using Grafana Loki and Promtail.

## Components

### Loki
- Central log aggregation server
- Accessible at: http://52.66.60.199:3100
- Stores logs from all Docker containers and system

### Promtail
- Log collector agent running on the host
- Collects logs from Docker containers and system logs
- Forwards all logs to Loki automatically

## Log Sources
- All Docker container logs (/var/lib/docker/containers/)
- System logs (/var/log/*.log)

## How to View Logs
1. Open Grafana at http://52.66.60.199:3000
2. Click Explore in the left sidebar
3. Select Loki as the data source
4. Use query: {job="containerlogs"}
5. Click Run query

## Log Statistics
- Info logs: 3.42K
- Warning logs: 26
- Error logs: 23
- Unknown logs: 444

## Benefits
- All container logs in one place
- Searchable and filterable
- Historical log retention
- Real-time log streaming
