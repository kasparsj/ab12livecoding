# Industrial Trance Macro Form

## Source Examples

- [SvetimFM/cc-cloud-album-1: `02_iron_dreams.js`](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/02_iron_dreams.js)

Provenance note: the repository album notes identify this project as
AI-authored by Claude. This study uses it as supplemental evidence for a clear
Strudel code structure, not as evidence of established human composition
practice.

## Primary Axis

Four-state macro-form built from reusable layer groups.

## Structure

This structure separates a track into core layer groups first: foundation,
bassline, machinery/percussion, and melodic dream material. It then combines
those groups into four large performance states: intro, main, breakdown, and
climax.

## Why It Works

- Role groups are reusable across multiple sections.
- The intro and main can share material while changing intensity.
- The breakdown keeps identity by retaining selected roles at lower density.
- The climax is easy to read because it is the main state plus extra pressure.

## Arrangement Map

| State | Role |
| --- | --- |
| Intro | Start the machine with foundation, reduced bass, and sparse texture. |
| Main | Run the full groove with dream material entering gradually. |
| Breakdown | Reduce the machinery and foreground the melodic layer. |
| Climax | Restore all groups and add an extra intensity layer. |

## Reusable Template

```js
const foundation = stack(kick, sub, hats, snare)
const bassline = stack(acidBass, subReinforcement)
const machine = stack(noisePerc, openHat, texture)
const dream = stack(arp, pad, lead, shimmer)

const intro = stack(foundation, bassline.gain(0.6), machine.degradeBy(0.7))
const main = stack(foundation, bassline, machine, dream.mask("0 1 1 1"))
const breakdown = stack(foundation.gain(0.5), dream, longPad)
const climax = stack(foundation, bassline.gain(0.9), machine, dream, extraBass)

$: stack(
  intro.mask("1 1 0 0 0 0 0"),
  main.mask("0 0 1 1 0 0 0"),
  breakdown.mask("0 0 0 0 1 0 0"),
  climax.mask("0 0 0 0 0 1 1")
)
```

## Practice Prompts

- Build four named role groups before arranging sections.
- Make the breakdown use existing material rather than a new unrelated loop.
- Add one climax-only layer and verify that the main state still works without it.

## Caveats

Large role groups can hide balance problems. Test each group alone before
stacking the full form.

Because this example is AI-authored and has no detected license, treat it as an
analysis-only source.
