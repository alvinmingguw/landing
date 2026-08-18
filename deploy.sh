#!/usr/bin/env bash
# Deploy alvinmingguw landing ke service alvin-landing (:5200)
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
echo "[deploy] syncing $DIR -> /app/alvin-landing"
cp "$DIR/index.html" /app/alvin-landing/index.html
cp "$DIR/README.md" /app/alvin-landing/README.md
echo "[deploy] restarting alvin-landing.service"
systemctl restart alvin-landing.service
echo "[deploy] done."
