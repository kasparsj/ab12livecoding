# Relentless Additive Pressure Build

## Source Examples

- [SvetimFM/cc-cloud-album-1: `03_pressure_gradient.js`](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/03_pressure_gradient.js)

Provenance note: the repository album notes identify this project as
AI-authored by Claude. This study uses it as supplemental evidence for a clear
Strudel code structure, not as evidence of established human composition
practice.

## Primary Axis

Monotonic density escalation.

## Structure

This structure makes form by refusing release. A foundation stays active while
new pressure layers enter one by one: bass gradient, crushing synths, chaos
percussion, atmosphere, and a final critical-mass layer.

## Why It Works

- A constant foundation makes every later entry feel heavier.
- Masks create a readable timeline without switching complete sections.
- Each new layer has a distinct pressure role.
- Global modulation can intensify the whole stack without changing the form.

## Arrangement Map

| Layer | Role |
| --- | --- |
| Pressure kicks | Constant physical drive. |
| Sub pressure | Low-frequency weight under the whole track. |
| Gradient bass | First major density increase. |
| Crushing synths | Mid/high harmonic pressure. |
| Chaos percussion | Noise, random hits, and frantic motion. |
| Atmospheric weight | Sustained drones that thicken the top of the stack. |
| Critical mass | Final short-cycle layer for the last stage. |

## Reusable Template

```js
const foundation = stack(layeredKicks, subPressure)
const gradient = stack(mainBass, risingBass, fallingBass)
const crush = stack(lead, arp, stabs)
const chaos = stack(snare, hats, randomHits, noise)
const atmosphere = stack(lowDrone, midDrone, highDrone)

$: stack(
  foundation,
  gradient.mask("0 1 1 1 1 1"),
  crush.mask("0 0 1 1 1 1"),
  chaos.mask("0 0 0 1 1 1"),
  atmosphere.mask("0 0 0 0 1 1"),
  criticalMass.mask("0 0 0 0 0 1")
).every(8, x => x.lpf(200))
```

## Practice Prompts

- Write a build that never drops out.
- Give every added layer a distinct register or texture role.
- Add one global modulation that affects the whole pressure stack.

## Caveats

Relentless builds can fatigue quickly. Keep the educational focus on the
structure: constant foundation plus staged entrances, not maximum loudness.

Because this example is AI-authored and has no detected license, treat it as an
analysis-only source.
