#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
tmp_dir="$(mktemp -d)"

cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

git clone --depth 1 https://github.com/yetone/alma-plugins.git "$tmp_dir/alma-plugins"

rm -rf "$root_dir/plugins/antigravity-auth"
cp -a "$tmp_dir/alma-plugins/plugins/antigravity-auth" "$root_dir/plugins/antigravity-auth"

echo "Imported antigravity-auth into $root_dir/plugins/antigravity-auth"
