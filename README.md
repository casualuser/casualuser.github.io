# webomage.com - Public Website Repository

## Overview

This repository contains the public-facing Webomage website - a Jekyll site showcasing DevOps, AI & Cloud Native Engineering services.

**Security Note:** Internal documentation, planning documents, and strategies have been moved to private repositories to maintain security best practices.

## Recent Improvements (December 2025)

### Performance Optimizations
- **Resource Hints:** Added dns-prefetch, preconnect, and preload directives
- **Lazy Loading:** Implemented intersection observer for image optimization
- **Performance Monitoring:** Core Web Vitals tracking and analytics integration
- **Critical CSS:** Optimization strategies for faster rendering

### SEO Enhancements
- **Meta Descriptions:** Optimized with target keywords and CTAs
- **Structured Data:** Organization JSON-LD markup for rich snippets
- **Social Meta Tags:** Open Graph and Twitter Card implementation
- **Canonical URLs:** Proper canonical tag implementation

### Analytics Upgrades
- **Enhanced User Tracking:** Scroll depth, time-on-page, form interactions
- **Behavior Analysis:** Rage click detection, exit intent, external link tracking
- **Conversion Funnel:** Comprehensive CTA and conversion path monitoring
- **Real-time Monitoring:** Live performance and engagement metrics

### Content & SEO
- **Case Studies:** Enhanced with quantified results and technical details
- **Meta Optimization:** SEO-friendly descriptions for all key pages
- **Social Sharing:** Optimized for better social media appearance

## Technical Stack

### Core Technologies
- **Static Site Generator:** Jekyll
- **Styling:** Custom SCSS with responsive design
- **Analytics:** Supabase Edge Functions + Custom tracking
- **Hosting:** GitHub Pages compatible

### Analytics & Tracking
- **Primary Analytics:** Supabase Edge Functions
- **Client-side Tracking:** Custom analytics with privacy compliance
- **Performance Monitoring:** Core Web Vitals and custom metrics
- **Heatmaps:** Optional click tracking with `?heatmap` parameter

### SEO & Performance
- **Structured Data:** JSON-LD Organization markup
- **Social Meta:** Open Graph and Twitter Cards
- **Resource Optimization:** DNS prefetch, preconnect, preload hints
- **Image Optimization:** Lazy loading and responsive images

## Analytics & Heatmap System

### Backend (Private Repository)
- **Supabase Functions:** Edge functions for event processing
- **Database Schema:** Analytics events and heatmap data storage
- **Dashboard Queries:** Pre-built analytics queries

### Frontend (This Repository)
- **Pageview Tracking:** `_includes/analytics-log-event.html`
- **CTA Tracking:** `_includes/analytics-cta-tracking.html`
- **Enhanced Analytics:** `_includes/analytics-enhanced.html`
- **Performance Optimization:** `_includes/performance-optimization.html`
- **Heatmap Tracking:** `_includes/analytics-heatmapjs.html`

All analytics includes are loaded via `_layouts/default.html`.

## Logo & Design

### Visual Identity
- **Primary Logo:** `assets/logo.svg` (vector format)
- **Favicon Set:** Multiple sizes for cross-platform compatibility
- **Color Scheme:** DodgerBlue, ForestGreen, DarkOrange
- **Design Philosophy:** Golden ratio-based layout and proportions

### Assets
- Vector logo: `assets/logo.svg`
- Favicons: `assets/favicon-16.png`, `assets/favicon-32.png`, `assets/apple-touch-icon-180.png`
- Design documentation: `assets/logo.txt` (conceptual notes)

## Content Structure

### Key Pages
- **Home:** `index.md` - Main landing page with service overview
- **Services:** `services.md` - Detailed service offerings
- **Projects:** `projects.md` - Case studies and portfolio
- **AI Infrastructure:** `ai-infra.md` - AI/LLM specialization
- **Team:** `team.md` - Team information and backgrounds

### Blog System
- **Posts:** `_posts/` - Blog articles and news
- **Categories:** Structured categorization for content discovery
- **SEO Optimization:** Each post optimized for search engines

## Deployment

### Analytics Deployment
1. Apply Supabase migrations from private repository
2. Deploy edge functions from private repository
3. Configure saved queries in Supabase dashboard

### Website Deployment
- **Platform:** GitHub Pages (automatic deployment)
- **Build Process:** Jekyll build with GitHub Actions
- **Domain:** Custom domain via CNAME configuration

## Development

### Local Development
```bash
# Install dependencies
bundle install

# Run local server
bundle exec jekyll serve

# Build for production
bundle exec jekyll build
```

### Adding Content
1. **Blog Posts:** Add markdown files to `_posts/` directory
2. **Pages:** Create markdown files in root directory
3. **Case Studies:** Use existing case study format as template

## Security Considerations

- **Public Repository:** Contains only public-facing content
- **Private Data:** Analytics configurations and strategies in private repos
- **API Keys:** No sensitive credentials stored in public repository
- **Documentation:** Internal planning documents removed for security

## Contact & Support

For technical questions about this website:
- **Email:** Contact via website contact form
- **Documentation:** See individual page comments for technical details
- **Issues:** Use GitHub issues for bug reports and feature requests
