# Architecture

## Stack
- Frontend: Next.js + React + TypeScript
- Hosting: Vercel
- Backend / DB / Auth: Supabase

## Example repository map
- app/: routes and page-level entry points
- components/: reusable UI building blocks
- lib/: shared utilities, API helpers, integrations, config helpers
- supabase/: migrations, SQL, policies, schema-related files
- public/: static assets
- tests/: automated tests

## Core architectural principles
- Keep business logic out of presentation components when practical.
- Keep server/client boundaries clear.
- Centralize shared utilities and integrations.
- Prefer explicit typing and predictable data flow.
- Prefer incremental change over sweeping rewrites.
- Favor reuse over duplication.

## Change policy
- Preserve file structure unless there is a strong reason to change it.
- Avoid duplicate utilities.
- Avoid mixing unrelated concerns in the same file.
- Prefer extending existing patterns rather than inventing new ones.

## Non-goals
- No architecture churn without explicit approval.
- No dependency sprawl.
- No hidden schema changes.
- No broad stylistic rewrites unrelated to task outcome.
