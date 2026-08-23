#!/usr/bin/env bash
#
# Migration script for machines running commit 3b79b5b or earlier.
# Run this once after pulling, before `make install`.
#
# It removes files that were previously managed by link_configs.sh or
# created manually, so that Stow can replace them with symlinks.

set -euo pipefail

project_root="$(cd "$(dirname "$0")"; pwd)"

echo "Migrating dot-files to Stow-managed layout..."

# 1. Remove old hardlinked bin scripts (previously created by link_configs.sh)
for f in "$project_root"/bin/bin/*; do
    name=$(basename "$f")
    target="$HOME/bin/$name"
    if [ -f "$target" ] && [ ! -L "$target" ]; then
        echo "  Removing old hardlink: ~/bin/$name"
        rm "$target"
    fi
done

# 2. Remove plain files under managed config directories so Stow can symlink them
for package in claude codex; do
    config_dir="$project_root/$package/dot-$package"
    [ -d "$config_dir" ] || continue

    while IFS= read -r f; do
        rel="${f#"$config_dir/"}"
        target="$HOME/.$package/$rel"
        if [ -f "$target" ] && [ ! -L "$target" ]; then
            echo "  Removing plain file: ~/.$package/$rel"
            rm "$target"
        fi
    done < <(find "$config_dir" -type f)
done

echo "Migration complete."
