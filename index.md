---
layout: home
title: "Home"
---

# Webomage

DevOps, Integration, AI/LLM, Fullstack, Mobile & Compliance engineering agency led by **Aleksei Tcelishchev**.

We design and run cloud-native systems on AWS and Kubernetes, integrate AI/LLM and complex backend services, modernize legacy stacks, and ship production-grade MVPs.

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
