# Lettered Cue Score

## Study Metadata

- Primary axis: formal mechanism.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: analysis-only; source repository has no detected license.

## Source Examples

- [eefano/strudel-songs-collection: `epicbiopic.js`](https://github.com/eefano/strudel-songs-collection/blob/main/epicbiopic.js)

## Structure

This structure uses letters as cue names. A top-level pattern selects letters
over time, and each letter maps to a chord, bass, melody, or drum phrase. The
same cue stream can drive multiple musical roles, keeping a complex score
aligned.

## Why It Works

- Letter cues make a long form readable.
- Harmony, melody, bass, and drums can share the same section timeline.
- Repeated letters create thematic return.
- Different lookup tables let one formal cue trigger different material per role.

## Arrangement Map

| Layer | Structural job |
| --- | --- |
| Cue stream | Declares the order and duration of sections. |
| Harmony table | Turns cue letters into chords and voicings. |
| Melody table | Turns cue letters into foreground phrases. |
| Drum table | Turns cue letters into rhythmic energy levels. |

## Reusable Template

```js
const form = "<a b a c d e c f>"

const chords = form.pickRestart({
  a: "A",
  b: "B",
  c: "C",
  d: "D",
  e: "E",
  f: "F"
}).sub(12)

const melody = form.pickRestart({
  a: "a c e",
  b: "b d f",
  c: "c a f e",
  d: "d f",
  e: "e c",
  f: "~"
}).add(24).gain(0.2)

stack(chord(chords).s("gm_epiano2"), note(melody).s("gm_violin"))
```

## Practice Prompts

- Make a cue string with at least one repeated letter.
- Let the same cue string choose both chords and drums.
- Add one cue that is rhythmically dense but harmonically simple.

## Caveats

Letter maps are powerful but can become opaque. Name tables by role and keep the
top-level form short enough to scan.
