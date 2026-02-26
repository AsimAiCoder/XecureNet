# 🛡️ XecureNet

### 🔒 Secure. ⚡ Lightweight. 🐳 Container-Ready.

**🚀 Turn your free-tier VM into a mini cloud platform**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](#)
[![Bash](https://img.shields.io/badge/bash-5.0+-green.svg)](https://www.gnu.org/software/bash/)

---

## 🎯 The Problem

You're a student. You got a free VM (Azure for Students, Oracle Free Tier, GCP Free Tier). It has 1GB RAM — but here's the reality:

### 💔 What Actually Happens
- **📢 Advertised**: 1GB RAM (1024MB)
- **😱 Actual Available**: ~500-600MB after OS overhead
- **🐳 Docker RAM Usage**: 150MB+ (30% of available RAM!)
- **🗑️ System Bloat**: Unattended-upgrades, chrony consume precious memory
- **💾 No Swap**: Default VMs have no swap configured
- **💸 Public IP Costs**: $3-5/month for static IP
- **🔓 Setup Complexity**: Hours of manual configuration

### ⚠️ The Result
❌ Out of Memory (OOM) kills crash your projects  
❌ Can't run more than one service  
❌ Complex setup takes hours instead of learning  
❌ Exposed ports create security risks  
❌ Paying for IP when you don't need to  

---

## ✨ The Solution

**XecureNet** turns your tiny VM into a deployment platform:

### 🎁 What It Does

**Phase 1 — VM Optimization:**
✅ Removes system bloat → Frees ~100MB RAM  
✅ Installs Tailscale → Secure networking without public IP  
✅ Installs Podman → 5x lighter than Docker (30MB vs 150MB)  
✅ Creates 2GB swap → Prevents OOM kills  
✅ Optimizes kernel → Better memory management  

**Phase 2 — One-Click Deployment:**
✅ 22 services available → Websites, bots, APIs, databases, and more  
✅ Resource calculator → Shows what fits in your RAM  
✅ Multi-service deploy → Run several services on one VM  
✅ Project templates → Bot/API code ready to customize  
✅ Public access → Tailscale Funnel or Cloudflare Tunnel  

### 📈 Results
📊 **Before**: ~500MB available, no services, hours of setup  
📊 **After**: ~600MB + 2GB swap, multiple services running, 5 minutes  
💰 **Savings**: $3-5/month (no public IP needed)  
🔒 **Security**: Zero exposed ports, P2P encryption  

---

## 📦 Available Services

### Ready-to-Deploy (no coding needed)

| # | Service | RAM | What It Does | Capacity |
|---|---------|-----|-------------|----------|
| 1 | 🌐 Static Website (Nginx) | ~15MB | Host portfolio, landing pages | ~1000 visitors |
| 2 | 📊 Uptime Monitor (Uptime Kuma) | ~80MB | Monitor your services | ~50 monitors |
| 3 | 📂 Git Server (Gitea) | ~100MB | Self-hosted GitHub | ~10 users |
| 4 | 📁 File Manager (FileBrowser) | ~30MB | Web file manager | Unlimited |
| 5 | 🏠 Dashboard (Dashy) | ~40MB | Service dashboard | Unlimited |
| 6 | 📋 Pastebin (PrivateBin) | ~20MB | Encrypted paste sharing | ~500 pastes |
| 7 | 🐘 PostgreSQL | ~30MB | SQL database | ~100 connections |
| 8 | 🔴 Redis | ~25MB | Cache / message queue | ~10K ops/sec |
| 9 | 🔑 Vaultwarden | ~40MB | Password manager | ~50 users |
| 10 | 🔄 n8n | ~150MB | No-code automation (like Zapier) | ~20 workflows |
| 11 | ⏰ Cron Runner (Ofelia) | ~15MB | Scheduled tasks | Unlimited |

### Bot & App Templates (creates project + deploys)

| # | Service | RAM | What It Does | Capacity |
|---|---------|-----|-------------|----------|
| 12 | 🤖 Telegram Bot (Python) | ~40MB | Python bot with python-telegram-bot | ~1000 msg/min |
| 13 | 🤖 Telegram Bot (Node.js) | ~50MB | Node bot with Telegraf | ~1200 msg/min |
| 14 | 💬 Discord Bot (Python) | ~45MB | Python bot with discord.py | ~500 msg/min |
| 15 | 💬 Discord Bot (Node.js) | ~55MB | Node bot with discord.js | ~600 msg/min |
| 16 | 📱 WhatsApp Bot | ~80MB | Node bot with Baileys | ~200 chats |
| 17 | ⚡ API Server (FastAPI) | ~50MB | Python API with auto-docs | ~300 req/sec |
| 18 | ⚡ API Server (Express) | ~45MB | Node.js REST API | ~400 req/sec |
| 19 | 🌍 Web App (Flask) | ~55MB | Python web app | ~200 req/sec |
| 20 | 🌍 Web App (Express) | ~60MB | Node.js web app with EJS | ~300 req/sec |
| 21 | 🚀 Mini SaaS (Python) | ~70MB | FastAPI + SQLite + Auth | ~100 users |
| 22 | 🚀 Mini SaaS (Node.js) | ~65MB | Express + SQLite + Auth | ~120 users |

### Example Combinations (on 1GB VM)

| Combo | Total RAM | Status |
|-------|-----------|--------|
| Static Site + Telegram Bot + Redis | ~80MB | ✅ Easy |
| API Server + PostgreSQL + Static Site | ~95MB | ✅ Easy |
| Telegram Bot + Discord Bot + API | ~135MB | ✅ Good |
| Mini SaaS + Uptime Monitor | ~150MB | ✅ Good |
| WhatsApp Bot + API + PostgreSQL + Redis | ~185MB | ⚠️ Tight |
| Mini SaaS + Git + Dashboard + DB | ~240MB | ⚠️ Uses swap |

> 💡 XecureNet's resource calculator shows you exactly what fits. Even "tight" combos work fine with swap!

---

## 📥 Installation

### ⚡ Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/asimaicoder/XecureNet/main/install.sh | sudo bash
```

### 🔧 Manual Install

```bash
git clone https://github.com/asimaicoder/XecureNet.git
cd XecureNet
sudo bash install.sh
```

### 📋 Requirements

- **💻 OS**: Debian 12+ or Ubuntu 22.04+
- **🧠 RAM**: 1GB minimum (512MB+ available)
- **💿 Disk**: 5GB free space
- **🌐 Network**: Internet connection
- **👑 Privileges**: Root/sudo access

---

## 🚀 Quick Start

### Step 1: Setup your VM

```bash
sudo xecurenet setup
```

This optimizes your VM (removes bloat, installs Podman, creates swap, sets up Tailscale).

### Step 2: Deploy services

```bash
sudo xecurenet deploy
```

This shows an interactive menu where you select services. The resource calculator tells you what fits.

### Step 3: Check status

```bash
xecurenet status
```

Shows memory usage, running containers, Tailscale connection, and more.

---

## 🎮 Usage

### All Commands

```bash
# Setup & Optimization
sudo xecurenet setup          # Full initial setup
sudo xecurenet optimize       # Re-run optimization only
sudo xecurenet tailscale      # Configure Tailscale

# Deployment
sudo xecurenet deploy         # Interactive deploy menu
xecurenet services            # List all available services
sudo xecurenet remove         # Remove a deployed service

# Info
xecurenet status              # VM and service status
xecurenet --help              # Help
xecurenet --version           # Version
```

### CI/CD / Unattended Mode

```bash
# Set environment variables for fully automated setup
export XECURENET_MODE=agent
export TAILSCALE_AUTHKEY=tskey-auth-xxxxx

sudo -E xecurenet setup
```

---

## 🔧 How It Works

### 1️⃣ System Check 🔍
Verifies root privileges, detects OS (Debian/Ubuntu), checks RAM, disk, and internet. OS detection is used throughout to ensure correct package installation.

### 2️⃣ Bloat Removal 🗑️
Removes `unattended-upgrades`, `chrony`, and cleans orphaned packages.  
**Result**: ~100MB RAM freed.

### 3️⃣ Tailscale Installation 🔐
Installs Tailscale for secure P2P networking. Three auth methods: Auth Key (best for automation), OAuth (browser login), or Skip. Agent mode uses `TAILSCALE_AUTHKEY` env var.  
**Result**: Secure network without public IP.

### 4️⃣ Podman Installation 🐳
Installs Podman with OS-aware logic (Ubuntu repos vs Debian repos). Enables rootless mode and user lingering.  
**Result**: 5x lighter container runtime (30MB vs Docker's 150MB).

### 5️⃣ Swap Configuration 💾
Creates 2GB swap file with proper permissions. Checks for duplicate fstab entries.  
**Result**: 2GB overflow RAM to prevent OOM kills.

### 6️⃣ Kernel Optimization ⚙️
Sets `vm.swappiness=10` and `vm.vfs_cache_pressure=50` independently (each checked separately).  
**Result**: Better memory management.

### 7️⃣ Service Deployment 🚀
Interactive menu with 22 services. Resource calculator shows RAM impact. Multi-service selection with compatibility warnings. Scaffold templates create ready-to-edit project code.  
**Result**: Running services in minutes, not hours.

---

## 🌐 Public Access Options

When deploying web-facing services, XecureNet offers two ways to make them publicly accessible:

### Tailscale Funnel (Easiest)
- Free HTTPS on `your-machine.ts.net`
- No domain needed, automatic SSL
- Enable in Tailscale admin: DNS → Funnel

### Cloudflare Tunnel (Custom Domain)
- Use your own domain
- Requires free Cloudflare account
- Installs `cloudflared` automatically

### Private Only (Default)
- Access via Tailscale IP only
- Most secure option
- Perfect for personal projects

---

## 📊 Monitoring

### Check Everything

```bash
xecurenet status              # Full system overview
podman stats                  # Live container resource usage
podman logs -f <name>         # Follow container logs
free -h                       # Memory overview
```

### Per-Container Memory

```bash
podman stats --no-stream      # Snapshot of all container memory
```

---

## 🔍 Troubleshooting

### Out of Memory
```bash
free -h                       # Check available memory
podman stats                  # Find hungry containers
podman update --memory=200m <name>  # Limit a container
```

### Container Won't Start
```bash
podman logs <name>            # Check error logs
podman ps -a                  # See all containers (including stopped)
podman rm -f <name>           # Remove and redeploy
```

### Tailscale Not Connected
```bash
sudo tailscale status         # Check connection
sudo systemctl restart tailscaled  # Restart
sudo tailscale up             # Re-authenticate
```

### Redeploy a Service
```bash
sudo xecurenet remove         # Remove the broken service
sudo xecurenet deploy         # Deploy it again
```

---

## ❓ FAQ

**Q: Why Podman instead of Docker?**  
A: Podman uses 5x less RAM (30MB vs 150MB), runs rootless by default, has no daemon, and is Docker-compatible.

**Q: Is Tailscale free?**  
A: Yes! Free for personal use (up to 100 devices). No credit card needed.

**Q: Can I run multiple services?**  
A: Yes! The resource calculator shows what combinations fit. Even tight combos work with swap.

**Q: What clouds does this work on?**  
A: Azure, AWS, GCP, DigitalOcean, Oracle, Linode, Vultr — any Debian/Ubuntu VM.

**Q: How do I update my bot code?**  
A: Edit the code in `~/projects/<service>/`, then `podman restart <service>`. For Dockerfile changes, rebuild: `podman build -t <service> ~/projects/<service>/ && podman restart <service>`.

**Q: Does this work on ARM?**  
A: Yes! Tested on ARM64 (Ampere, AWS Graviton).

**Q: How do I uninstall?**  
A:
```bash
sudo rm /usr/local/bin/xecurenet
sudo apt remove podman tailscale
sudo swapoff /swapfile && sudo rm /swapfile
rm -rf ~/.xecurenet ~/projects
```

---

## 🤝 Contributing

Contributions welcome! 🎉

- 🐛 **Report bugs** — Open an issue
- 💡 **Suggest services** — What should we add?
- 📖 **Improve docs** — Submit a PR
- ⭐ **Star the repo** — Show your support

---

## 📜 License

**MIT License** — Free to use, modify, and distribute. ✅

---

## 👨‍💻 Author

**Asim Coder** — [@AsimAiCoder](https://t.me/AsimAiCoder) 📱

Made with ❤️ for students and the Open Source Community 🌍

---

**XecureNet** — Optimize once, deploy everything. 🚀✨
