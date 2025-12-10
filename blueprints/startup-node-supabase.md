---
layout: blueprint-detail
title: "Startup: Node.js + Supabase"
blueprint_id: startup-node-supabase
segment: startup
---

# Startup: Node.js + Supabase

A rapid-development stack using a simple Node.js API (Express/NestJS) for logic
and Supabase for the heavy lifting of Auth, DB, and Realtime.

## Architecture Diagram

<div class="mermaid">
{% include_relative startup-node-supabase.mmd %}
</div>

## Description

This architecture leverages the "Backend-as-a-Service" model to reduce
infrastructure overhead. The Node.js service is lightweight, handling only
custom business logic that doesn't fit into database policies.

**Core Components:**
*   **Supabase**: Provides a fully managed PostgreSQL database, Authentication system, and Auto-generated APIs.
*   **Node.js Service**: A simplified backend running on a VM or small container, handling webhooks, integrations, or complex non-SQL logic.
*   **Nginx**: Secures the Node.js API and serves the frontend assets if not CDN-hosted.

**Why this stack?**
Supabase handles 80% of standard SaaS features (User management, Row Level Security) out of the box, allowing founders to focus on product differentiation.

## Tech Stack

| Component | Technology |
| :--- | :--- |
| **Segment** | startup |
| **Deployment** | hybrid-baas |
| **Language** | nodejs |
| **Database** | supabase |
| **Web Server** | nginx |


