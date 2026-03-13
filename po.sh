#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

missing=0

require_file() {
  local path="$1"
  if [[ ! -f "$path" ]]; then
    echo "ERROR: Required file missing: $path" >&2
    missing=1
  fi
}

require_dir() {
  local path="$1"
  if [[ ! -d "$path" ]]; then
    echo "ERROR: Required directory missing: $path" >&2    missing=1
  fi
}

# Required documentation files
require_file "README.md"
require_file "AI_RULES.md"
require_file "ARCHITECTURE.md"

# GitHub templates
require_dir ".github/ISSUE_TEMPLATE"

# CI workflow
require_file ".github/workflows/ci.yml"

if [[ "$missing" -ne 0 ]]; then
  exit 1
fi

echo "Repository verification passed."
