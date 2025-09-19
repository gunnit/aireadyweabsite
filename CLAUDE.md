# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

### Development
- `npm run dev` - Start development server on http://localhost:3000
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run lint` - Run ESLint for code quality checks

## Architecture Overview

This is a Next.js 14 application that analyzes websites for AI readiness. It uses the App Router pattern with TypeScript.

### Core Technology Stack
- **Framework**: Next.js 14.2.25 with App Router
- **State Management**: Jotai for atomic state management
- **Styling**: Tailwind CSS with extensive custom configuration
- **UI Components**: Radix UI primitives + custom components in `components/ui/`
- **Animation**: Framer Motion for transitions
- **Graphics**: PixiJS for advanced visualizations

### Key Architectural Patterns

1. **Component Structure**:
   - `app/` - Next.js App Router pages and API routes
   - `components/app/` - Page-specific components (e.g., AnalysisResults, WebsiteForm)
   - `components/shared/` - Reusable components across pages
   - `components/ui/` - Base UI components (buttons, cards, dialogs)

2. **API Integration**:
   - Firecrawl API for web scraping (`@mendable/firecrawl-js`)
   - Optional OpenAI/Groq integration for AI analysis
   - API routes in `app/api/` handle external service calls

3. **State Management**:
   - Jotai atoms in `atoms/` directory for global state
   - Complex UI states managed atomically
   - Analysis results and scoring data stored in atoms

4. **Styling System**:
   - Tailwind configuration includes custom typography scale (title-h1 through mono-x-small)
   - CSS variables for theming in `styles/globals.css`
   - Utility classes generated dynamically (sizes 0-999px)

### Environment Configuration

Required environment variables:
- `FIRECRAWL_API_KEY` - For website crawling functionality
- `OPENAI_API_KEY` - For AI analysis (optional)
- `GROQ_API_KEY` - Alternative AI provider (optional)

### Key Application Features

- **Website Analysis**: Crawls and analyzes websites for AI compatibility
- **Scoring System**: Provides metrics for content structure, metadata, security, performance
- **Visualization**: Radar charts, metric bars, and score displays using custom components
- **Real-time Updates**: Progressive loading with status updates during analysis