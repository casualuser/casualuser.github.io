---
layout: page
title: "Case Study: Long-Form Psychiatric Session Voice Analytics"
permalink: /cases/psychiatric-voice-ai/
---

## Overview

A mental health product team needed to turn **1.5h+ psychiatric voice sessions** into structured, searchable artefacts: transcripts, summaries, risk indicators, and follow-up actions.

Their initial MVP (Next.js + Google Speech-to-Text + Vertex AI) proved the idea but was **hard to operate, slow, and not clearly aligned with HIPAA / SOC 2 style requirements**.

Webomage was brought in to refactor the MVP into a production-ready, observable system.

## Challenges

- **Very long audio sessions** (1.5h+), with dropouts and partial uploads.
- **Multiple AI components** (STT, LLMs, post-processing) wired together in an ad-hoc way.
- **Latency and reliability** issues during transcription and analysis.
- **Compliance expectations** similar to HIPAA / SOC 2 (data handling, access control, auditability).
- **Product iteration pressure**: the team wanted to keep experimenting while stabilising the platform.

## Approach

1. **Architecture & data-flow review**  
   - Mapped how audio was uploaded, chunked, transcribed, analysed, and stored.  
   - Identified failure points, duplication, and missing observability.

2. **Backend refactor with tRPC**  
   - Introduced a **tRPC-based backend** to formalise API contracts between frontend and backend.  
   - Centralised validation, error handling, and request tracking.

3. **Streaming-friendly audio & STT pipeline**  
   - Adjusted how long audio was chunked and queued for STT to avoid timeouts.  
   - Improved retries, backoff, and idempotency for STT calls.

4. **LLM processing & artefacts**  
   - Structured LLM prompts and responses to produce clear artefacts: summaries, highlights, tags, and risk indicators.  
   - Ensured artefacts were **versioned and traceable** back to raw inputs.

5. **Compliance-aware storage & access**  
   - Clarified what needed to be stored, for how long, and who could access it.  
   - Improved separation of concerns between PII, raw audio, transcripts, and derived artefacts.  
   - Aligned logging and access patterns with HIPAA / SOC 2 style expectations.

6. **Observability and cost visibility**  
   - Added metrics and logs for STT and LLM usage, latency, and failures.  
   - Gave the team dashboards to understand performance and cost per session.

## Outcomes

- A **production-ready pipeline** for multi-hour psychiatric voice sessions, with clear failure modes and retries.  
- **tRPC-backed backend** that simplified frontend–backend integration and made the system easier to extend.  
- **Better compliance posture** through improved data flows, access control patterns, and auditability.  
- Visibility into **performance and cost per session**, enabling informed product decisions.

## Relevant capabilities

This project leveraged several of Webomage's strengths:

- AI/LLM infrastructure and multi-step pipelines (STT + LLM + post-processing).  
- Strong DevOps and observability practices for AI-heavy workloads.  
- Compliance-aware design for sensitive healthcare/mental health data.  
- Experience turning MVPs into stable, evolvable products.

---

➡️ Have an AI/LLM MVP that needs to become a reliable product? [Start a conversation](/contact/).
