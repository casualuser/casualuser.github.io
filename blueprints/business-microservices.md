---
layout: blueprint-detail
title: "Business: Microservices Gateway"
blueprint_id: business-microservices
segment: business
---

# Business: Microservices Gateway

A modern architecture for scaling businesses, using an API Gateway to
unify multiple distinct microservices (likely containerized).

## Architecture Diagram

<div class="mermaid">
{% include_relative business-microservices.mmd %}
</div>

## Description

For established businesses with multiple product lines or domains, a monolith
can become a bottleneck. This architecture introduces a strong API Gateway
pattern to route traffic to specialized services.

**Core Components:**
*   **API Gateway**: A high-performance entry point (Kong, Tyk, or Cloud Native LB) that handles auth, rate limiting, and routing.
*   **Microservices**: Distinct services (e.g., Billing, Users, Catalog) written in the best tool for the job.
*   **Container Runtime**: Services run in containers (Docker/K8s) for isolation.
*   **Event Bus**: Asynchronous communication happens via RabbitMQ, Kafka, or Cloud Pub/Sub.

**Why this stack?**
It allows teams to work independently on different "Bounded Contexts" while presenting a unified API surface to clients.

## Tech Stack

| Component | Technology |
| :--- | :--- |
| **Segment** | business |
| **Deployment** | containers |
| **Gateway** | api-gateway |
| **Orchestration** | kubernetes-ecs |
| **Communication** | rest-grpc |


