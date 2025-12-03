---
layout: page
title: "News & Updates"
permalink: /news/
---

# News & Updates

Curated AI, DevOps, and cloud news relevant to Webomage clients, plus short updates on our work-in-progress, releases, and talks.

<ul class="post-list">
  {% assign news_posts = site.posts | where_exp: "post", "post.categories contains 'news'" %}
  {% if news_posts.size == 0 %}
  <p>No news yet. When there is, it will show up here.</p>
  {% else %}
  {% for post in news_posts %}
  <li>
    <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
    <h3>
      <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h3>
    {% if post.excerpt %}
    <p>{{ post.excerpt | strip_html | truncate: 180 }}</p>
    {% endif %}
  </li>
  {% endfor %}
  {% endif %}
</ul>
