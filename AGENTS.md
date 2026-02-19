# AI/LLM Guardrails

This project uses a high-performance tooling stack. AI agents should follow these rules to ensure code quality and consistency.

## Quality Commands

- **Check (Fast):** `bun run check:fast` (Use this frequently during development)
- **Check (Full):** `bun run check` (Use this before finishing a task)
- **Auto-fix:** `bun run fix` (Use this to automatically resolve linting and formatting issues)

## Rules

1. **Zero Warnings Policy:** If `oxlint` reports an error or warning, it MUST be fixed. Do not ignore linting issues.
2. **Consistency:** Ensure code is formatted using `oxfmt` (`bun run fmt`).
3. **Type Safety:** Always verify changes with `tsgo` (`bun run typecheck`).
4. **Validation:** Never commit or claim a task is finished without running `bun run check`.
