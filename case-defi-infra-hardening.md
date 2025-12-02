---
layout: page
title: "Case Study: DeFi Infrastructure Hardening & Observability"
permalink: /cases/defi-infra-hardening/
---

## Overview

A DeFi platform running on Ethereum and sidechains was experiencing **intermittent outages, stuck transactions, and unreliable indexers**. RPC providers, gas spikes, and fragile node setups made it hard to trust on-chain data.

Webomage worked with the team to **harden their infrastructure and observability**, so they could operate their protocol with more confidence.

## Challenges

- **Unreliable RPC and node providers** – intermittent errors and rate limits under load.  
- **Nonce and gas issues** – stuck, duplicated, or excessively expensive transactions.  
- **Fragile indexing stack** – shared IPFS and lightly configured indexers made data incomplete or late.  
- **Limited observability** – hard to see where failures occurred in on-chain/off-chain flows.  
- **High expectations from users and partners** – outages directly affected TVL, trading, and user trust.

## Approach

1. **End-to-end flow mapping**  
   - Mapped how transactions flowed from the app through signers, nodes, and smart contracts, into indexers and analytics.  
   - Identified failure points around RPC, indexing, and third-party dependencies.

2. **Node & provider strategy**  
   - Introduced a mix of dedicated nodes and high-quality providers for redundancy.  
   - Tuned connection settings, batching, and retry behaviour to handle spikes.  
   - Clarified which flows required low latency vs. eventual consistency.

3. **Indexing & data layer improvements**  
   - Moved from shared/community IPFS to dedicated storage where appropriate.  
   - Improved The Graph subgraphs and related indexers for critical contracts.  
   - Ensured key metrics and balances were derived from trustworthy data paths.

4. **Observability & alerts**  
   - Added monitoring for node health, RPC error rates, queue backlogs, and key contract events.  
   - Defined alerts around conditions that mattered to users (e.g. withdrawal/claim failures).  
   - Gave dashboards for protocol operators and support teams.

5. **Operational playbooks**  
   - Created runbooks for common incident types (RPC provider issues, indexer lag, chain events).  
   - Documented safe procedures for rolling node upgrades and configuration changes.

## Outcomes

- **Higher reliability** – fewer protocol incidents tied to infra or indexing problems.  
- **Faster incident response** – clearer signals and runbooks when things did go wrong.  
- **Better partner and user confidence** – infra issues no longer dominated the risk story.  
- **Stronger foundation** – the team could keep iterating on product and protocol design without fear of infra collapse.

## Relevant capabilities

- Ethereum and sidechain infrastructure operations.  
- DeFi application backends and indexers (The Graph and related tooling).  
- Monitoring, logging, and alerting for blockchain workloads.  
- Secure integrations with price feeds and analytics APIs.

➡️ If your DeFi or Web3 product is limited by infrastructure issues, [start a conversation](/contact/).
