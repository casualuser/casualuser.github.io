---
layout: home
title: "Home"
---

# Webomage

Webomage is a small, senior engineering agency for DevOps, integrations, AI/LLM, fullstack backends, mobile, and compliance, led by **Aleksei Tcelishchev**.

We stabilise and modernise cloud-native systems on AWS and Kubernetes, integrate AI/LLM into existing products, and ship production-grade MVPs and platforms.

### What we help with

- Designing and operating DevOps, SRE, and cloud platforms on AWS and Kubernetes
- High-traffic system integrations and backends that connect existing and new services
- AI/LLM-powered products, RAG pipelines, and internal tools
- Fullstack web and mobile backends for MVPs and production systems
- Compliance-aware design (HIPAA, SOC 2 style requirements)

➡️ Ready to talk? [Start a project or request an audit](/contact/) · [See how we work](/process/)

## Start here

- [Short Resume](/resume/)
- [Full Curriculum Vitae](/cv/)
- [Projects & Case Studies](/projects/)
- [AI & LLM Infrastructure](/ai-infra/)
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
