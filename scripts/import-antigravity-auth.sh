#!/usr/bin/env bash
    set -euo pipefail
    
    root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
    
    # Check if plugins directory exists
    if [ ! -d "$root_dir/plugins" ]; then
      echo "Error: $root_dir/plugins directory does not exist."
      exit 1
    fi
    
    tmp_dir="$(mktemp -d)"
    
    cleanup() {
      rm -rf "$tmp_dir"
    }
    trap cleanup EXIT
    
    git clone --depth 1 https://github.com/yetone/alma-plugins.git "$tmp_dir/alma-plugins"
    
    # Check if cloned plugin exists
    if [ ! -d "$tmp_dir/alma-plugins/plugins/antigravity-auth" ]; then
      echo "Error: Upstream plugins/antigravity-auth not found in cloned repo."
      exit 1
    fi
    
    # Atomic update
    cp -a "$tmp_dir/alma-plugins/plugins/antigravity-auth" "$root_dir/plugins/antigravity-auth.tmp"
    rm -rf "$root_dir/plugins/antigravity-auth"
    mv "$root_dir/plugins/antigravity-auth.tmp" "$root_dir/plugins/antigravity-auth"
    
    echo "Imported antigravity-auth into $root_dir/plugins/antigravity-auth"
    
