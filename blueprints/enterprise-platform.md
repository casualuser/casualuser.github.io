---
layout: blueprint-detail
title: "Enterprise: Cloud Native Platform"
blueprint_id: enterprise-platform
segment: enterprise
---

# Enterprise: Cloud Native Platform

A comprehensive Kubernetes-based internal developer platform with
Service Mesh, GitOps, Compliance Monitoring, and Observability.

## Architecture Diagram

<div class="mermaid">
{% include_relative enterprise-platform.mmd %}
</div>

## Description

At the enterprise level, the focus shifts from "running an app" to "running a platform."
This architecture provides a standardized "Paved Road" for hundreds of developers.

**Core Components:**
*   **Kubernetes (K8s) Cluster**: The universal substrate for compute.
*   **GitOps (ArgoCD)**: Deployment state is managed strictly via Git repositories, ensuring auditability and rollback.
*   **Service Mesh (Istio/Linkerd)**: Automatically handles mTLS encryption, traffic splitting, and deep telemetry without code changes.
*   **Policy Engine (OPA)**: Enforces corporate compliance (e.g., "No public info in logs", "Required labels") at the admission level.
*   **Observability Stack**: Prometheus, Grafana, and ELK/Loki stack for full-system visibility.

**Compliance & Security:**
All traffic is encrypted in transit and at rest. Access is controlled via OIDC/SSO integration.

## Tech Stack

| Component | Technology |
| :--- | :--- |
| **Segment** | enterprise |
| **Orchestration** | kubernetes |
| **Gitops** | argocd |
| **Mesh** | istio |
| **Observability** | full-stack |


