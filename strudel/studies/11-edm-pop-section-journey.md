# EDM Pop Section Journey

## Source Examples

- [SvetimFM/cc-cloud-album-1: `MIDNIGHT_PACIFIC.js`](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/MIDNIGHT_PACIFIC.js)

Provenance note: the repository album notes identify this project as
AI-authored by Claude. This study uses it as supplemental evidence for a clear
Strudel code structure, not as evidence of established human composition
practice.

## Primary Axis

Sectional pop/EDM macro-form.

## Structure

This structure writes a complete track as a guided sequence of named sections:
intro, build, pre-drop, drop, breakdown, second build, and final drop. Shared
motifs carry identity across sections while masks decide where each section is
active.

## Why It Works

- Named sections make the form readable before playback.
- Reused motifs make the build, drop, and breakdown feel connected.
- Pre-drop and build sections make transitions explicit instead of accidental.
- The final drop can reuse the first drop and add a new top layer.

## Arrangement Map

| Section | Role |
| --- | --- |
| Intro | Establish motifs and space. |
| Build 1 | Add pulse, bass, melody, and hats. |
| Pre-drop | Increase tension with riser, snare, and brighter harmony. |
| Drop | Present the hook at full density. |
| Breakdown | Remove density and expose the motifs. |
| Build 2 | Reintroduce energy quickly. |
| Final drop | Repeat the peak with added lift. |

## Reusable Template

```js
const melody_A = note("d4 e4 fs4 a4 b4 a4 fs4 e4")

const bass_melody = note("<d2 a2 b2 fs2>*2")

const pad = note("D")
  .sound("square")
  .lpf(600)
  .gain(0.3)
  .room(0.9)
  .sustain(16)
  .attack(4)

  // Soft arpeggio - stars twinkling
const softArp = note("d4 fs4 a4 d5")
    .sound("triangle")
    .lpf(1200)
    .gain(0.25)
    .room(0.7)
    .sustain(0.3)
    .slow("<1 2>")

  // Distant synth - the horizon calling
const hook = melody_A
    .sound("sine")
    .lpf(1000)
    .gain(0.2)
    .room(0.9)
    .slow("<1 4 1 2>")

const kick = s("bd ~ ~ ~ bd ~ ~ ~")
    .gain(0.7)
    .lpf(200)

  // Bass melody - here we go!
const bass = bass_melody
    .sound("sawtooth")
    .lpf(400)
    .gain(0.6)
    .sustain(0.4)

// Main melody enters clearly
const riser = melody_A
    .sound("sawtooth")
    .lpf(1400)
    .gain(0.5)
    .delay(0.4)
    .delaytime(0.375)

const intro = stack(pad, softArp, hook.slow(4))
const build = stack(kick, bass, hook)
const preDrop = stack(kick.fast(2), bass, hook, riser)
const drop = stack(kick, bass, riser)
const breakdown = stack(kick, hook.slow(2), pad)
const finalDrop = stack(drop, hook)

$: stack(
  intro.mask("<1 0 0 0 0 0 0 0>/8"),
  build.mask("<0 1 1 0 0 0 0 0>/8"),
  preDrop.mask("<0 0 0 1 0 0 0 0>/8"),
  drop.mask("<0 0 0 0 1 1 0 0>/8"),
  breakdown.mask("<0 0 0 0 0 0 1 0>/8"),
  finalDrop.mask("<0 0 0 0 0 0 0 1>/8")
)
```

## Practice Prompts

- Write two motifs before writing any drums.
- Make one pre-drop that changes density and brightness at the same time.
- Build a final drop by reusing the first drop and adding one new role.

## Caveats

This form can become too literal if every section is only a density step. Make
at least one section change register, sound design, or rhythmic emphasis.

Because this example is AI-authored and has no detected license, treat it as an
analysis-only source.
