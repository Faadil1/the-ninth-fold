# THE NINTH FOLD — Living Product Requirements Document

**Status:** PROVISIONAL / PRE_CONCEPT_LOCK; FULL EXPERIENCE REOPENED 2026-10-10. **Project:** second independent Rive Halloween Challenge 2026 entry.

> **Creative North Star (provisional):** [The Fortune That Folded You — complete experience blueprint](FULL-EXPERIENCE-REOPEN-2026-10-10.md). The previous three-act physical interaction sequence remains the central *mechanism spine*, not the entire game or Definition of Done. Where the earlier PRD treated four fold states and three interactions as sufficient, the 2026-10-10 experience blueprint supersedes that narrow interpretation. Concept Lock remains BLOCKED.
**Deadline:** 2026-10-12 23:59 PDT, must recheck official rules at final gate.
**Current workstreams:** EXPERIENCE_DEPTH_REOPEN (ACTIVE) + TECHNICAL_REALITY_KILL_SPIKE_01 (ACTIVE but not started). The 90–180min kill spike is a component-level feasibility test, not a Demo Definition of Done or the entire implementation.

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

## Three major narrative beats, surrounded by meaningful play (not three total clicks)

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

**MUST:** a cohesive authored desk/paper-theatre world, original expressive character (working name Pip), concrete objective, at least one interactive pop-up vignette, meaningful choices, two visibly distinct endings and replay; genuine Rive State Machine and ViewModel binding for choices and nested input; four supported visible fold/pose states (closed, ordinary open, impossible open, nested control), negative case or clearly recoverable refusal, deterministic reset/replay, target runtime and independent viewer proof, source/evidence trace, separate Rive file/repo, actual final protected submission after consent.

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

## Post-spike product depth: hard gate, not elective polish

The fully authored experience (see the linked North Star) has **ten mutually supporting layers**: World; Character; Purpose; Agency; Discovery; Interactive Motion; Material/GPU; Audio/Accessibility; Quality; and Evidence. **Technical Proof does not promote Product Depth.** The built scene needs a crafted desk/theatre identity, a responsive paper visitor, at least two real fortune choices with visibly different consequences, one playable micro-set, the nested-to-outer violation, an accessible negative/recovery path, two distinct endings, and a replay route. It cannot be a three-button illustration with the same result every time.

A good release is a cohesive 90–150s primary experience with optional exploration, NOT a toy mechanism surrounded by arbitrary objects or a fabricated checklist of 15 rooms. Prioritize density of authored, reactive detail. If time threatens, cut superficial secondary locations before cutting the central experience's sense of place, stakes, agency and consequence.

After proving the technical kill spike, continue the product exploitation loop into all supported cross-layer interactions: secondary props must respond to the selected fortune; character expressions need real Rive states; authored paper inertia and lighting should communicate stakes; both endings must visibly transform the environment; replay should yield a differentiated outcome. The judge must understand and enjoy the work cold in the target Web runtime, not only after reading the PRD.

## Evidence / delivery

Keep CLI version, exact commit, source RML, Rive revision, Editor video, browser URL/version/device/interaction, failure and reset captures, external comprehension quotes and attribution/process. LOCAL, EDITOR, WEB and LIVE states remain distinct. Final user-controlled Contra submission and social share tag `@rive_app` only after full authorization and verified requirements. A single external trial does not imply adoption or scoring guarantee.

## Definition of Done

A meaningful, authored, independently playable Halloween product with actual rule-breaking consequence, safe reset, browser/Editor parity, reproducibility, release/submission checklist and honest proof. Passing the initial fold spike does **not** satisfy Product Depth or final challenge readiness.

## Version history

- 2026-10-10 v0.2 FULL EXPERIENCE REOPENED; narrow technical-interaction-only definition rejected; world/story/character/agency/alternate endings elevated to release requirements, still not built.
- 2026-10-09 v0.1 provisional / bootstrap; no Rive or web evidence.
