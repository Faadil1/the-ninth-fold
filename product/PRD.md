# THE NINTH FOLD — Living Product Requirements Document

**Status:** PROVISIONAL / PRE_CONCEPT_LOCK. **Project:** second independent Rive Halloween Challenge 2026 entry.
**Deadline:** 2026-10-12 23:59 PDT, must recheck official rules at final gate.
**First workstream:** TECHNICAL_REALITY_KILL_SPIKE_01 (90–180 minutes), not a Demo Definition of Done.

## Product opportunity and job to be done

Judges and viewers need a distinctive, immediately understood Halloween interaction demonstrating load-bearing Rive CLI / GPU Canvas where practical, visible hand-crafted authorship, interactive motion and polish. Most generic fog / haunted UI / pumpkin / photo tricks are saturated or have adjacent precedents. A familiar schoolyard paper fortune teller makes an intuitive physical contract: it can unfold into **eight**, not nine, readable compartments.

**User job:** interact with a familiar paper toy, discover that it contains an impossible compartment, recognize their own choice within it, and change the real outer paper by handling the inner miniature. Understand the impossibility without narration.

## Product thesis / unique physical contract

1. User selects a colour + small number: fold responds and stores exact choice.
2. Eight ordinary paper compartments establish normal expectation. A ninth impossible crease/flap is accessible as **a player-caused action**, not a passive jumpscare.
3. Miniature contains the *correct bound user mark*. The tiny occupant gestures/pulls/open-folds; the OUTER physical toy visibly folds in response, against conventional containment.
4. RESET/replay exposes a meaningful variation and clears all state.

Primary distinction from ONE FRAME LATE: impossible self-referential **paper topology and inside-to-outside causality**. Do not copy puppet/shadow temporal defiance.

## Audience and first five seconds

- First actionable moment within 5 seconds on a fresh URL.
- Physical paper toy, stage frame and a small discernible cue, not a tutorial wall of text.
- Judges have a 40-point rubric: 10 creativity/theme, 10 Rive CLI/GPU Canvas, 10 Human Touch, 5 interactive motion, 5 execution/polish.
- Mouse and touch reachable target sizes, responsive 16:9 desktop and portrait mobile where supported.
- Reduced-motion should preserve core meaning through readable state changes.

## Three principal player actions (not eight forced clicks)

### Act 1: THE CHOICE / "What did you pick?"

Select one of a few *clearly different* colours and a number. This choice is written to native ViewModel variables and shifts real composed fold pose. Optionally expose two valid fortune branches. The mark has persistent visible consequence.

### Act 2: THE NINTH FLAP / "There isn't room for that."

After the player's selected number, an impossible seam appears; user presses/open-folds ninth flap. A tiny version of the paper device bears the **same colour and number**, not a generic static miniature. If there are multiple viable marks, every corresponding miniature must match.

### Act 3: INSIDE ACTS ON OUTSIDE / "It folds us."

Touch/pull/open the inner toy. It triggers a native State Machine transition to the OUTER artboard pose so the exterior paper changes first/causally. Clear visual response, repeatable. Player may reset and branch to a different outcome; no deceptive autoplay or screenshot swaps.

## Core invariants

- Player selection propagates truthfully to miniature.
- There is a visible ordinary-eight baseline before impossible ninth.
- Spatial impossibility is legible from scene, not explanatory captions.
- Nested interaction **drives** outer state; if animation is just preplayed without nested event, fail.
- State is internally coherent across interactions, no double-click skipping, reset clears choice/fold/inner control.
- Same core interactive effect remains in Rive Editor and browser; a CLI renderer-only artifact is NOT live.
- Human authored folds/creases/paper figures and expressive animation timing in actual Rive Editor.

## MUST / SHOULD / MAY / MUST NOT

**MUST:** genuine Rive State Machine and ViewModel binding for choices and nested input; four supported visible fold/pose states (closed, ordinary open, impossible open, nested control), negative case or clearly recoverable refusal, deterministic reset/replay, target runtime and independent viewer proof, source/evidence trace, separate Rive file/repo, actual final protected submission after consent.

**SHOULD:** hand-drawn paper folds, crayon/pencil typography, imperfect ink and torn edges, credible hinge/contact shadows, minified authored character, >=2 differentiated fortunes/marks, satisfying touch targets, GPU Canvas for load-bearing crease lighting/inside-occlusion if supported and time-justified, actual footage of human Rive authoring.

**MAY:** authored audio (paper crinkle, graphite scratch, whisper), small finite variation in fortune choice, 2.5D warp/mesh with occlusion instead of 3D, animation of nested inhabitant.

**MUST NOT:** equate paper texture shader to convincing geometry; claim actual 3D if 2.5D; fake selected choice on preseeded hardcoded miniature; put critical logic only in external page JS while Rive stays decorative; only show a 15s video; overwrite main project; publish/submit without explicit human checkpoint; optimize evidence at expense of finished interaction.

## Architecture hypothesis — not implementation proof

- Single scene `Artboard`, `State Machine 1` with layers: `Paper Fold`, `Nested Consequence`; ViewModel `NinthFold` with `selectedColor`, `selectedNumber`, `openNinth`, `innerPulled`, `replayCount`. Exact property types and ability to bind primitive marks to be verified with `rive schema` and project Rive version.
- Fold use drawn vector triangles/trapezoids, hinge motion and occlusion, ideally mesh if supported with valid RML; no unsupported 3D transform assumptions.
- Nested actor pointer listener triggers ViewModel property, causing an OUTER paper pose in State Machine.
- Event trajectory: `CHOOSE -> OPEN_NORMAL -> REVEAL_NINTH -> INNER_PULL -> OUTER_RESPONDS -> REPLAY`; negative path: premature inner click does nothing/indicates inaccessible; reset returns to ready state.
- GPU Canvas optional contingent: real WGSL crease mask / light-shadow contact active in browser; otherwise Rive-native scene remains truthful and fully playable.

## Technical Reality / falsification

**90–180 min kill spike** (see separate spec). Pass only when (1) four obvious visible paper-fold states, (2) native player selected mark propagates to nested mark for >=two choices, (3) nested click moves outer fold, (4) reset works in local and Editor, then target web check. A verification command alone is insufficient. If any load-bearing mechanism cannot be made real before deadline, declare PARTIAL/BLOCKED and choose repair or cut/backup, not imaginary pass.

## Post-spike maximum exploitation

Do not stop at a minimal gate. After passing, replace test triangles with authored paper theatre, meaningful choices, expressive motion, clue/horror escalation, actual inner-to-outer dynamics, edge conditions, responsive controls and quality pass. Ensure independent judge could play from a cold link within seconds.

## Evidence / delivery

Keep CLI version, exact commit, source RML, Rive revision, Editor video, browser URL/version/device/interaction, failure and reset captures, external comprehension quotes and attribution/process. LOCAL, EDITOR, WEB and LIVE states remain distinct. Final user-controlled Contra submission and social share tag `@rive_app` only after full authorization and verified requirements. A single external trial does not imply adoption or scoring guarantee.

## Definition of Done

A meaningful, authored, independently playable Halloween product with actual rule-breaking consequence, safe reset, browser/Editor parity, reproducibility, release/submission checklist and honest proof. Passing the initial fold spike does **not** satisfy Product Depth or final challenge readiness.

## Version history

- 2026-10-09 v0.1 provisional / bootstrap; no Rive or web evidence.
