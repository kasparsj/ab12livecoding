# Tracker Voice Split

## Study Metadata

- Primary axis: voice architecture.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: analysis-only; source repository has no detected license and
  credits a third-party composition.

## Source Examples

- [eefano/strudel-songs-collection: `aztecchallenge.js`](https://github.com/eefano/strudel-songs-collection/blob/main/aztecchallenge.js)

## Structure

This structure treats a song like a tracker or chip-tune module: separate voices
share a pool of named phrases, but each voice has its own timeline, octave, and
instrument.

## Why It Works

- Independent voices create counterpoint without a large stack of unrelated loops.
- Shared phrase names keep the arrangement compact.
- Different transpositions make the same form work as lead, support, and bass.
- Voice timelines can leave deliberate gaps for chip-style clarity.

## Arrangement Map

| Voice | Role |
| --- | --- |
| Voice 1 | Main melody and repeated hook material. |
| Voice 2 | Harmony or lower counter-line. |
| Voice 3 | Bass/support voice with gaps and alternate phrase lengths. |

## Reusable Template

```js
const parts = {
  a: n("phrase a"),
  b: n("phrase b"),
  c: n("phrase c"),
  d: n("phrase d")
}

voice1: "<a b c b a d>".pickRestart(parts).scale("minor").s("lead")
voice2: "<a b c d a d>".pickRestart(parts).scale("minor").s("square")
voice3: "<low ~ b ~ d>".pickRestart(parts).scale("minor").s("triangle")
```

## Practice Prompts

- Write four named phrases.
- Use the same phrase pool in three different octave ranges.
- Remove events from one voice to let another voice lead.

## Caveats

Counterpoint gets crowded quickly. Use rests and narrower instrument ranges so
each voice remains legible.
