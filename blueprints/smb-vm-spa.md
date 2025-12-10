---
layout: blueprint-detail
title: "SMB: SPA + Backend API"
blueprint_id: smb-vm-spa
segment: smb
---

# SMB: SPA + Backend API

A standard decoupled architecture for Small-to-Medium Businesses.
Serves a compiled Single Page Application (React/Vue) alongside a robust
API backend on standard virtual infrastructure.

## Architecture Diagram

<div class="mermaid">
{% include_relative smb-vm-spa.mmd %}
</div>

## Description

As businesses grow, separating the frontend and backend becomes crucial for
independent scaling and team specialization. This pattern serves a compiled
application (SPA) alongside a REST/GraphQL API.

**Core Components:**
*   **Frontend**: A React, Vue, or Angular application built into static files, served directly by Nginx.
*   **Backend API**: A generic backend (Node, Python, Go) exposing JSON APIs.
*   **Nginx Gatekeeper**: Routes traffic based on path (`/api/*` vs `/*`), manages CORS, and handles SSL.
*   **Database**: Managed database instance (RDS, Cloud SQL, etc.) for reliability.

**Deployment:**
Usually deployed via CI/CD pipelines that build artifacts (JS bundles, binaries) and copy them to the VM or update the running process.

## Tech Stack

| Component | Technology |
| :--- | :--- |
| **Segment** | smb |
| **Deployment** | vm-decoupled |
| **Frontend** | react-vue-angular |
| **Backend** | node-python-go |
| **Web Server** | nginx |
| **Database** | postgres-mysql |


