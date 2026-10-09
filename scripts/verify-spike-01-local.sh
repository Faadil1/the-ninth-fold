#!/usr/bin/env bash
# THE NINTH FOLD - NON-PUBLISHING local guard, not interactive/Web proof.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
RIVE_DIR="$ROOT/rive/ninth-fold"
RIVE="$(command -v rive || true)"
if [[ -z "$RIVE" && -x "$HOME/.rive/bin/rive" ]]; then
  export PATH="$HOME/.rive/bin:$PATH"
  RIVE="$HOME/.rive/bin/rive"
fi
if [[ -z "$RIVE" || ! -x "$RIVE" ]]; then
  echo "BLOCKED: Rive CLI not installed/executable in this Codespace" >&2
  exit 2
fi
if [[ ! -f "$RIVE_DIR/rive.yaml" || ! -f "$RIVE_DIR/scene.rml" ]]; then
  echo "BLOCKED: create own Rive project first: mkdir -p rive && cd rive && rive create ninth-fold" >&2
  exit 2
fi

echo "=== Source identity (NON-PUBLISHING) ==="
(cd "$ROOT" && git rev-parse HEAD && git branch --show-current && git status --short)
"$RIVE" --version
cd "$RIVE_DIR"
"$RIVE" . --verify
"$RIVE" inspect . --summary
echo "LOCAL_VERIFY_FINISHED. This does NOT prove 4 folds, choice binding, nested consequence, Editor, or Web."
