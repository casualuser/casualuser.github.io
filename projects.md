---
layout: page
title: "Projects & Case Studies"
permalink: /projects/
---

# Projects & Case Studies

A selection of Webomage engagements across DevOps, cloud infrastructure, blockchain, and AI/ML integrations, with enough detail to see how we actually work.

## AI & Automation

- **YC-backed AI Startup (Hong Kong)**  
  Integrated multiple AI tools and LLM services (including LangChain and OpenAI-like APIs) into production infrastructure, with scalable deployments, advanced debugging, and contributions back to open source.  
  See the dedicated case study: [YC-backed AI Startup – AI Infrastructure & Tooling](/cases/yc-ai-startup/).

- **Long-form psychiatric session voice analytics**  
  Refactored a Next.js + Google STT + Vertex AI MVP into a production-ready pipeline processing 1.5h+ psychiatric voice sessions with compliance-aware storage and analysis.  
  See the dedicated case study: [Long-Form Psychiatric Session Voice Analytics](/cases/psychiatric-voice-ai/).

- **US Law Firms Association – CRM Automation & Recovery**  
  Built large-scale CRM automation integrating AI-based calls and emotional context detection in human responses, enabling more adaptive client interactions.  
  See also the dedicated case study: [Law Firms Association CRM Recovery](/cases/law-firms-crm/).

- **Healthcare AI Services**  
  Designed and deployed AI-powered healthcare services with strong emphasis on HIPAA, SOC 2, and GDPR readiness, auditable data flows, and reliable pipelines.

## Blockchain & Web3

- **Ripple/Stellar & Hyperledger Sawtooth**  
  Participated in crafting and deployment of Ripple/Stellar verification nodes and Intel/IBM Hyperledger Sawtooth-based blockchain systems.

- **Ethereum & DApps**  
  Worked with Ethereum nodes, smart contracts, ICO/sidechain scenarios, wallet and transaction management, and The Graph for advanced data querying.

## Cloud & DevOps

- **AWS Infrastructure & Serverless**  
  Designed secure, scalable AWS architectures with Terraform, Lambda, API Gateway, Auto Scaling, and CI/CD. Implemented asynchronous Lambda flows and complex deployment strategies.

- **Kubernetes & Containerization**  
  Architected Kubernetes clusters (including EKS and self-hosted) with advanced networking, monitoring, and deployment patterns using Docker and GitOps.  
  See the dedicated case study: [Kubernetes Platform Migration for SaaS](/cases/k8s-platform-migration/).

## Deep Dives

For topic-focused details, see:

- [AI & LLM Infrastructure](/ai-infra/)
- [Blockchain & Web3](/blockchain/)
- [DevOps & Cloud Stack](/devops-stack/)

For more details, see the full [Curriculum Vitae](/cv/).

➡️ If one of these sounds close to what you're building, [start a conversation](/contact/).

<script>
  (function () {
    if (navigator.doNotTrack === "1" || window.doNotTrack === "1") return;

    try {
      fetch("https://pqbbjgeapylcengbuvee.functions.supabase.co/log-event", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        keepalive: true,
        body: JSON.stringify({
          path: window.location.pathname,
          referrer: document.referrer || null,
        }),
      }).catch(function () {});
    } catch (e) {}
  })();
</script>
