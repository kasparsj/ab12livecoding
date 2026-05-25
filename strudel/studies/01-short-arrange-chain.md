# Short Arrange Chain

## Source Examples

- [eefano/strudel-songs-collection: `budsandspawn.js`](https://github.com/eefano/strudel-songs-collection/blob/main/budsandspawn.js)

## Structure

This structure makes a complete miniature form from short contrasting blocks.
Each block has the same instrumentation function, but changes key center,
melodic direction, drum pattern, duration, or speed. The final line chains those
blocks with `arrange`.

## Why It Works

- The section generator keeps instrumentation consistent.
- The blocks are short, so contrast is immediate.
- `arrange` makes form explicit instead of hiding it in one long pattern.
- Speed changes let a section feel like a transition without needing a separate bridge.

## Arrangement Map

| Section | Role |
| --- | --- |
| A | Establish the core chord, sax, and drum identity. |
| B | Shift harmony and increase drum movement. |
| C | Reverse melodic direction and destabilize the meter. |
| D | Return to the home scale with a fuller drum texture. |

## Reusable Template

```js
const makeSection = (scaleName, chordPart, leadPart, drumPart) =>
  stack(
    chordPart.scale(scaleName),
    leadPart.scale(scaleName),
    s(drumPart)
  )

const a = makeSection("home", chordsA, leadUp, "simple drums")
const b = makeSection("away", chordsA, leadUp, "busier drums")
const c = makeSection("contrast", chordsA, leadDown, "broken drums")
const d = makeSection("home", chordsA, leadUp, "full drums")

arrange([3, a], [1, b.fast(1.2)], [1, c.fast(1.3)], [4, d])
```

## Practice Prompts

- Write four two-bar sections that share one instrumentation function.
- Make the third section reverse the main melody or rhythm.
- Try one section at a slightly different speed, then return to the original pulse.

## Caveats

Very short `arrange` sections can feel jumpy. Keep one recurring element, such
as the same instrument stack or melodic contour, so the listener hears it as one
piece rather than unrelated fragments.
