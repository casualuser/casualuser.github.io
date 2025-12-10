---
layout: page
title: Architecture Blueprints
permalink: /blueprints/gallery/
---

# Architecture Blueprints

Explore our library of deployment patterns, organized by business growth stage.

{% assign segments = "startup,smb,business,enterprise" | split: "," %}

{% for segment in segments %}
<section class="segment-section">
  <div class="segment-header">
    <h2 class="segment-title">{{ segment | capitalize }}</h2>
    <p class="segment-desc">
      {% case segment %}
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

<style>
  .segment-section {
    margin-bottom: 4rem;
  }

  .segment-header {
    border-bottom: 2px solid #eaecef;
    margin-bottom: 1.5rem;
    padding-bottom: 0.5rem;
  }

  .segment-title {
    font-size: 1.8rem;
    margin-bottom: 0.5rem;
    color: #24292e;
  }

  .segment-desc {
    color: #586069;
    font-size: 1.1rem;
    margin: 0;
  }

  .blueprint-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.5rem;
  }

  .blueprint-card-link {
    text-decoration: none;
    color: inherit;
    display: block;
  }

  .blueprint-card {
    border: 1px solid #e1e4e8;
    border-radius: 8px;
    padding: 1.5rem;
    height: 100%;
    display: flex;
    flex-direction: column;
    background: #fff;
    transition: all 0.2s ease;
    border-top: 4px solid #ccc; /* fallback */
  }

  .segment-border-startup { border-top-color: #28a745; }
  .segment-border-smb { border-top-color: #0366d6; }
  .segment-border-business { border-top-color: #6f42c1; }
  .segment-border-enterprise { border-top-color: #d73a49; }

  .blueprint-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 12px 20px rgba(0,0,0,0.1);
  }

  .card-header h3 {
    margin: 0 0 1rem 0;
    font-size: 1.2rem;
    color: #0366d6;
  }

  .summary {
    font-size: 0.95rem;
    color: #444;
    line-height: 1.5;
    flex-grow: 1;
    margin-bottom: 1rem;
  }

  .mini-stack {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    margin-top: auto;
  }

  .tech-tag {
    font-size: 0.75rem;
    background: #f6f8fa;
    color: #586069;
    padding: 2px 8px;
    border-radius: 12px;
    border: 1px solid #e1e4e8;
  }

  .card-footer {
    margin-top: 1.5rem;
    font-size: 0.9rem;
    color: #0366d6;
    font-weight: 600;
  }
</style>
