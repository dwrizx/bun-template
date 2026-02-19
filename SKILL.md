# SKILL: Fastest Bun Tooling (Baked-in)

This template is pre-configured with the Oxc tooling stack for near-instant developer feedback.

## 🛠 Tooling Stack

- **Runtime:** Bun
- **Linter:** `oxlint` (10-100x faster than ESLint)
- **Formatter:** `oxfmt` (Ultra-fast, Prettier-compatible)
- **Typecheck:** `tsgo` (Native TypeScript diagnostics)

## 🚀 Quality Gates

Always run these commands to ensure code quality:

- `bun run check`: Full validation (Typecheck + Lint + Format check).
- `bun run fix`: Auto-fix all linting and formatting issues.
- `bun run check:fast`: Quick check (Lint + Format) for rapid iteration.

## ⚙️ Editor Integration (VS Code)

The project includes `.vscode/settings.json` which:

- Enables `tsgo` for instant error highlighting.
- Automatically formats and fixes lint issues on save.

## 📋 Best Practices

1. **Never use `var`**: The linter will block it.
2. **Minimize `any`**: Flagged as a warning to encourage better typing.
3. **Use Bun Primitives**: Prefer `Bun.file`, `Bun.serve`, etc., over Node.js modules.
4. **Pre-commit Check**: If using Git, ensure `bun run check` passes before pushing.
