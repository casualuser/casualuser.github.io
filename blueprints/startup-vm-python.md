---
layout: blueprint-detail
title: "Startup: Python Monolith on VM"
blueprint_id: startup-vm-python
segment: startup
---

# Startup: Python Monolith on VM

A cost-effective, simple deployment for early-stage startups. Runs a Python
web application (Django/FastAPI) behind Nginx on a single Virtual Machine.

## Architecture Diagram

<div class="mermaid">
{% include_relative startup-vm-python.mmd %}
</div>

## Description

This architecture is optimized for speed of iteration and simplicity. It avoids
complex orchestration frameworks in favor of a reliable, well-understood
"Monolith on a Box" pattern.

**Core Components:**
*   **Virtual Machine**: A single compute instance (AWS EC2, Google Compute, Azure VM, or DigitalOcean Droplet) hosts the entire stack.
*   **Nginx**: Acts as the reverse proxy, handling SSL termination, static file serving, and forwarding traffic to the application server.
*   **Application Server**: Runs the Python code (e.g., Gunicorn for Django/FastAPI).
*   **Database**: A local or managed PostgreSQL instance provides relational data storage.
*   **Redis**: Used for caching and background tasks (e.g., Celery) to keep the main thread responsive.

**Why this stack?**
For a new project, "boring" technology is a competitive advantage. This stack
scales vertically for a long time before needing horizontal breakdown.

## Tech Stack

| Component | Technology |
| :--- | :--- |
| **Segment** | startup |
| **Deployment** | vm-monolith |
| **Language** | python |
| **Web Server** | nginx |
| **Database** | postgres |
| **Cache** | redis |


