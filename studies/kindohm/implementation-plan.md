# Implementation Plan: Add Kindohm Studies to the Curriculum

## Guiding principle

Use `kindohm/365tidalpatterns` as a study of daily practice, transformation
vocabulary, sample-indexing, glitch gestures, modulation, and section logic. Do
not copy the original pattern files into the beginner course. Translate the
methods into stock-sample, beginner-safe teaching examples.

## Phase 1 - Add study index and references

- [x] Create `studies/kindohm/README.md`.
- [x] Create `studies/kindohm/research-summary.md`.
- [x] Create `studies/kindohm/curriculum-integration-plan.md`.
- [x] Create `studies/kindohm/study-module-plans.md`.
- [x] Create `studies/kindohm/implementation-plan.md`.

## Phase 2 - Create beginner-safe Tidal files

Created canonical Tidal-first files in `studies/kindohm/tidal/`:

- [x] `studies/kindohm/tidal/00-open-this-first.tidal`
- [x] `studies/kindohm/tidal/kindohm-00-teaching-map.tidal`
- [x] `studies/kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal`
- [x] `studies/kindohm/tidal/kindohm-02-transformer-chains.tidal`
- [x] `studies/kindohm/tidal/kindohm-03-sample-index-machines.tidal`
- [x] `studies/kindohm/tidal/kindohm-04-time-effects-and-sections.tidal`
- [x] `studies/kindohm/tidal/kindohm-05-melody-and-hardware-translation.tidal`

The examples should remain:

- Stock-sample-compatible.
- Short enough to teach block by block.
- Clearly connected to the source techniques.
- Independent from Kindohm's custom sample folders and MIDI hardware setup.

## Phase 3 - Patch lessons with optional case-study blocks

Potential future lesson additions:

- `lessons/02-orbits-patterns.md`
  - Add a note on daily pattern practice and safe starts/stops.
- `lessons/04-operators.md`
  - Add a Kindohm sidebar on transformation chains and `slowspread`.
- `lessons/05-euclid-and-binary-rhythms.md`
  - Add a contrast note: 365 Tidal Patterns uses Euclidean syntax less than transformation and conditional scheduling.
- Future sampling/effects lesson
  - Add sample-index and break-slicing examples.
- Future conditionals lesson
  - Add `whenmod` and `foldEvery` section logic examples.

## Phase 4 - Add assignments and capstone variants

Suggested assignment additions:

- Five-day sketchbook:
  - Create five short `.tidal` files from one seed rhythm.
  - Each file changes exactly one dimension: rhythm, sample index, speed, modulation, or section logic.
- Sample-index lab:
  - Scan a sample family with `run`.
  - Replace the scan with a curated index pattern.
  - Add one stable anchor layer.
- Glitch gesture lab:
  - Use `within`, `stut`, `trunc`, or `striate` for one bounded gesture.
  - Keep the base groove recoverable.
- Conditional arrangement:
  - Use `whenmod` for one fill, one dropout, and one return.
- Capstone:
  - Perform a 60-90 second daily-pattern piece with a planned ending.

## Phase 5 - Advanced appendices

Keep optional:

- Original custom sample dependencies.
- MIDI hardware stream setup.
- Older helper syntax from `functions.tidal` and `scales.tidal`.
- Direct analysis of long source patterns.
- Adapting `bps` examples to current `setcps`/course tempo conventions.

## Suggested implementation order

1. Teach from `studies/kindohm/tidal/00-open-this-first.tidal`.
2. Use the daily sketch file before any dense transformation material.
3. Add transformation chains and sample-index machines as Week 1/2 extensions.
4. Use time/effects/section logic as Week 3 performance preparation.
5. Use melody/hardware translation only after students understand note patterns.

## Risk checklist

- [ ] Do not require Kindohm's original custom sample library.
- [ ] Do not assume MIDI hardware devices are available.
- [ ] Keep source excerpts short and paraphrased in lesson documents.
- [ ] Distinguish old Tidal idioms from current course syntax.
- [ ] Keep dense examples teachable by evaluating one block at a time.
