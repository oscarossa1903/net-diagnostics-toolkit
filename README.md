# Network Diagnostics Toolkit

## 🚀 Overview

A Bash-based toolkit to analyze network performance: latency, packet loss, and routing.

## ⚙️ Features

* Latency measurement (ping)
* Packet loss detection
* Route tracing (traceroute)
* Logging system

## 📂 Structure

* scripts/: core scripts
* logs/: output (ignored)
* config/: parameters
* tests/: basic validation

## ▶️ Usage

```bash
cd scripts
./net_check.sh google.com
```

## 🧪 Example

Runs diagnostics and saves results in logs/report.txt

## 🔮 Future Work

* Dockerize toolkit
* Add monitoring (Prometheus/Grafana)
* Automate periodic checks
