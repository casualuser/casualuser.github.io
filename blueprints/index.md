---
layout: page
title: Architecture Blueprints
permalink: /blueprints/
---

# Architecture Blueprints

Explore our library of deployment patterns, organized by business growth stage.

<div class="blueprint-gallery-container">
{% assign segments = "stack,startup,smb,business,enterprise" | split: "," %}

{% for segment in segments %}
<section class="segment-section">
  <div class="segment-header">
    <h2 class="segment-title">{{ segment | capitalize }}</h2>
    <p class="blueprint-desc">
      {% case segment %}
        {% when 'stack' %}
          Classic, battle-tested foundations. "The Standards".
        {% when 'startup' %}
          Rapid iteration, low operational overhead. "Monolith on a Box".
        {% when 'smb' %}
          Scalable foundations, decoupled frontends, managed databases.
        {% when 'business' %}
          Microservices, API gateways, container orchestration.
        {% when 'enterprise' %}
          Compliance, platform engineering, GitOps, service mesh.
      {% endcase %}
    </p>
  </div>

  <div class="blueprint-grid">
  {% assign segment_blueprints = site.data.blueprints | where: "segment", segment %}
  
  {% if segment_blueprints.size == 0 %}
    <div class="empty-state">
      <p>No blueprints available for this segment yet.</p>
    </div>
  {% endif %}

  {% for blueprint in segment_blueprints %}
    <a href="/blueprints/{{ blueprint.id }}.html" class="blueprint-card-link">
      <div class="blueprint-card segment-border-{{ segment }}">
        <div class="card-header">
          <h3>{{ blueprint.name }}</h3>
        </div>
        
        <div class="card-body">
          <p class="summary">{{ blueprint.summary }}</p>
          <div class="mini-stack">
            {% for tag in blueprint.tags limit:4 %}
              <span class="tech-tag">{{ tag }}</span>
            {% endfor %}
          </div>
        </div>
        
        <div class="card-footer">
          <span class="learn-more">View Architecture →</span>
        </div>
      </div>
    </a>
  {% endfor %}
  </div>
</section>
{% endfor %}
</div>
