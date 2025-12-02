---
layout: page
title: "Case Study: Serverless Consolidation for Event-Driven Workloads"
permalink: /cases/serverless-consolidation/
---

## Overview

A product team had accumulated **50+ AWS Lambda functions, cron jobs, and ad-hoc scripts** over several years. Deployments were fragile, monitoring was inconsistent, and no one had a complete picture of what ran where.

Webomage helped consolidate this into a **structured, observable serverless architecture** using the Serverless Framework, clear environments, and CI/CD.

## Challenges

- **Lambda sprawl** – dozens of functions created over time by different people with no shared patterns.
- **Manual, inconsistent deployments** – functions updated via console clicks or one-off scripts.
- **Limited observability** – hard to see which functions were failing, retrying, or driving most cost.
- **No clear environments** – dev/staging/prod boundaries were fuzzy, increasing risk when shipping changes.
- **Onboarding pain** – new engineers struggled to understand which jobs mattered and how they interacted.

## Approach

1. **Inventory & mapping**  
   - Collected all functions, scripts, and triggers (events, schedules, queues).  
   - Grouped them by domain and business purpose, not just by technical resource.

2. **Designing a target serverless architecture**  
   - Designed a set of Serverless Framework services with clear boundaries and naming.  
   - Standardised environment configuration, secrets handling, and IAM roles.  
   - Introduced dev/stage/prod stages with predictable URLs and triggers.

3. **Incremental consolidation**  
   - Migrated functions into Serverless Framework definitions in batches, with tests where possible.  
   - Replaced ad-hoc scripts and console changes with version-controlled deploys.  
   - Added health checks and alarms for critical flows (queues, scheduled jobs, webhooks).

4. **CI/CD & guardrails**  
   - Wired deployments into Git-based CI/CD (GitHub Actions / GitLab CI).  
   - Added basic checks before deploy (linting, tests, dry runs).  
   - Documented how to roll back and how to safely roll out changes between stages.

5. **Handover & documentation**  
   - Produced diagrams and runbooks that showed how functions, queues, and external services fit together.  
   - Gave the team playbooks for adding new functions in the same structured way.

## Outcomes

- **Reduced operational risk** – fewer “mystery functions” and safer deploys across environments.  
- **Better visibility** – dashboards and alerts around key flows instead of silent failures.  
- **Simpler onboarding** – new engineers could see serverless topology and deployment patterns in one place.  
- **Easier evolution** – the team could add new event-driven features without worsening the sprawl.

## Relevant capabilities

- Serverless Framework and Terraform for event-driven workloads on AWS.  
- CI/CD patterns for Lambda and supporting services.  
- Observability and alerting for asynchronous systems.  
- Pragmatic consolidation from “Lambda sprawl” to a maintainable architecture.

➡️ If your serverless setup feels fragile or hard to reason about, [start a conversation](/contact/).
