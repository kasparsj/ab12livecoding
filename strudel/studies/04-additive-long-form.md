# Additive Long Form

## Study Metadata

- Primary axis: temporal layering.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: analysis-only; source repository has no detected license and
  includes third-party composition credits.

## Source Examples

- [eefano/strudel-songs-collection: `swimmingsnake.js`](https://github.com/eefano/strudel-songs-collection/blob/main/swimmingsnake.js)
- [eefano/strudel-songs-collection: `savour.js`](https://github.com/eefano/strudel-songs-collection/blob/main/savour.js)

## Structure

This structure starts with a core bed and introduces foreground parts only after
long spans. Each layer has its own cue map, so the piece grows by delayed entry
and recurring returns rather than by one global section switch.

## Why It Works

- Long rests are part of the form.
- Each layer has an independent entrance schedule.
- Repeated cue names create returns without resetting the whole arrangement.
- The stack can remain running while the perceived song changes slowly.

## Arrangement Map

| Layer | Entry behavior |
| --- | --- |
| Bed | Starts immediately and defines the atmosphere. |
| Bass or lower motion | Alternates between primary and contrast cues. |
| Lead | Enters after a long rest, then returns later. |
| Counter-line | Enters even later, increasing density near the end. |
| Small percussion | Runs throughout as glue. |

## Reusable Template

```js
const cues = {
  a: "primary phrase",
  b: "secondary phrase",
  c: "variation phrase",
  d: "ending phrase"
}

stack(
  bed,
  "<a@48 b@24 a@24 c@26>".pickRestart(cues),
  "<~@48 lead@24 ~@24 lead2@26>".pickRestart(cues),
  "<~@96 counter@46 counter2@26>".pickRestart(cues),
  smallPercussion
)
```

## Practice Prompts

- Make one layer enter after 32 cycles of silence.
- Give each layer a different cue timeline.
- Keep one small repeating sound active across all sections.

## Caveats

Long forms are hard to debug by ear. Use clear cue names and comment where each
major layer first appears.
