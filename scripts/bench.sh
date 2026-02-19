#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TMP_DIR="${TMPDIR:-/tmp}"

run_bench() {
  local name="$1"
  local cmd="$2"
  local out_file="${TMP_DIR}/${name}.ms"
  : >"${out_file}"

  for i in 1 2 3 4 5; do
    local start end
    start="$(date +%s%3N)"
    (cd "${ROOT_DIR}" && eval "${cmd}" >/dev/null 2>&1)
    end="$(date +%s%3N)"
    echo "$((end - start))" >>"${out_file}"
  done

  awk -v n="${name}" '
    { sum += $1; if (NR == 1 || $1 < min) min = $1; if ($1 > max) max = $1 }
    END { printf "%s avg=%.1fms min=%dms max=%dms runs=%d\n", n, sum / NR, min, max, NR }
  ' "${out_file}"
}

run_bench "bun_run_index" "bun run src/index.ts"
run_bench "bun_test" "bun test"
run_bench "bun_check_fast" "bun run check:fast"
run_bench "bun_check_full" "bun run check"
