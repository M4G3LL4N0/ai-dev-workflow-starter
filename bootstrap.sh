#!/usr/bin/env bash

set -e

echo "Starting AI dev workflow starter bootstrap..."

mkdir -p docs
mkdir -p scripts
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p .github/workflows
mkdir -p .continue/checks

echo "Running repo verification..."
if [ -f "./scripts/verify-repo.sh" ]; then
  ./scripts/verify-repo.sh
else
  echo "WARNING: verify-repo.sh not found yet."
fi

echo "Bootstrap complete."
