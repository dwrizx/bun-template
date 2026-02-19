import { describe, expect, test } from "bun:test";
import { buildGreeting } from "./index";

describe("buildGreeting", () => {
  test("returns default greeting", () => {
    expect(buildGreeting()).toBe("Hello via Bun!");
  });

  test("returns custom greeting name", () => {
    expect(buildGreeting("Ramadhan")).toBe("Hello via Bun, Ramadhan!");
  });
});
