# Technical Reality Kill Spike 01 — paper fold + bound miniature + outer consequence

**Budget:** 90–180 minutes of *actual focused coding/tooling*, not a promise that the task has run. **Status:** NOT_STARTED. **Source of truth:** `state/CURRENT.yaml`.

**Important corrected scope:** The user explicitly rejected the mechanic-only toy as a competition product. This spike is the **first technical falsification** of `product/FULL-EXPERIENCE-REOPEN-2026-10-10.md`, not a full-experience plan or a quality target. A green spike MUST be followed by substantive world/character/story/choices/endings/playability implementation before any Build Candidate claims. No separate "mechanics done -> ship" shortcut.

**Question:** Can we deliver an actual Rive State Machine interactive paper fortune teller with an impossible ninth fold, real selected-mark data binding, miniature action affecting outer geometry, and reset? Technical Reality precedes Concept Lock.

## Subtests and visual exit criteria

| Subtest | Must be observed | Fail signal |
| --- | --- | --- |
| FOLD | 4 visibly different paper poses: CLOSED, ORDINARY_OPEN, NINTH_OPEN, OUTER_FOLDED_BY_INNER; foreground folds occlude rear faces appropriately | Static texture flip or all four states too similar |
| BIND | Choose option A and B in distinct runs. The inner miniature must reproduce **the exact colour and number** in both runs through ViewModel/Data Binding | Decorative miniature has one hardcoded mark |
| NESTED_EVENT | Click the inner miniature only after NINTH_OPEN. Outer paper truly changes state / pose in response. Confirm before/after | Passive autoplay or external JavaScript screenshot replacement |
| RESET | Reset from every major state clears selection, ninth and inner effect; new choice allowed; invalid early miniature click is safe | Irrecoverable artboard or stale selection |
| EDITOR | Load generated Rive in Editor (own project, NOT 2632594), play State Machine, touch/point choice->nine->nested->reset | CLI frames pass but Editor pointer listener fails |
| TARGET_WEB | Browser-hosted/signed supported file responds to same interactions, desktop and touch when feasible | Only Editor or CLI implementation works |

## Suggested Rive-native state graph (schema must be verified)

```text
IDLE
  -- click colour/number / store chosen mark --> SELECTED
SELECTED
  -- unfold ordinary crease --> ORDINARY_OPEN
ORDINARY_OPEN
  -- click ninth seam --> NINTH_OPEN
NINTH_OPEN
  -- click miniature / set innerPulled=true --> OUTER_CHANGED
OUTER_CHANGED
  -- replay --> IDLE
(Any) -- reset --> IDLE
```

Avoid forcing more than 3 meaningful player actions: colour/number selection can be one combined click, ninth seam one click, miniature one click. The ordinary unfolding is directly caused by selection. Do not require eight repeated choices to establish the number eight.

Native ViewModel likely needs `selectedColor`, `selectedNumber`, `innerPulled`, `ninthOpened`; inspect actual supported Rive data types first. For visual mark propagation, use boolean/number comparators or supported text bind — **do not assume any RML text/data binding property exists**.

## Ordered execution protocol

**0.** Read canonical repo files + Rive CLI docs/schema/AGENTS before constructing any RML. Check Rive CLI version and working shell dependencies.

**1.** Scaffold unique `rive/ninth-fold` using `rive create ninth-fold`, follow generated `rive.yaml`, `scene.rml` and `AGENTS.md`. The separate existing `ONE FRAME LATE` file is off limits. Commit scaffold to feature branch.

**2.** Build smallest 2.5D fold in local Rive with 4 distinct poses and at least 2 real choice values. Use actual layers/shape rotations/occlusion or supported mesh. Save reproducible input/events.

**3.** Bind the player colour and number to the inner mark, then connect native miniature event to outer fold. Do not mark pass based on a visual look-alike without dataflow; inspect State Machine and bindings.

**4.** Build reset and invalid-early-inner-tap behavior. Replay with two choices to verify state not leaked.

**5.** Run `bash scripts/verify-spike-01-local.sh`; inspect and capture local frames, then Editor interaction evidence. Verification script will fail intentionally while scaffold is absent.

**6.** Determine the legitimate target browser path and public-sharing authorization. Test exact playable artifact. Do not blindly `rive push` or publish; use user's explicit approval for public-facing checkpoint.

**7.** Record verdict `PASS / PARTIAL / BLOCKED / FAIL` and remediation/backup. A qualified pass still triggers post-spike artistic Product Depth work before final entry.

## Deadline risk control

- Timebox A 0–45 min: scaffold/scene and 4 fold poses.
- Timebox B 45–105 min: real mark propagation and nested->outer action.
- Timebox C 105–180 min: reset, Editor, and supported browser verification if available.
- If all 3 central subtests fail at 105min, kill or consciously defer; do not throw good ONE FRAME LATE work after a speculative 2nd entry.
- If technically passing but hard to understand in 5s, iterate design, do not claim differentiated Final.
- The letterpress `LAST IMPRESSION` is a **separate unbuilt backup**, not automatically authorized.

## Evidence classification

`RESEARCH -> LOCAL_CLI_VERIFIED -> EDITOR_INTERACTIVE_PROVEN -> WEB_RUNTIME_PROVEN -> INDEPENDENT_COMPREHENSION -> CONCEPT_LOCK_REVIEW`. Never skip levels, never promote with stale screenshots. Every significant observed negative case is added to regression test list.
