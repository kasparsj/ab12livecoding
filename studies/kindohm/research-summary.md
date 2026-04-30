# Kindohm / 365 Tidal Patterns Research Summary

Source: [`kindohm/365tidalpatterns`](https://github.com/kindohm/365tidalpatterns)

## Repository material inspected

The repository is a daily practice archive containing 461 `.tidal` files:

- `patterns-001-100/` - early daily sketches with dense `d1` patterns, sample slicing, and transformation chains.
- `patterns-101-200/` - continued single-pattern studies with stronger use of `slowspread`, `whenmod`, delay, and sample-indexing.
- `patterns-201-300/` - larger stacked textures, custom samples, and section-like replacement gestures.
- `patterns-301-400/` - more explicit arrangement logic, `whenmod` chains, `trunc`, `stut`, `accelerate`, and generated sample choices.
- `patterns-401-500/` - later sketches with newer Tidal syntax, MIDI/hardware streams, `foldEvery`, `sometimesBy`, custom helpers, and scale/melody code.
- `functions.tidal` - helper functions for glitch gestures, delay modulation, shifting, truncation, and list choice.
- `scales.tidal` - scale/chord helpers and generated melodic mapping utilities.

The source README describes the project as 365 Tidal patterns created over 365
days starting on 2013-12-28, with listening links and a note that the patterns
depend on custom samples.

## Extracted recurring topics

### 1. Daily sketchbook practice

Representative files:

- [`readme.md`](https://github.com/kindohm/365tidalpatterns/blob/master/readme.md)
- [`patterns-001-100/pattern001.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern001.tidal)
- [`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal)

Teaching themes:

- Treat a short pattern as a complete daily sketch.
- Keep one runnable idea per file.
- Reuse successful gestures across days instead of starting from zero every time.
- Archive experiments so students can later extract their own vocabulary.

### 2. Transformation chains as the main form

Representative files:

- [`patterns-001-100/pattern001.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern001.tidal)
- [`patterns-101-200/pattern125.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-101-200/pattern125.tidal)
- [`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal)

Teaching themes:

- Build form by chaining `every`, `whenmod`, `foldEvery`, `rev`, `iter`, `density`, `slow`, `trunc`, and offsets.
- Use transformations as scheduled musical events, not decoration.
- Teach students to remove one transformation at a time and name what changed.

### 3. `slowspread` and transformation menus

Representative files:

- [`patterns-001-100/pattern093.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern093.tidal)
- [`patterns-101-200/pattern150.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-101-200/pattern150.tidal)
- [`patterns-401-500/pattern402.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern402.tidal)

Teaching themes:

- Make a menu of transformations and let Tidal rotate through it.
- Compare `slowspread ($) [...] pattern` with manual section changes.
- Use a transformation menu to rehearse variation without rewriting the base loop.

### 4. Sample-index machines

Representative files:

- [`patterns-001-100/pattern050.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern050.tidal)
- [`patterns-001-100/pattern084.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern084.tidal)
- [`patterns-201-300/pattern250.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern250.tidal)

Teaching themes:

- Separate sample family from sample index: `samples "kit*8" (run 8)`.
- Use `run`, slow index patterns, and hand-written index lists to scan a folder.
- Translate custom sample families into stock `bd`, `sn`, `hh`, `cp`, `arpy`, `feel`, and `drum` studies.

### 5. Break slicing and glitch gestures

Representative files:

- [`patterns-001-100/pattern025.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern025.tidal)
- [`patterns-001-100/pattern040.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern040.tidal)
- [`functions.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/functions.tidal)

Teaching themes:

- Use `striate`, `chop`, `stut`, `trunc`, `smash`, and `within` to turn a loop into break material.
- Keep gain low when stacking sliced loops.
- Teach glitch gestures as time-local events inside a phrase.

### 6. Continuous modulation and effects

Representative files:

- [`patterns-001-100/pattern034.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern034.tidal)
- [`patterns-301-400/pattern325.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern325.tidal)
- [`patterns-401-500/pattern432.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern432.tidal)

Teaching themes:

- Use `slow sine` or `slow tri` to animate `cutoff`, `resonance`, `delaytime`, `delayfeedback`, `pan`, `shape`, `coarse`, and `accelerate`.
- Treat effect automation as a musical layer.
- Combine fixed rhythmic structure with slow-changing control patterns.

### 7. Periodic replacement and arrangement states

Representative files:

- [`patterns-201-300/pattern225.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern225.tidal)
- [`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal)
- [`patterns-401-500/pattern453.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern453.tidal)

Teaching themes:

- Use `whenmod` and `const` to replace or remove a layer during specific cycle windows.
- Build section logic from recurring cycle counts.
- Practice planned interruptions: fills, dropouts, short breakdowns, and return gestures.

### 8. Melody, scale helpers, and hardware translation

Representative files:

- [`scales.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/scales.tidal)
- [`patterns-401-500/pattern441.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern441.tidal)
- [`patterns-401-500/pattern443.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern443.tidal)

Teaching themes:

- Map generated numbers into scales and chord shapes.
- Translate hardware-specific streams into stock `n`/`note` examples.
- Keep MIDI and custom controller setup as optional advanced material.

## Quantitative scan

A lightweight scan of the cloned source showed especially frequent use of:

- `every` - 519 matches
- `whenmod` - 370 matches
- `stack` - 364 matches
- `bps` - 337 matches
- `samples` - 336 matches
- `run` - 303 matches
- `rev` - 290 matches
- `striate` - 269 matches
- `density` - 262 matches
- `shape` - 250 matches
- `iter` - 232 matches
- `jux` - 227 matches
- `stut` - 186 matches
- `trunc` - 190 matches
- `slowspread` - 149 matches

This supports teaching the archive as a study in transformation scheduling,
sample-indexing, time-local glitch, and repeated daily variation.
