---
layout: page
title: "Case Study: Zero-Trust AI Platform on Kubernetes"
permalink: /cases/zero-trust-ai-platform/
---

## Overview

A product team was scaling AI-powered features on Kubernetes without a clear security or reliability model. LLM gateways, feature stores, and background workers all shared the same flat network. One compromised pod or leaked API key could expose sensitive data and burn through cloud budget.

Webomage was brought in to define and implement a zero-trust architecture for their AI workloads on Kubernetes: tightening network paths, hardening ingress, and improving observability while keeping the development pace high.

## Context

- AI features were already in production: LLM-backed endpoints, embeddings, and async pipelines.
- The platform ran on managed Kubernetes in the cloud, with default networking and ad‑hoc policies.
- Multiple teams were shipping microservices, but there was no single view of how traffic actually flowed.
- Compliance and customer security questionnaires were becoming more frequent and more detailed.

## Challenges

- **Flat, permissive networking** – most pods could talk to most other pods, including AI gateways and data stores.
- **Powerful AI endpoints** – LLM and vector search endpoints exposed high‑privilege APIs and secrets.
- **Limited observability** – logs and traces for AI traffic were incomplete; it was hard to see cross‑service flows.
- **No clear zero‑trust story** – security controls were described in terms of best effort, not enforceable policy.
- **Production risk** – introducing stricter policies without breaking live AI features required careful rollout.

## Approach

1. **Discovery & threat modeling**  
   - Mapped services involved in AI workloads: gateways, feature stores, model backends, data pipelines.  
   - Identified trust boundaries, sensitive paths, and failure modes (e.g. lateral movement, key leakage).  
   - Reviewed existing manifests, ingress configuration, and cluster networking.

2. **Zero‑trust blueprint for AI on Kubernetes**  
   - Defined a reference architecture using namespace boundaries, NetworkPolicies, and mTLS where possible.  
   - Chose a CNI with strong policy support (e.g. Calico/Cilium) for pod‑level controls.  
   - Documented which services were allowed to reach each AI endpoint and data store, and on which ports.

3. **Incremental network policy rollout**  
   - Started with "observe"-style policies that only logged flows instead of blocking.  
   - Used metrics and flow logs to refine which pods actually needed to talk.  
   - Gradually tightened NetworkPolicies around LLM gateways, feature stores, and admin APIs.

4. **Ingress, identity, and secrets**  
   - Hardened ingress routes for AI endpoints with stricter authentication and rate limiting.  
   - Ensured sensitive AI services used identity-aware access (service accounts, RBAC, and scoped tokens).  
   - Standardised secrets management so model keys and API tokens were rotated and scoped correctly.

5. **Observability & runbooks**  
   - Enhanced tracing, logging, and dashboards for AI request paths across services.  
   - Added alerts for unexpected traffic patterns (e.g. new callers to AI gateways, unusual error spikes).  
   - Wrote runbooks for investigating suspicious traffic and safely tightening policies further.

6. **Handover & enablement**  
   - Documented the zero‑trust model in plain language for engineering and security stakeholders.  
   - Paired with the internal team on adding policies for new services and features.  
   - Left a backlog of future improvements (e.g. cluster‑to‑cluster trust, stronger mTLS coverage).

## Outcomes

- **Reduced blast radius** – LLM gateways, feature stores, and admin APIs were no longer reachable from arbitrary pods.
- **Clearer security story** – the client could answer questionnaires with concrete, enforced controls, not intentions.
- **Better visibility** – AI traffic patterns were visible in dashboards, with alerts for anomalous behavior.
- **Safer iteration** – the team had patterns for adding new services and tightening policies without breaking prod.

## Relevant capabilities

This engagement drew on several of Webomage's strengths:

- Kubernetes and platform engineering for AI workloads.
- Zero‑trust networking and NetworkPolicies with Calico/Cilium‑style CNIs.
- Observability for complex, AI‑heavy traffic flows.
- Pragmatic security work that fits real delivery constraints.

➡️ Planning AI features on Kubernetes or revisiting your security posture? [Start a conversation](/contact/).
