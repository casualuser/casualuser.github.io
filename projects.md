---
layout: page
title: "Projects & Case Studies"
permalink: /projects/
---

# Projects & Case Studies

A selection of engagements and technical work across DevOps, cloud infrastructure, blockchain, and AI/ML integrations.

## AI & Automation

- **YC-backed AI Startup (Hong Kong)**  
  Integrated multiple AI tools and LLM services (including LangChain and OpenAI-like APIs) into production infrastructure, with scalable deployments, advanced debugging, and contributions back to open source.

- **US Law Firms Association – CRM Automation**  
  Built large-scale CRM automation integrating AI-based calls and emotional context detection in human responses, enabling more adaptive client interactions.

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

## Deep Dives

For topic-focused details, see:

- [AI & LLM Infrastructure](/ai-infra/)
- [Blockchain & Web3](/blockchain/)
- [DevOps & Cloud Stack](/devops-stack/)

For more details, see the full [Curriculum Vitae](/cv/).

<script>
  (function () {
    if (navigator.doNotTrack === "1" || window.doNotTrack === "1") return;

    try {
      fetch("https://rqqgjbsneyrlbvbqzdmb.functions.supabase.co/log-event", {
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
