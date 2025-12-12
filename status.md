---
layout: page
title: System Status
permalink: /status/
---

<div class="status-container">
  <div class="status-header">
    <h1>System Operational Status</h1>
    <p class="last-updated">Last Updated: {{ site.data.status.updated_at }}</p>
  </div>

  <div class="status-overview status-{{ site.data.status.overall_status }}">
    <span class="status-indicator"></span>
    <span class="status-text">All Systems {{ site.data.status.overall_status | capitalize }}</span>
  </div>

  <div class="system-list">
    {% for system in site.data.status.systems %}
    <div class="system-card">
      <div class="system-header">
        <h3>{{ system.name }}</h3>
        <span class="status-badge status-{{ system.status }}">{{ system.status | capitalize }}</span>
      </div>
      <p class="system-details">{{ system.details }}</p>
      <span class="provider-badge">{{ system.provider }}</span>
    </div>
    {% endfor %}
  </div>
</div>

<style>
  .status-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 2rem 0;
  }
  
  .last-updated {
    color: #666;
    font-size: 0.9rem;
  }
  
  .status-overview {
    background: #1e1e1e;
    border: 1px solid #333;
    padding: 1.5rem;
    border-radius: 8px;
    margin: 2rem 0;
    display: flex;
    align-items: center;
    gap: 1rem;
  }
  
  .status-operational .status-indicator {
    display: inline-block;
    width: 12px;
    height: 12px;
    background-color: #22c55e;
    border-radius: 50%;
    box-shadow: 0 0 10px rgba(34, 197, 94, 0.5);
  }
  
  .status-text {
    font-weight: 600;
    font-size: 1.2rem;
  }
  
  .system-list {
    display: grid;
    gap: 1rem;
  }
  
  .system-card {
    background: #1e1e1e;
    border: 1px solid #333;
    padding: 1rem 1.5rem;
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  
  .system-header h3 {
    margin: 0;
    font-size: 1.1rem;
  }
  
  .status-badge {
    display: inline-block;
    padding: 2px 8px;
    border-radius: 4px;
    font-size: 0.8rem;
    font-weight: 600;
    text-transform: uppercase;
    margin-left: 1rem;
  }
  
  .status-badge.status-operational {
    color: #86efac;
    background-color: rgba(34, 197, 94, 0.1);
  }
  
  .system-details {
    margin: 0;
    color: #999;
    font-size: 0.9rem;
    flex: 1;
    margin-left: 2rem;
  }
  
  .provider-badge {
    font-size: 0.75rem;
    color: #666;
    border: 1px solid #333;
    padding: 2px 6px;
    border-radius: 4px;
  }
</style>
