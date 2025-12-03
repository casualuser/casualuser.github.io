---
layout: page
title: "Blog"
permalink: /blog/
---

# Blog

Longer-form write-ups, deep dives, and case-style notes on DevOps, integrations, AI/LLM infrastructure, and product delivery at Webomage.

<ul class="post-list">
  {% assign blog_posts = site.posts | where_exp: "post", "post.categories contains 'blog'" %}
  {% if blog_posts.size == 0 %}
  <p>No blog posts yet. Stay tuned.</p>
  {% else %}
  {% for post in blog_posts %}
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
