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

copy_if_exists() {
  local source_path="$1"
  local target_path="$2"

  if [ -e "$source_path" ]; then
    cp -R "$source_path" "$target_path"
  else
    echo "WARNING: Missing source path: $source_path"
  fi
}

copy_if_exists "$SOURCE_DIR/README.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/AI_RULES.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/ARCHITECTURE.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/PRODUCT.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/STANDARDS.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/SUPABASE.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/README_AI.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/Makefile" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/bootstrap.sh" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/first-setup.sh" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/START_HERE.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/TODO.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/TASK_INTAKE.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/FIRST_TASK.md" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/package.json" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/.gitignore" "$TARGET_DIR/"

copy_if_exists "$SOURCE_DIR/scripts" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/docs" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/prompts" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/.github" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/.continue" "$TARGET_DIR/"
copy_if_exists "$SOURCE_DIR/supabase" "$TARGET_DIR/"

cd "$TARGET_DIR"

git init
git branch -M main

echo ""
echo "New project created successfully."
echo ""
echo "Created at:"
echo "$TARGET_DIR"
echo ""
echo "Next steps:"
echo "cd $TARGET_DIR"
echo "./first-setup.sh"
echo "Fill out FIRST_TASK.md"
echo "git add ."
echo "git commit -m \"Initial starter setup\""
