#!/bin/bash
set -euo pipefail

# Claude Code on the web のリモート環境でのみ実行する
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

# HTMLリンター等の開発用依存をインストール（冪等）
npm install --no-audit --no-fund
