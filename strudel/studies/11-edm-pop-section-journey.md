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
const intro = stack(pad, softArp, hook.slow(4))
const build = stack(kick, bass, hook, hats)
const preDrop = stack(kick.fast(2), bass, hook, riser, snare)
const drop = stack(kick, bass, hookLead, chords, drums)
const breakdown = stack(sparseKick, hook.slow(2), pad)
const finalDrop = stack(drop, counterLead, shimmer)

$: stack(
  intro.mask("1 0 0 0 0 0 0 0"),
  build.mask("0 1 1 0 0 0 0 0"),
  preDrop.mask("0 0 0 1 0 0 0 0"),
  drop.mask("0 0 0 0 1 1 0 0"),
  breakdown.mask("0 0 0 0 0 0 1 0"),
  finalDrop.mask("0 0 0 0 0 0 0 1")
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
