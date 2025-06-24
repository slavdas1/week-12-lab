# Week 12 Lab Tools – Cloud & IoT Configuration Checkers

This repository provides two lightweight shell scripts designed to help students identify common misconfigurations in **Cloud IAM** and **IoT device** configurations as part of **Week 12** of the course _Network Protocols, Vulnerabilities & Cloud Infrastructures_.

---

## 🔐 cloud-iam-check.sh

A simple security script that checks for common IAM (Identity and Access Management) misconfigurations and risky access policies in cloud-like Linux environments.

### ✅ What It Checks
- Presence and use of `sudo` privileges
- Multiple user accounts and inactive users
- SSH key usage and default authentication practices
- Whether MFA appears to be enforced (heuristically)
- Unmonitored or unrestricted access

### ▶️ How to Use
To run this script directly in your lab VM, use the following command:
```bash
curl -s https://raw.githubusercontent.com/slavdas1/week-12-lab/main/cloud-iam-check.sh | bash
```
This will execute a local scan and print out findings and suggestions — it does **not** change or modify system settings.

---

## 📡 iot-config-check.sh

A lightweight diagnostic tool that simulates auditing a basic IoT device configuration for common security issues.

### ✅ What It Checks
- Whether known IoT ports (e.g., 1883 for MQTT, 5683 for CoAP) are open
- Signs of hardcoded or default credentials in configs or environment
- Presence or absence of secure encryption in communications
- Firmware update mechanism hints (e.g., out-of-date kernel or packages)

### ▶️ How to Use
To run the IoT scanner:
```bash
curl -s https://raw.githubusercontent.com/slavdas1/week-12-lab/main/iot-config-check.sh | bash
```
This script performs non-intrusive checks and provides quick feedback on security hygiene.

---

## 📚 Educational Purpose

These tools support the learning outcomes of **Week 12: Cloud Security & IoT Protocols**, focusing on:
- Applying Zero Trust concepts to identity and access management
- Understanding shared responsibility models in cloud platforms
- Auditing IoT systems for common threat vectors

They are designed for **practice in isolated virtual machines** and **not recommended for production use**.

