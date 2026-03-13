#!/usr/bin/env bash

set -e

if [ -z "$1" ]; then
  echo "Usage: ./init-new-project.sh project-name"
  exit 1
fi

PROJECT_NAME="$1"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$HOME/Projects/$PROJECT_NAME"

if [ -e "$TARGET_DIR" ]; then
  echo "ERROR: Target already exists: $TARGET_DIR"
  exit 1
fi

echo "Creating new project at:"
echo "$TARGET_DIR"

mkdir -p "$TARGET_DIR"

cp "$SOURCE_DIR/README.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/AI_RULES.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/ARCHITECTURE.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/PRODUCT.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/STANDARDS.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/SUPABASE.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/README_AI.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/Makefile" "$TARGET_DIR/"
cp "$SOURCE_DIR/bootstrap.sh" "$TARGET_DIR/"

mkdir -p "$TARGET_DIR/scripts"
mkdir -p "$TARGET_DIR/docs"
mkdir -p "$TARGET_DIR/prompts"
mkdir -p "$TARGET_DIR/.github"
mkdir -p "$TARGET_DIR/.continue"

cp -R "$SOURCE_DIR/scripts/"* "$TARGET_DIR/scripts/" 2>/dev/null || true
cp -R "$SOURCE_DIR/docs/"* "$TARGET_DIR/docs/" 2>/dev/null || true
cp -R "$SOURCE_DIR/prompts/"* "$TARGET_DIR/prompts/" 2>/dev/null || true
cp -R "$SOURCE_DIR/.github" "$TARGET_DIR/" 2>/dev/null || true
cp -R "$SOURCE_DIR/.continue" "$TARGET_DIR/" 2>/dev/null || true
cp -R "$SOURCE_DIR/supabase" "$TARGET_DIR/" 2>/dev/null || true
cp "$SOURCE_DIR/.gitignore" "$TARGET_DIR/" 2>/dev/null || true

cd "$TARGET_DIR"
git init
git branch -M main

echo ""
echo "New project created successfully."
echo ""
echo "Next:"
echo "cd $TARGET_DIR"
echo "./scripts/verify-repo.sh"
echo "make verify"
echo "git add ."
echo "git commit -m \"Initial starter setup\""
