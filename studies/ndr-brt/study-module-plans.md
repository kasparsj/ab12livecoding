# ndr-brt Themed Study Module Plans

These module plans translate recurring ideas from `ndr-brt/sc-adente/tidal` into curriculum-ready studies. Each module can become a lesson sidebar, a lab, or an extension workshop.

---

## Study 1 — Build Your Livecoding Dialect

**Theme:** Personal shorthand and helper functions as part of the instrument.

**Source references:**

- `tidal/Shortcuts.hs`
- `tidal/Functions.hs`

**Learning outcomes:**

- Explain why livecoders develop aliases and wrappers.
- Rewrite verbose patterns using a personal shorthand.
- Design 3–5 safe helper aliases for performance.

**Curriculum placement:** Dialect sidebar, rehearsal tool, or optional extension lab.

**Planned deliverables:**

- Short lesson note: “Your shortcut file is your instrument.”
- Beginner example using local `let` aliases inside a `.tidal` file.
- Extension task to create a tiny `Shortcuts.hs`-style vocabulary.

**Exercise sketch:**

1. Start with a pattern using `gain`, `speed`, `octave`, `degradeBy`.
2. Define aliases such as `g`, `sp`, `oc`, `db`.
3. Refactor the pattern and discuss whether readability improved or worsened.

---

## Study 2 — One Sample, Many Bodies

**Theme:** Full musical textures can emerge from one sample.

**Source references:**

- `tidal/live/20200319_eulerroom_equinox.tidal`
- `tidal/video/triccina.tidal`
- `tidal/practices/granul.tidal`

**Learning outcomes:**

- Build multiple layers from one sound source.
- Use `loopAt`, `chop`, `slice`, `striateBy`, `speed`, `begin`, and `end`.
- Design contrast through register, density, direction, and filtering.

**Curriculum placement:** Main extension or capstone option.

**Planned deliverables:**

- `studies/ndr-brt/tidal/ndr-brt-02-one-sample-many-bodies.tidal`
- Assignment option: single-sample study.
- Instructor demo notes on layer roles: anchor, grain cloud, bass/low-speed layer, accent layer.

**Exercise sketch:**

1. Choose one stock sample.
2. Create a normal-speed anchor.
3. Add a slow layer, a chopped layer, and a high-speed accent layer.
4. End with a global fade or degradation gesture.

---

## Study 3 — Transformation Chains as Composition

**Theme:** Transformations are not decoration; they are structure.

**Source references:**

- `tidal/practices/granul.tidal`
- `tidal/live/20200319_eulerroom_equinox.tidal`

**Learning outcomes:**

- Combine transformations in readable chains.
- Use `every`, `chunk`, `iter`, `ply`, `jux`, `juxBy`, `superimpose`, and `layer`.
- Maintain a stable musical anchor while transforming another dimension.

**Curriculum placement:** Extension or layering lab.

**Planned deliverables:**

- Optional challenge block.
- Example file showing three versions of the same loop: basic, transformed, performance-ready.

**Exercise sketch:**

1. Create a two-slot groove.
2. Leave one slot stable.
3. Apply a transformation chain to the second slot.
4. Remove one transformation at a time and describe what each one contributed.

---

## Study 4 — Probability With Boundaries

**Theme:** Use randomness to create liveness while preserving form.

**Source references:**

- `tidal/records/2020_elea_9003/01_elea.tidal`
- `tidal/practices/markov.tidal`
- `tidal/Functions.hs` for `wchoose`

**Learning outcomes:**

- Use `rand`, `irand`, `choose`, `degradeBy`, `sometimes`, `sometimesBy`, `rarely`, and `almostNever`.
- Restrict randomness to specific musical roles.
- Compare random variation with planned periodic variation.

**Curriculum placement:** Extension lab.

**Planned deliverables:**

- Mini-reference: “randomness dimensions: event, sample, pitch, speed, space, effect.”
- Example with probability increasing across sections.
- Optional assignment: unstable-but-recognizable loop.

**Exercise sketch:**

1. Add `degradeBy 0.2` to a hi-hat layer.
2. Randomize pan only.
3. Randomize sample index only.
4. Discuss which version still feels intentional.

---

## Study 5 — Boolean Rhythm Lab

**Theme:** Rhythm as OR, AND, offset, and inversion.

**Source references:**

- `tidal/Functions.hs` sieve functions
- corpus-wide use of `euclid`, masks, and binary rhythm ideas

**Learning outcomes:**

- Compare Euclidean rhythms with boolean/sieve-style rhythm generation.
- Explain OR, AND, offset, and inversion musically.
- Compose drums from multiple logical rhythm layers.

**Curriculum placement:** Optional algorithmic composition extension.

**Planned deliverables:**

- Explanation note with visual grids.
- Course examples using `euclid` first, then optional custom sieve helpers.
- Assignment: boolean drum machine.

**Exercise sketch:**

1. Create `euclid 3 8`, `euclid 5 8`, and `euclid 7 16` patterns.
2. Combine different rhythms on kick, snare, and hat.
3. Optional: implement a simplified `sieveor` demonstration.

---

## Study 6 — Melodic Machines

**Theme:** Generate pitch streams and map them into scales.

**Source references:**

- `tidal/practices/markov.tidal`
- `tidal/Functions.hs` harmony helpers

**Learning outcomes:**

- Use generated numbers as scale degrees.
- Layer one generated source across registers.
- Understand a Markov pattern as weighted musical memory.

**Curriculum placement:** Extension lab.

**Planned deliverables:**

- `studies/ndr-brt/tidal/ndr-brt-04-melodic-machines.tidal`
- Optional mini-assignment: Markov-inspired melody without requiring advanced theory.
- Instructor note on reducing complexity for beginners.

**Exercise sketch:**

1. Start with `n (scale "minor" "0 2 4 7")`.
2. Replace the fixed numbers with `run`, `choose`, or a simple generated pattern.
3. Add a second layer using the same sequence at another octave or speed.

---

## Study 7 — Modular Timbre and Effects

**Theme:** Parameter modulation as composition.

**Source references:**

- `tidal/Parameters.hs`
- `tidal/practices/mutable.tidal`

**Learning outcomes:**

- Identify which examples require custom synth/effect setup.
- Translate custom-parameter ideas into stock SuperDirt equivalents when needed.
- Use slow LFOs to shape timbre over time.

**Curriculum placement:** Optional advanced sound-design lab.

**Planned deliverables:**

- Setup note distinguishing stock-compatible vs custom-dependent examples.
- Stock translation using `cutoff`, `resonance`, `room`, `delay`, `shape`, `crush`.
- Advanced appendix for `clouds`, `rings`, `timbre`, `color`, and related parameters.

**Exercise sketch:**

1. Make one synth/sample pattern.
2. Slowly modulate one parameter with `sine`.
3. Add a second slower modulation with `cosine` or `perlin`.
4. Discuss when modulation becomes the main musical gesture.

---

## Study 8 — Live Set Architecture

**Theme:** Performance form through code states, transitions, and endings.

**Source references:**

- `tidal/live/20200319_eulerroom_equinox.tidal`
- `tidal/Shortcuts.hs` transition aliases

**Learning outcomes:**

- Plan sections as code states.
- Use `hush`, `silence`, `resetCycles`, and `all` responsibly.
- Rehearse a global ending gesture.

**Curriculum placement:** Final performance preparation.

**Planned deliverables:**

- Final project checklist addendum.
- Example live-set skeleton with intro/build/dense/breakdown/ending comments.
- Safety note: recovery patterns and known-good fallback state.

**Exercise sketch:**

1. Create a section plan.
2. Decide what changes in each section: density, register, effects, sample choice, or global transform.
3. Rehearse the ending separately.

---

## Study 9 — External Control and MIDI

**Theme:** Hardware/control surfaces as performance input.

**Source references:**

- `tidal/midi.scd`
- `tidal/practices/midiii.tidal`

**Learning outcomes:**

- Understand the MIDI-to-OSC bridge conceptually.
- Use MIDI output patterns with `s "midi"` and channel/note parameters.
- Identify setup risks before assigning MIDI work.

**Curriculum placement:** Optional extension lab only.

**Planned deliverables:**

- Optional setup appendix.
- MIDI drum-machine exercise.
- Troubleshooting checklist for device/channel/audio routing.

**Exercise sketch:**

1. Explain the signal path: controller/device → SuperCollider → OSC/control or MIDI out.
2. Build a MIDI drum pattern with simple note values.
3. Optional: map one controller value to one Tidal parameter.
