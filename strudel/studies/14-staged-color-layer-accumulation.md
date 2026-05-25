# Staged Color Layer Accumulation

## Source Examples

- [SvetimFM/cc-cloud-album-1: `PRISM.js`](https://github.com/SvetimFM/cc-cloud-album-1/blob/main/PRISM.js)

Provenance note: the repository album notes identify this project as
AI-authored by Claude. This study uses it as supplemental evidence for a clear
Strudel code structure, not as evidence of established human composition
practice.

## Primary Axis

Conceptual layer accumulation.

## Structure

This structure maps a concept to named musical layers, then stages those layers
into a cumulative final stack. In the source, colors become voices: red is the
foundation, orange and yellow add melodic motion, later colors deepen the field,
and a pulse keeps the whole concept grounded.

## Why It Works

- Concept names make layer roles memorable.
- The foundation remains constant while later voices enter.
- Masks make accumulation visible in the code.
- The final texture is a sum of named roles rather than a single dense loop.

## Arrangement Map

| Layer | Role |
| --- | --- |
| White light | Continuous drone/foundation. |
| Pulse | Gentle rhythmic anchor. |
| Red | Bass and warm pad foundation. |
| Orange/yellow | Early melodic brightness. |
| Green/blue | Flowing and spacious middle layers. |
| Indigo/violet | Deep and high-register completion. |

## Reusable Template

```js
const base = note("root").sound("sine").sustain(64)
const pulse = stack(softKick, shimmerHat, click)
const layer1 = stack(lowVoice, pad)
const layer2 = melody
const layer3 = brightArp
const layer4 = stack(flowingArp, harmony)
const layer5 = sparseTone

$: stack(
  base,
  pulse,
  layer1,
  layer2.mask("0 1 1 1 1 1"),
  layer3.mask("0 0 1 1 1 1"),
  layer4.mask("0 0 0 1 1 1"),
  layer5.mask("0 0 0 0 1 1")
)
```

## Practice Prompts

- Choose a nonmusical concept and map each part to a named voice.
- Keep the first layer audible for the whole form.
- Add each later voice with a mask rather than rewriting the full stack.

## Caveats

Conceptual names do not guarantee musical contrast. Make the layers differ by
register, rhythm, envelope, or texture so the accumulation is audible.

Because this example is AI-authored and has no detected license, treat it as an
analysis-only source.
