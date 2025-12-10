---
layout: page
title: Architecture Blueprints
permalink: /blueprints/gallery/
---

# Architecture Blueprints

Explore our gallery of deployment patterns, infrastructure stacks, and application architectures.

<div class="blueprint-filters">
  <input type="text" id="blueprintSearch" placeholder="Search blueprints (e.g., 'python', 'aws', 'kubernetes')..." class="search-box">
</div>

<div class="blueprint-grid">
{% for blueprint in site.data.blueprints %}
  <div class="blueprint-card" data-tags="{{ blueprint.tags | join: ' ' | downcase }}" data-name="{{ blueprint.name | downcase }}" data-id="{{ blueprint.id }}">
    <div class="card-header">
      <h3>{{ blueprint.name }}</h3>
      <span class="blueprint-id">v{{ blueprint.version }}</span>
    </div>
    
    <div class="card-body">
      <p class="summary">{{ blueprint.summary }}</p>
      
      <div class="stack-details">
        <h4>Stack</h4>
        <ul>
        {% for item in blueprint.stack %}
          <li><strong>{{ item[0] | replace: '_', ' ' | capitalize }}:</strong> {{ item[1] }}</li>
        {% endfor %}
        </ul>
      </div>

      <div class="components-preview">
        <h4>Key Components</h4>
        <div class="tags">
        {% for component in blueprint.components limit:4 %}
           <span class="component-tag">{{ component.name }}</span>
        {% endfor %}
        {% if blueprint.components.size > 4 %}
           <span class="more-tag">+{{ blueprint.components.size | minus: 4 }} more</span>
        {% endif %}
        </div>
      </div>
    </div>

    <div class="card-footer">
      <div class="tech-tags">
        {% for tag in blueprint.tags %}
          <span class="tech-tag">{{ tag }}</span>
        {% endfor %}
      </div>
      <a href="/docs/blueprints/{{ blueprint.id }}.mmd" class="btn btn-sm">View Diagram</a>
    </div>
  </div>
{% endfor %}
</div>

<style>
  .blueprint-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
    gap: 2rem;
    margin-top: 2rem;
  }

  .blueprint-card {
    border: 1px solid #e1e4e8;
    border-radius: 8px;
    padding: 1.5rem;
    display: flex;
    flex-direction: column;
    background: #fff;
    transition: transform 0.2s, box-shadow 0.2s;
  }
  
  .blueprint-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.1);
  }

  .card-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    margin-bottom: 1rem;
    border-bottom: 2px solid #f6f8fa;
    padding-bottom: 0.5rem;
  }

  .card-header h3 {
    margin: 0;
    font-size: 1.25rem;
    color: #24292e;
  }

  .blueprint-id {
    font-size: 0.8rem;
    color: #6a737d;
    font-family: monospace;
  }

  .summary {
    color: #586069;
    font-size: 0.95rem;
    margin-bottom: 1.5rem;
    line-height: 1.5;
  }

  .stack-details ul {
    list-style: none;
    padding: 0;
    margin: 0;
    font-size: 0.9rem;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0.5rem;
  }
  
  .stack-details li {
    background: #f1f8ff;
    padding: 0.25rem 0.5rem;
    border-radius: 4px;
    font-family: monospace;
  }

  .components-preview {
    margin-top: 1rem;
  }

  .component-tag {
    display: inline-block;
    font-size: 0.8rem;
    background: #fff;
    border: 1px solid #d1d5da;
    color: #444;
    padding: 2px 6px;
    border-radius: 12px;
    margin-right: 4px;
    margin-bottom: 4px;
  }

  .more-tag {
    font-size: 0.8rem;
    color: #6a737d;
    font-style: italic;
  }

  .card-footer {
    margin-top: auto;
    padding-top: 1.5rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .tech-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 4px;
  }

  .tech-tag {
    font-size: 0.75rem;
    background: #24292e;
    color: #fff;
    padding: 2px 8px;
    border-radius: 4px;
  }

  .search-box {
    width: 100%;
    padding: 1rem;
    font-size: 1rem;
    border: 2px solid #e1e4e8;
    border-radius: 6px;
    margin-bottom: 1rem;
  }
  
  .btn-sm {
      background-color: #0366d6;
      color: white;
      padding: 0.5rem 1rem;
      text-decoration: none;
      border-radius: 6px;
      font-size: 0.9rem;
  }
  .btn-sm:hover {
      background-color: #0256b4;
      text-decoration: none;
  }
</style>

<script>
  document.getElementById('blueprintSearch').addEventListener('keyup', function(e) {
    const term = e.target.value.toLowerCase();
    const cards = document.querySelectorAll('.blueprint-card');
    
    cards.forEach(card => {
      const tags = card.getAttribute('data-tags');
      const name = card.getAttribute('data-name');
      const id = card.getAttribute('data-id');
      
      if (tags.includes(term) || name.includes(term) || id.includes(term)) {
        card.style.display = 'flex';
      } else {
        card.style.display = 'none';
      }
    });
  });
</script>
