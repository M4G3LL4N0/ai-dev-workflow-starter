# AI Dev Workflow Starter

A starter repository for building a safe, repeatable AI-assisted software development workflow.

This repo is intentionally light on “app code”. It’s meant to be a **sandbox for the workflow itself** (rules, templates, checks), which you can then copy into a real application repository.

## Purpose
This repo is a sandbox for:
- AI coding rules
- GitHub issue templates
- pull request templates
- CI checks
- AI review checks
- repeatable development instructions

## Why AI-assisted development workflows matter
AI can make you faster, but without guardrails it can also:
- Expand scope and create large, hard-to-review diffs
- Introduce subtle security/data issues (auth, RLS, migrations, secrets)
- Drift architecture and coding standards over time
- Make changes that “work” but aren’t validated (lint/typecheck/tests/build)

This starter kit focuses on **consistency and safety**:
- Structured task intake (clear goals, constraints, acceptance criteria)
- Explicit agent rules (smallest safe change, avoid churn)
- Automated checks (CI + AI review prompts) so problems are caught early

## Why this exists
Instead of testing AI workflow changes inside a real production app, this repo gives you a clean place to set up the system first.

## What tools this repo is designed to support
- **AI coding agents/editors**: Cursor (and similar “agentic” coding environments) via the repo’s rules and documentation.
- **GitHub workflows**: Issue templates, PR template, and CI via `.github/*`.
- **LLM-based PR review**: Continue-style checks via `.continue/checks/*` (prompted reviewers that look for architecture, security/data, and UI consistency problems).
- **Supabase projects**: Local Supabase configuration via `supabase/config.toml` (including Supabase Studio AI via `OPENAI_API_KEY` as an environment variable).

## Included files
- `AI_RULES.md`
- `ARCHITECTURE.md`
- `PRODUCT.md`
- `STANDARDS.md`
- `SUPABASE.md`
- `README_AI.md`
- `.github/ISSUE_TEMPLATE/*`
- `.github/PULL_REQUEST_TEMPLATE.md`
- `.github/workflows/ci.yml`
- `.continue/checks/*`

## Safe usage
Do all testing here first.
Once the workflow is stable, copy the parts you want into a real project later.

## Next step
Open this folder in your editor and use it as your AI workflow starter kit.
