# Sample-Slice Groove

## Source Examples

- [smaudd/strudel-sessions: `lofi-1.js`](https://github.com/smaudd/strudel-sessions/blob/master/lofi-1.js)

## Structure

This structure centers the track on a chopped break or sample. Supporting hats,
pads, bass, and lead are defined as optional layers, then the active stack
selects a subset for the current performance state.

## Why It Works

- The sample slice gives the groove a strong identity.
- Pads and bass reinforce the key without needing many sections.
- Commented or toggled layers create practical live arrangement states.
- A global filter slider can act as the main performance transition.

## Arrangement Map

| Layer | Role |
| --- | --- |
| Break slice | Main groove and texture. |
| Hat | High-frequency motion. |
| Pad | Harmonic bed. |
| Bass | Optional weight and movement. |
| Lead | Optional foreground variation. |
| Filter | Performance transition control. |

## Reusable Template

```js
const breakLoop = s("break").fit().scrub("slice pattern")
const hats = s("hat pattern")
const pad = note("chord loop").s("pad")
const bass = note("bass loop").s("bass")
const lead = n(irand(16)).scale("pentatonic").s("lead")
const filter = slider(400, 0, 1200)

$: stack(hats, pad, breakLoop /*, bass, lead */).hpf(filter)
```

## Practice Prompts

- Build a beat from one sample loop and one pad.
- Add bass and lead as commented performance options.
- Use one slider as the main breakdown/build control.

## Caveats

Sample-driven structures can hide weak form. Make at least one clear transition:
filter, mute, bass entry, or lead entry.
