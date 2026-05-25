# Tablature Translation

## Source Examples

- [eefano/strudel-songs-collection: `blackbird.js`](https://github.com/eefano/strudel-songs-collection/blob/main/blackbird.js)
- [eefano/strudel-songs-collection: `elpueblo.js`](https://github.com/eefano/strudel-songs-collection/blob/main/elpueblo.js)

## Structure

This structure models a physical instrument. Chord/fingering names map to fret
positions, strum symbols map to string orders, and the song form selects those
symbols over time.

## Why It Works

- It preserves instrumental logic instead of flattening everything into notes.
- Fingering tables make repeated shapes reusable.
- Strum tables separate rhythm from harmony.
- The same approach can support guitar, charango, ukulele, or other fretted instruments.

## Arrangement Map

| Component | Role |
| --- | --- |
| Tuning table | Converts strings to base MIDI notes. |
| Fingering map | Names chord shapes or hand positions. |
| Strumming map | Names string-order gestures. |
| Song pattern | Chooses strum and fingering symbols across the form. |

## Reusable Template

```js
const tuning = [40, 45, 50, 55, 59, 64]
const shapes = { home: "0:2:2:1:0:0", away: "x:3:2:0:1:0" }
const strums = { down: "0,1,2,3,4,5", up: "5,4,3,2,1,0" }

const form = "<home away home cadence>"
const hand = form.pickRestart([shapeA, shapeB, shapeA, shapeEnd])
const rhythm = "<down up down down>"

guitar(rhythm, hand, tuning)
```

## Practice Prompts

- Write three named chord shapes and two named strums.
- Build a song from shape symbols rather than raw notes.
- Add a second voice that doubles only selected phrases.

## Caveats

Physical modeling can become code-heavy. Keep the tables small for study
material, and only add new symbols when they make the musical form clearer.
