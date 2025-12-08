---
layout: page
title: "Blueprint Diagrams"
permalink: /blueprints/
---

This page collects the live Mermaid diagrams for the main Webomage blueprints.

**Legend**

- **Architecture & infra blueprints** – platform-level diagrams (clusters, gateways, databases, observability).
- **Stack blueprints** – application-stack patterns (LAMP, MERN, MEAN, MEVN, PERN) that often sit on top of those platforms.

## Site map

<div class="mermaid">
{% include_relative docs/sitemap.mmd %}
</div>

## Architecture & infra blueprints

### Python API on Kubernetes (AWS EKS)

<div class="mermaid">
{% include_relative docs/blueprints/python-api-k8s.mmd %}
</div>

### Node.js / Next.js with Supabase

<div class="mermaid">
{% include_relative docs/blueprints/node-next-supabase.mmd %}
</div>

### Go microservices behind an API gateway

<div class="mermaid">
{% include_relative docs/blueprints/go-microservices-gateway.mmd %}
</div>

### Rust API with Postgres and Redis

<div class="mermaid">
{% include_relative docs/blueprints/rust-api-postgres.mmd %}
</div>

## Stack blueprints (LAMP / MERN / MEAN / MEVN / PERN)

### LAMP on EC2 / DigitalOcean Droplet

<div class="mermaid">
{% include_relative docs/blueprints/lamp-ec2-do.mmd %}
</div>

### LEMP on EC2 / DigitalOcean Droplet

<div class="mermaid">
{% include_relative docs/blueprints/lemp-ec2-do.mmd %}
</div>

### MERN on EC2 / DigitalOcean Droplet

<div class="mermaid">
{% include_relative docs/blueprints/mern-ec2-do.mmd %}
</div>

### MEAN on EC2 / DigitalOcean Droplet

<div class="mermaid">
{% include_relative docs/blueprints/mean-ec2-do.mmd %}
</div>

### MEVN on EC2 / DigitalOcean Droplet

<div class="mermaid">
{% include_relative docs/blueprints/mevn-ec2-do.mmd %}
</div>

### PERN on EC2 / DigitalOcean Droplet

<div class="mermaid">
{% include_relative docs/blueprints/pern-ec2-do.mmd %}
</div>
