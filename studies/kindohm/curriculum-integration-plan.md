# Curriculum Integration Plan: Kindohm / 365 Tidal Patterns Studies

## Integration strategy

Add Kindohm material in two layers:

1. **Core-course enrichments** - short case-study boxes, mini-exercises, and optional demonstrations added to the existing 3-week beginner course.
2. **Optional study track** - a separate artist-sketchbook study sequence for intermediate students who want to learn from a large practice archive.

This keeps the beginner path compact while giving instructors a practical model
for turning daily sketches into performance vocabulary.

## Fit with the existing 3-week course

| Existing week | Current focus | Kindohm addition | Source study modules | Tidal teaching files |
| --- | --- | --- | --- | --- |
| Week 1 - Starting Patterns and Building Rhythms | Pattern start/stop, rhythm syntax, transformations, alignment | Daily sketch method; transformation-chain listening lab. | Studies 1, 2 | `00-open-this-first.tidal`, `kindohm-01-daily-sketch-and-reuse.tidal`, `kindohm-02-transformer-chains.tidal` |
| Week 2 - Chords, Arpeggios, and Musical Layers | Bass, chords, arpeggios, layers, parameters | Sample-index machines; LFO/effect modulation; stock translation of custom sample folders. | Studies 3, 4, 6 | `kindohm-03-sample-index-machines.tidal`, `kindohm-04-time-effects-and-sections.tidal` |
| Week 3 - Arrangement, Improvisation, and Final Performance | Sections, performance safety, final recording/performance | `whenmod` section logic; daily-pattern capstone; MIDI/hardware translation discussion. | Studies 5, 7, 8 | `kindohm-04-time-effects-and-sections.tidal`, `kindohm-05-melody-and-hardware-translation.tidal` |

## Proposed additions by repository area

### Lessons

- Add a short "Case study: 365 Tidal Patterns" note to transformation, sampling, and arrangement lessons.
- Use the Kindohm track to teach how repeated practice creates a personal vocabulary.
- Add optional challenge blocks rather than replacing beginner material.

### Examples

Create simplified, stock-sample-compatible examples based on extracted themes:

- `studies/kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal`
- `studies/kindohm/tidal/kindohm-02-transformer-chains.tidal`
- `studies/kindohm/tidal/kindohm-03-sample-index-machines.tidal`
- `studies/kindohm/tidal/kindohm-04-time-effects-and-sections.tidal`
- `studies/kindohm/tidal/kindohm-05-melody-and-hardware-translation.tidal`

Keep examples short, comment-rich, and runnable without Kindohm's custom sample
library, hardware setup, or older BootTidal environment.

### Assignments

Add optional extension assignments:

- Week 1: make five small daily sketches from the same starting rhythm.
- Week 2: build a stock sample-index machine using `samples`, `run`, and `slow`.
- Week 2: turn one loop into three variations using `striate`, `stut`, and `trunc`.
- Week 3: design a `whenmod` arrangement with a planned fill, dropout, and return.
- Week 3: translate a hardware-specific melody idea into `n` and stock synth samples.

### Resources

Add a new reference sheet if this track becomes part of the core course:

- `resources/kindohm-study-notes.md`

Suggested sections:

- Daily sketch workflow
- Transformation menus
- Sample-index recipes
- Glitch gesture recipes
- `whenmod` arrangement patterns
- Hardware-to-stock translation checklist

## Scope boundaries

### Include in beginner-safe course additions

- Stock-sample translations of sample-index techniques.
- Transformation chains using stock Tidal functions.
- Time-local glitch with `striate`, `stut`, `trunc`, and `within`.
- Slow modulation of standard controls.
- Periodic section logic with `every`, `whenmod`, and `foldEvery`.

### Keep optional or advanced

- Original custom sample dependencies.
- MIDI hardware streams and device-specific control names.
- Older `bps` setup assumptions.
- Custom helper functions that depend on old Tidal versions.
- Long one-line source patterns that are hard for beginners to inspect.

## Expected outcome

After integration, the curriculum will still function as a compact 3-week
beginner course, but instructors will also have:

- A real daily-practice archive case study.
- A path from one-line sketches to performable sections.
- Stock-compatible labs for sample-indexing, glitch, and timed transformations.
- A capstone prompt grounded in authentic livecoding practice.
