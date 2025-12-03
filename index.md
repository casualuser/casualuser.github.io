---
layout: home
title: "Home"
---

# Webomage

Webomage is a small, senior engineering agency that fixes and builds production infrastructure, AI features, and platforms for SaaS and infra-heavy teams, led by **Aleksei Tcelishchev**.

We stabilise and modernise cloud-native systems on AWS and Kubernetes, plug AI/LLM into existing products, and ship production-grade MVPs and internal platforms.

### What we help with

- DevOps, SRE, and Kubernetes platforms on AWS (Terraform, GitOps, observability)
- Systems integration, data pipelines, and high-traffic backends that connect existing and new services
- AI/LLM-powered products, RAG pipelines, and internal copilots for operations and support
- Fullstack web and mobile backends that can start as MVPs and grow to production systems
- Compliance-aware design for regulated domains (HIPAA, SOC 2 style requirements)

➡️ Ready to talk? [Start a project or request an audit](/contact/) · [See how we work](/process/)

## Start here

- [Team & Aleksei's background](/team/)
- [Projects & Case Studies](/projects/)
- [AI & LLM Infrastructure](/ai-infra/)
- [DevOps & Cloud Stack](/devops-stack/)
- [Blockchain & Web3](/blockchain/)
- [Contact](/contact/)

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
