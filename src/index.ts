export function buildGreeting(name?: string): string {
  if (!name) {
    return "Hello via Bun!";
  }
  return `Hello via Bun, ${name}!`;
}

if (import.meta.main) {
  await Bun.write(Bun.stdout, `${buildGreeting()}\n`);
}
