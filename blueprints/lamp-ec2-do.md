---
layout: page
title: "LAMP on EC2 / DigitalOcean Droplet Blueprint"
permalink: /blueprints/lamp-ec2-do/
---

This blueprint shows a classic LAMP (Linux, Apache, MySQL/MariaDB, PHP) stack across a few common deployment variants.

### LAMP on AWS EC2 (VM)

Single EC2 instance running Apache/PHP with RDS MySQL and an Application Load Balancer in front.

<div class="mermaid">
{% include_relative lamp-ec2-vm.mmd %}
</div>

### LAMP on AWS EC2 with docker-compose

Apache/PHP and MySQL run as containers on one EC2 instance, orchestrated with docker-compose and fronted by an ALB.

<div class="mermaid">
{% include_relative lamp-ec2-docker.mmd %}
</div>

### LAMP on AWS ECS (Fargate)

LAMP packaged into containers and run as an ECS service on Fargate, behind an ALB, with RDS MySQL.

<div class="mermaid">
{% include_relative lamp-ecs.mmd %}
</div>

### LAMP on DigitalOcean Droplet (VM)

Traditional LAMP installed directly on a Droplet, with DO Managed MySQL and an optional DO Load Balancer.

<div class="mermaid">
{% include_relative lamp-do-vm.mmd %}
</div>

### LAMP on DigitalOcean Droplet with docker-compose

Apache/PHP and MySQL as containers on a Droplet, orchestrated by docker-compose and optionally fronted by a DO Load Balancer.

<div class="mermaid">
{% include_relative lamp-do-docker.mmd %}
</div>

See also:

- [Solutions – Stack Blueprints](/solutions/#stack-blueprints)
- [Blueprint Diagrams](/blueprints/)
