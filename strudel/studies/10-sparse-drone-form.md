# Sparse Drone Form

## Study Metadata

- Primary axis: density profile.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: AI-authored supplemental evidence from a repository with no
  detected license; analysis-only.

## Source Examples

- [SvetimFM/cc-cloud-album-1: `04_substrate.js`](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/04_substrate.js)

Provenance note: the repository album notes identify this project as
AI-authored by Claude. This study uses it as supplemental evidence for a clear
Strudel code structure, not as evidence of established human composition
practice.

## Structure

This structure treats absence as the form. Long drones, rare percussive events,
slow bass motion, and distant tones define sections without dense rhythmic
change.

## Why It Works

- Slow sustain creates a clear ground.
- Rare events become memorable because the texture leaves space.
- Multiple drone registers can imply depth without melodic complexity.
- Very slow masks and patterns create form at a larger timescale.

## Arrangement Map

| Layer | Role |
| --- | --- |
| Sub drone | Continuous foundation. |
| Sparse kick | Physical pulse with large gaps. |
| Slow bass | Minimal harmonic movement. |
| Texture | Air, noise, and distant motion. |
| Rare thought | Occasional high-register event. |

## Reusable Template

```js
const drone = stack(
  note("root-low").s("sine").sustain(64),
  note("root-mid").s("sine").sustain(64)
)

const pulse = s("bd ~ ~ ~").gain(0.9)
const slowBass = note("<root flat7 flat6 flat4>").slow(4)
const rareTone = note("~!31 high").slow(4).room(0.9)

$: stack(drone, pulse, slowBass, rareTone)
```

## Practice Prompts

- Write a one-note drone that lasts longer than the listener expects.
- Add one event that happens only once every 16 or 32 cycles.
- Make silence carry the section boundary instead of adding drums.

## Caveats

Sparse forms depend on sound design. If the tones are too plain, the structure
can feel empty rather than intentional.

Because this example is AI-authored and has no detected license, treat it as an
analysis-only source.
