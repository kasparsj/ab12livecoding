# Named Phase Album Track

## Study Metadata

- Primary axis: narrative phase form.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: AI-authored supplemental evidence from a repository with no
  detected license; analysis-only.

## Source Examples

- [SvetimFM/cc-cloud-album-1: `01_bootstrap_collapse.js`](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/01_bootstrap_collapse.js)

Provenance note: the repository album notes identify this project as
AI-authored by Claude. This study uses it as supplemental evidence for a clear
Strudel code structure, not as evidence of established human composition
practice.

## Structure

This structure writes a track as named phases. Each phase is a complete stack
with its own emotional role, then masks determine where each phase is active in
the full timeline.

## Why It Works

- The phase names describe the form before the code is heard.
- Each phase can be tested independently.
- Masking lets multiple complete stacks coexist in one final arrangement.
- Density, distortion, and rhythm can evolve dramatically between phases.

## Arrangement Map

| Phase | Role |
| --- | --- |
| Initialization | Establish the core pulse and texture. |
| Cascade | Increase density and instability. |
| Collapse | Peak intensity and maximum layering. |
| Emergence | Reduce chaos into a clearer final state. |

## Reusable Template

```js
const phase1 = stack(kick, bass, texture)
const phase2 = stack(kick, fasterBass, moreTexture)
const phase3 = stack(denseKick, noise, peakLead)
const phase4 = stack(stableKick, clearMelody)

stack(
  phase1.mask("1 1 0 0 0 0 0 0"),
  phase2.mask("0 0 1 1 0 0 0 0"),
  phase3.mask("0 0 0 0 1 1 1 0"),
  phase4.mask("0 0 0 0 0 0 1 1")
)
```

## Practice Prompts

- Name four phases before writing notes.
- Make each phase work as a standalone stack.
- Use masks to combine the phases into one timeline.

## Caveats

Named phases can become prose-heavy. The code still needs audible contrast:
register, density, rhythm, or effect changes should make each phase distinct.

Because this example is AI-authored and has no detected license, treat it as an
analysis-only source.
