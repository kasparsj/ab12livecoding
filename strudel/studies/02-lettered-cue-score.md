# Lettered Cue Score

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

const harmony = form.pickRestart({
  a: "home chords",
  b: "lift chords",
  c: "bridge chords",
  d: "dark chords",
  e: "return chords",
  f: "ending chord"
})

const melody = form.pickRestart({
  a: "main phrase",
  b: "answer phrase",
  c: "bridge phrase",
  d: "peak phrase",
  e: "return phrase",
  f: "~"
})

stack(chord(harmony), note(melody), drumsFrom(form))
```

## Practice Prompts

- Make a cue string with at least one repeated letter.
- Let the same cue string choose both chords and drums.
- Add one cue that is rhythmically dense but harmonically simple.

## Caveats

Letter maps are powerful but can become opaque. Name tables by role and keep the
top-level form short enough to scan.
