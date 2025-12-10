---
layout: blueprint-detail
title: "LEMP Stack (High Performance)"
blueprint_id: lemp-stack
segment: stack
---

# LEMP Stack (High Performance)

Linux, Nginx, MySQL, PHP. High concurrency alternative to LAMP.

## Architecture Diagram

<div class="mermaid">
{% include_relative lemp-stack.mmd %}
</div>

## Description

The LEMP stack swaps Apache for Nginx, providing better performance under high concurrency and lower memory usage for static asset serving.

PHP is executed via PHP-FPM (FastCGI Process Manager), which allows for better process management and separation of concerns compared to Apache's mod_php.

## Tech Stack

| Component | Technology |
| :--- | :--- |
| **App** | PHP-FPM |
| **Web** | Nginx |
| **Db** | MySQL / MariaDB |
| **Os** | Linux |


