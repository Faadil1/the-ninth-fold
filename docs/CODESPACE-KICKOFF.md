# Start THE NINTH FOLD in its own GitHub Codespace

**Do not use the ONE FRAME LATE Codespace/Rive file for the new project.**

Open repository https://github.com/Faadil1/the-ninth-fold, switch to branch `feat/rive-fold-spike-01` (or check out after starting a Codespace), and launch a Codespace. If GitHub cannot create a Codespace on a non-default branch, create on main then switch and pull.

Run from repo root:

```bash
git fetch origin
git switch feat/rive-fold-spike-01
git pull --ff-only
git status --short

# Rive CLI is per Codespace: don't assume it's installed from ONE FRAME LATE.
if ! command -v rive >/dev/null 2>&1 && [ ! -x "$HOME/.rive/bin/rive" ]; then
  curl -fsSL https://releases.rive.app/cli/install.sh | bash
fi
export PATH="$HOME/.rive/bin:$PATH"

# Ubuntu Codespace images may need shared graphics libs:
if ! rive --version; then
  sudo apt-get update
  sudo apt-get install -y libegl1 libgles2 libx11-6 libwayland-egl1 libxkbcommon0
  rive --version
fi

rive docs
rive schema
rive --help

mkdir -p rive
cd rive
rive create ninth-fold
cd ..

bash scripts/verify-spike-01-local.sh
```

**Expected:** first `verify-spike-01-local.sh` verifies the scaffold only. It cannot prove actual fold behavior until scene implementation exists. No `rive push` or `--publish` is executed.

If `rive create` has a different syntax with the version present, obey **that version's** `rive --help`. Read the generated `rive/ninth-fold/AGENTS.md` and `rive/ninth-fold/rive.yaml` before editing `scene.rml`.

Then implement in `rive/ninth-fold/scene.rml` using official CLI schema:
- Four paper-fold poses with correct occlusion
- Two actual colour/number choices and data-bound inner mark
- One miniature listener that controls outer fold
- Reset + invalid early tap
- Replay tests, screenshots and Editor test

To hand off to another executor in the same Codespace, instruct them: **Read AGENTS.md + CURRENT/HANDOVER/PROJECT-RECONCILIATION + PRD/REGISTRY/DECISION + technical kill spike first; do not publish; create a draft PR after tested feature commits**.

Do not merge feature branch merely because `rive . --verify` passes. A hosted Rive URL and human comprehension are separately gated.
