# GEMINI.md - Project Context & Instructions

This project is a high-performance **Bun + TypeScript** template designed for a "Fastest Frontend/Backend Tooling" workflow. It prioritizes speed and strict guardrails for both human developers and AI agents.

## Project Overview

- **Runtime:** [Bun](https://bun.sh) (v1.3.9+) - Used for execution, package management, testing, and bundling.
- **Language:** TypeScript (v5+)
- **Tooling Stack:**
  - **Linter:** `oxlint` (Ultra-fast, replaces ESLint for most cases).
  - **Formatter:** `oxfmt` (Ultra-fast, replaces Prettier).
  - **Type-checker:** `tsgo` (`@typescript/native-preview`) for near-instant diagnostics.
- **Architecture:** Minimalist entry point in `index.ts`. Supports `Bun.serve()` for APIs and frontend hosting.

## Building and Running

### Essential Commands

- **Install Dependencies:** `bun install`
- **Run Entry Point:** `bun run index.ts` (or `bun --hot index.ts` for development)
- **Run Tests:** `bun test`

### Quality Gates (Intended Workflow)

- **Check (Fast):** `bun run check:fast` (Runs `oxlint` and `oxfmt --check`)
- **Check (Full):** `bun run check` (Runs `tsgo`, `oxlint`, and `oxfmt --check`)
- **Auto-fix:** `bun run fix` (Runs `oxlint --fix` and `oxfmt`)

## Development Conventions

### General Rules

- **Prefer Bun APIs:** Use `Bun.file`, `Bun.serve`, `bun:sqlite`, and `Bun.$` instead of Node.js equivalents (`fs`, `express`, `better-sqlite3`, `execa`).
- **Environment Variables:** Bun automatically loads `.env` files; do not use `dotenv`.
- **Testing:** Always use `bun:test` for unit and integration tests.
- **Formatting:** Adhere to `oxfmt` standards (configured in `.oxfmtrc.jsonc` with `printWidth: 80`).

### Code Style

- **Strict Typing:** Maintain high type safety using TypeScript.
- **Performance First:** Avoid heavy dependencies if a native Bun primitive exists.
- **Linting:** Zero warnings policy. If `oxlint` reports an issue, it must be fixed before committing (configured in `.oxlintrc.json`).

## Key Files

- `index.ts`: The main entry point for the application/server.
- `CLAUDE.md`: Comprehensive guide for Bun-specific APIs and patterns.
- `skill/SKILL.md`: Detailed implementation guide for the fast tooling stack.
- `AGENTS.md`: Specific instructions for AI agents.
- `tsconfig.json`: TypeScript configuration.
