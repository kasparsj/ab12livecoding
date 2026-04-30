# ndr-brt / sc-adente Research Summary

Source: [`ndr-brt/sc-adente/tidal`](https://github.com/ndr-brt/sc-adente/tree/master/tidal)

## Repository material inspected

The `tidal/` folder contains performance material organized roughly as:

- `practices/` — sketches, experiments, technique studies, and rehearsal fragments.
- `live/` — complete or semi-complete live set files.
- `compilations/` — compilation and themed release pieces.
- `published/` — shorter published track/performance materials.
- `records/` — album/split/release code grouped by recording project.
- `video/` — concise pieces and video-oriented sketches.
- `Functions.hs` — custom functions for tempo, modulation, harmony, sieves, slicing, and pattern helpers.
- `Shortcuts.hs` — personal shorthand vocabulary for live performance.
- `Parameters.hs` — custom synth/effect parameters, including Olbos and Mutable-inspired controls.
- `midi.scd` — SuperCollider MIDI-to-OSC bridge.

## Extracted recurring topics

### 1. Personal livecoding dialect

Representative files:

- [`tidal/Shortcuts.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Shortcuts.hs)
- [`tidal/Functions.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Functions.hs)

Teaching themes:

- Create compact aliases for performance speed: `g`, `sp`, `oc`, `db`, `sl`, `fa`, `h`, `si`.
- Wrap common effects into memorable helpers: `lp`, `hp`, `rvb`, `del`, `adsr`, `rmod`.
- Treat a shortcut file as part of the instrument, not just convenience code.

### 2. Time and pattern transformation

Representative files:

- [`tidal/practices/granul.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/granul.tidal)
- [`tidal/live/20200319_eulerroom_equinox.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/live/20200319_eulerroom_equinox.tidal)

Teaching themes:

- Use transformations as compositional structure: `slow`, `fast`, `hurry`, `every`, `chunk`, `iter`, `ply`.
- Use `layer`, `superimpose`, `jux`, and `juxBy` to derive multiple bodies from one source.
- Keep an anchor while destabilizing selected dimensions.

### 3. Single-sample and granular composition

Representative files:

- [`tidal/live/20200319_eulerroom_equinox.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/live/20200319_eulerroom_equinox.tidal)
- [`tidal/video/triccina.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/video/triccina.tidal)
- [`tidal/practices/granul.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/granul.tidal)

Teaching themes:

- Build a full set from one sample by changing playback speed, slice index, direction, filtering, and density.
- Use `loopAt`, `chop`, `slice`, `striateBy`, `begin`, `end`, and `speed`.
- Use spectral damage as arrangement: `waveloss`, `crush`, `coarse`, `binshift`, `distort`, `tanh`.

### 4. Controlled probability

Representative files:

- [`tidal/records/2020_elea_9003/01_elea.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/records/2020_elea_9003/01_elea.tidal)
- [`tidal/practices/markov.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/markov.tidal)

Teaching themes:

- Use probability to create liveness without surrendering form.
- Combine `rand`, `irand`, `choose`, `degradeBy`, `sometimesBy`, `rarely`, and `almostNever`.
- Limit randomness to one musical dimension at a time: event presence, sample index, pan, speed, pitch, or effect amount.

### 5. Algorithmic rhythm and boolean logic

Representative files:

- [`tidal/Functions.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Functions.hs)
- `tidal/practices/*` files using `euclid`, masks, and binary ideas.

Teaching themes:

- Extend Euclidean rhythm into boolean rhythm thinking.
- Explain sieve logic with OR, AND, offset, inversion, and length.
- Use rhythm generators to structure drums, sample triggers, and melodic gates.

### 6. Melodic machines

Representative files:

- [`tidal/practices/markov.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/markov.tidal)
- [`tidal/Functions.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Functions.hs)

Teaching themes:

- Map generated numbers to scales.
- Layer one melodic source across octave/register/speed transformations.
- Introduce Markov thinking as “memory-based choice,” not as abstract math first.

### 7. Custom synth and effect ecosystems

Representative files:

- [`tidal/Parameters.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Parameters.hs)
- [`tidal/practices/mutable.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/mutable.tidal)

Teaching themes:

- Treat synth/effect parameters as performable composition material.
- Use slow modulation patterns to explore timbre.
- Separate beginner-compatible examples from setup-heavy custom synth dependencies.

### 8. Live set architecture

Representative files:

- [`tidal/live/20200319_eulerroom_equinox.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/live/20200319_eulerroom_equinox.tidal)
- [`tidal/Shortcuts.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Shortcuts.hs)

Teaching themes:

- Use `hush`, `silence`, `resetCycles`, and global `all` transformations safely.
- Build sections through parameter states rather than only pattern replacement.
- Rehearse transitions and endings as explicit code.

### 9. MIDI and external control

Representative files:

- [`tidal/midi.scd`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/midi.scd)
- [`tidal/practices/midiii.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/midiii.tidal)

Teaching themes:

- Use hardware and controller input as performance extension.
- Route MIDI note/CC values into OSC/Tidal control.
- Keep MIDI as an optional advanced lab because setup varies.
