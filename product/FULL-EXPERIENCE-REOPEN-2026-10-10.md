# THE NINTH FOLD — Full Experience Reopen / Creative Product North Star v0.2
Date: 2026-10-10  
Status: **PROPOSED ARTISTIC DIRECTION, NOT CONCEPT LOCK, BUILD OR LIVE EVIDENCE**

## Why the previous direction was inadequate

The first PRD identified only a 3-click physical gimmick and four fold poses. Technically sensible as a kill spike, but *not* a full judge-worthy creation. It omitted the lived-in world, feeling, protagonists, authored art, meaningful choices, agency, responsive secondary objects, escalating tension, alternative outcomes and replay value. Mechanism ≠ experience; vertical slice ≠ Definition of Done; technical preview ≠ beautiful interactive product.

Competitive evidence (published project descriptions, not audited project source):
- Halloween Hotel: crooked Gothic hotel with 15 discoverable characters, progressive rewards and complete ending; full 3D plus native Rive/GPU Canvas. https://contra.com/community/WtBzv2bH-interactive-halloween-hotel-monster-hunt-built
- DOMOVOI: cameras, acoustic cues, recoverable repair, errors escalating interference and objective to escape. https://contra.com/community/bcD4kLb4-interactive-horror-game-built-entirely-in
- Trick or Room: room-clearing and level creation, monsters, broader progression. https://contra.com/community/topic/rivehalloweenchallenge/social
- Night Post: **paper village** delivery puzzle already exists. https://contra.com/community/WtBzv2bH-interactive-halloween-hotel-monster-hunt-built (related posts). Generic miniature paper village exploration alone is **NOT** our differentiator.
- The official 40-point rubric credits creativity/theme 10, Rive CLI/GPU Canvas 10, Human Touch 10, interactive motion 5, polish 5. https://contra.com/community/topic/rivehalloweenchallenge/guidelines

Takeaway: aim for **comparable consequence, discovery, craft and authored detail**, not mechanical imitation or artificial feature counts. Keep uncanny self-referential paper topologies as the ownable signature.

## Working art/world pitch — "The Fortune That Folded You"

**Type:** an explorable, tactile, hand-drawn Halloween paper theatre / tiny interactive storybook, not a generic game menu or a sequence of three UI buttons.

**Setting:** a forgotten school desk at dusk; dark varnished wood, crayon-drawn paper stars, worn exercise notebook, paper-cut lantern, short broken pencil, old eraser, irregular fold marks, stitched tape, rough ink. In the centre lies a handmade fortune teller with **eight legitimate endings**. A pencilled warning reads: **"DON'T CHOOSE NINE."** The desk, pencil, lighting, sound and fold choreography all belong to the same haunted material world.

**Motivation:** inside the paper lives an expressive tiny cut-out visitor, working name **Pip**, who has been trapped in other people's fortunes. You decide whether to help them leave, or fold the world shut. The experience communicates this through gestures and art, not an exposition paragraph.

**Promise:** every meaningful choice changes what is drawn, which miniature stage appears and how Pip behaves; opening the impossible ninth crease lets an object *inside the paper* alter the physical world *outside it*.

**Emotional progression:** curiosity -> charming handmade discovery -> unease -> spatial impossibility -> a real choice -> memorable physical ending. Halloween lives in rules of the world, not default fog, CRT or endless jump scares.

### Miniature stage system: a physical product, not a level-select UI

The opened fortune teller reveals pop-up diorama surfaces physically connected to the same paper object:
- **THE BELL** — a folded school bell and crooked staircase. The bell rings with no clapper; Pip tries to hide as an ink outline creeps toward the door. Player can raise/lower the little paper drawbridge to affect passage.
- **THE WINDOW** — a paper window, lantern and black-paper moth. Player can close/open the fold-window to alter light, hidden writing and Pip's path.
- **THE UNWRITTEN SEAM** — the ninth fold. Instead of a conventional hidden face, a *miniature of the real opened paper fortune teller* appears, bearing the **exact colour and number** previously selected. Pip inside it looks **outwards**.

These are **one shared theatrical location with changing pop-up sets**, not three separate Web pages or a generic town simulation. The entrance choice genuinely selects the staged vignette; the mini set controls a consequential object. For the earliest full pass, deliver ONE polished vignette and two genuinely different branch treatments; only add the second fully playable vignette after the first is integrated and enjoyable.

### Character design and Human Touch

- **Pip**: distinct crafted paper body, ink face with ~4 authored expressions, multi-part hand-rigged head/arms, asymmetrical cut edges and eye movements responsive to actions. Not another generic ghost/mascot.
- **The Paper**: behaves as a physical performer: fold inertia, slight buckling, contact occlusion, real hinges, a worn corner that catches, back-face art, tape bridge, authentic crease highlights. Every major transition an authored choreography; avoid rigid software-ui flips.
- **The Room**: editorial art with a controlled palette — nicotine-warm yellowed paper, oxblood vermilion, deep petrol ink and graphite violet, careful lantern warmth; no AI-template navy dashboard. Pencil annotations, tiny doodles, margin secrets and handwritten title.
- **Light/material**: candle/lantern bounce on folds, truthful faux-paper crease occlusion; GPU Canvas WGSL optional only where real Web runtime supports it and it materially increases folding/depth, never a substitute for designed art.
- **Sound**: custom paper crackle, hand-drawn pencil scratch, soft bell, nervous miniature footfalls and decisive tear/pop; sound-off experience must still read. Reduced motion keeps action and consequence understandable.
- **Personal style**: evidence of actual human changes made in Rive Editor (character expression curves, shape silhouettes, transition timing, ink marks), not only CLI-generated primitives. Capture before/after and work process honestly.

## Complete experience (target ~90–150s for first route, optional discovery ~2–4min)

1. **ARRIVAL (0–5s):** fully composed desk already alive; faint breathing paper, scribble twitch, Pip's tiny eyes glimpsed under flap; one clear, large interactive cue at toy. No long menu or explanatory splash screen. Interacting with pencil/notebook is optional but rewarding.
2. **PERSONAL FORTUNE (5–25s):** choose one of two meaningful paper marks/colours and a small number. The paper opens organically, the room/camera reveals the corresponding illustrated micro-set; chosen symbol persists in mark, prop and Pip reaction. There are at least TWO demonstrably distinct choices, not just text swaps.
3. **PLAY / TENSION (25–55s):** the mini paper theatre becomes a location with an active task (move paper bridge OR turn window) and readable cause/effect. Pip tries to reach the sealed crease. A wrong or premature interaction is acknowledged diegetically; the player can recover, not get silently stuck. A hidden pencilled hint can be discovered; the world responds, not just the stage centre.
4. **THE NINTH FOLD (55–75s):** only once the physical contract is learned, an impossible new crease appears. Player chooses to unfold it. Nested fortune teller displays the **precise selected colour/number**. Existing paper folds invert/rotate in a way regular geometry should not allow; stage boundary is visibly crossed. There must be no invisible fake ninth panel.
5. **INSIDE ACTS ON OUTSIDE (75–100s):** player interacts with nested Pip/toy. The small figure physically tugs a fold and the **outer real tabletop/stage object folds in response**. The desk's pencil, notebook or lantern also reacts to confirm world-scale consequence. This must be real Rive state transition, not a video layer. If concept feasibility demands, simulated 2.5D is honest, but depth/perspective/occlusion must convince.
6. **CONSEQUENCE / TWO ENDINGS (100–130s):** the player makes a consequential final choice:
   - **RELEASE**: open seam, Pip escapes onto the desk; the page behind remains blank except for player's actual fortune mark. The paper object changes shape and rests permanently until replay.
   - **SEAL**: fold the ninth seam closed; Pip remains behind; the *outer* desk and written warning acquire a new crease/mark. An uneasy 'you made it worse' ending with a visibly different stage.
  Both must have distinct authored motion and aftermath. Do not call ending a branch if both return to identical art.
7. **REPLAY / DISCOVERY:** choice resets action state truthfully. The player can choose the other fortune/path and see differentiated vignette/reaction, and optionally collect small handwritten fortune stamps **within the running session**. Do not claim stored cross-session memory unless actually implemented.

**We will not implement arbitrary open-world browsing, 15 levels, remote multiplayer, unsourced player tracking, or generic extra minigames.** The experience's density comes from tactile authored interconnected responses.

## Product layer requirements (no layer may be omitted silently)

1. WORLD: recognisable designed desk/world, with art-driven setting and coherent staging.
2. CHARACTER: expressive Rive-authored living cutout with emotionally responsive states; not a static icon.
3. PURPOSE: legible mini objective and stakes; actual progress and two outcomes.
4. AGENCY: real choice->story prop->character reaction->physical world consequence.
5. DISCOVERY: inspectable mini-set, hint and at least one meaningful optional surprise.
6. INTERACTIVE MOTION: input-sensitive folds/rigs and microfeedback; no passive animated presentation.
7. MATERIAL / GPU: art-quality paper and light treatment, purposeful shaders if technical real.
8. AUDIO / ACCESSIBILITY: authored tactile cues with visual alternatives, keyboard/touch where feasible, reduced motion plan.
9. QUALITY: responsive, no clipped controls, loading or error clarity, fresh session + replay.
10. EVIDENCE: Editor Human Touch, CLI source, real hosted judge link, real replay video. Receipts are *outputs* of an actual product, not the product itself.

## Demonstration paths vs complete experience

**Judge entrance:** see rich desk immediately -> choose mark -> help Pip via mini scene -> ninth spatial reversal -> choose ending -> replay. The narrative remains comprehensible in a ~60–90s guided walk-through even if exploratory play is longer; we do not force spectators into tutorial screens.

**Secondary replay:** select other mark -> alternate stage prop/Pip response -> alternate end. Real choices give replay reasons.

**Negative/failure:** click mini before unlock, double click during fold, change number mid-transition, choose seal/release too early, reset while nested open, browser refresh, muted/mobile interaction. Fail closed gracefully, no stranded state.

## Minimum complete creative release vs optional expansion

**Minimum coherent finished product (not minimum technical proof):**
- One lovingly authored physical environment with interactive peripheral details;
- Pip fully illustrated/rigged with expressive reactions;
- 2 actual fortune variants and meaningful stage prop difference;
- 1 fully playable diorama interaction + recoverable negative path;
- Ninth impossible fold with bound player mark and real nested-to-outer reversal;
- 2 distinguishable consequence endings + replay;
- authored transition sound + sound-off semantics, responsive interactions;
- validated Editor and target browser link with independently played successful and failure paths;
- actual Rive Editor craft proof and adequate challenge submission materials.

**SHOULD if core is real and time allows:** second playable diorama scene, hand-authored hidden marginalia/story fragments, spatial lens/parallax or approved real GPU effect, motion variants and credits/end-card. **MAY** second character, cross-session stamp album, a third alternative ending. **CUT** multiplayer, giant open world, 15 collectible episodes, inaccessible mobile fancy camera, pure decoration masquerading as feature.

## Evidence and release conditions

- Step-zero technical kill spike of fold, mark binding and nested-to-outer agency remains necessary, but **has no authority to declare product complete**.
- Art/world/character/choices/endings are not optional garnish after technical proof; they are central release gates.
- Before Concept Lock compare this full artistic proposition with alternatives against actual competitors and ensure users recognise the spatial contradiction in a cold play.
- Product depth gate demands **world + user goal + agency + secondary interaction + negative/recovery + alternate outcome + art** and Editor/Web evidence, not an isolated 3-event prototype.
- If constrained before 12 Oct deadline, protect ONE FRAME LATE and truthfully classify The Ninth Fold PREVIEW/LOCAL/PARTIAL; do not submit two weak projects just because two repositories exist.
- No public Rive file/social/final Contra submission without the user's explicit checkpoint.

## Boundary / decisions

This is a **creative direction reopen** for comparison, not a frozen Concept Lock and not a task list pretending to be completed. The next step is to decide if this rich world and its technical obligations are both feasible and compelling, then execute the smallest meaningful scene with its artistic composition and one real playable path together — **not** prototype mechanics alone forever.
