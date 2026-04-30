# Curriculum Integration Plan: ndr-brt / sc-adente Studies

## Integration strategy

Add ndr-brt material in two layers:

1. **Core-course enrichments** — short case-study boxes, mini-exercises, and optional demonstrations added to the existing 3-week beginner course.
2. **Optional study track** — a separate artist-code study sequence for intermediate students who want to work from real livecoding repertoire.

This avoids overloading the beginner curriculum while giving instructors a clear path to deepen the course.

## Fit with the existing 3-week course

| Existing week | Current focus | ndr-brt addition | Source study modules | Tidal teaching files |
| --- | --- | --- | --- | --- |
| Week 1 — Starting Patterns and Building Rhythms | Pattern start/stop, rhythm syntax, transformations, alignment | Artist-dialect sidebar; stable anchor plus transformation-chain lab. | Studies 1, 3, 4 | `00-open-this-first.tidal`, `ndr-brt-01-dialect-and-transformations.tidal` |
| Week 2 — Chords, Arpeggios, and Musical Layers | Bass, chords, arpeggios, layers, parameters | One-sample layering lab; melodic-machine extension for generated pitch and scale mapping. | Studies 2, 6, 7 | `ndr-brt-02-one-sample-many-bodies.tidal`, `ndr-brt-04-melodic-machines.tidal` |
| Week 3 — Arrangement, Improvisation, and Final Performance | Sections, performance safety, final recording/performance | Boolean/probability rhythm lab; live-set architecture checklist; single-sample capstone option. | Studies 5, 8, 9 | `ndr-brt-03-probability-and-rhythm-logic.tidal`, `ndr-brt-05-live-set-architecture.tidal` |

## Proposed additions by repository area

### Lessons

- Add a short “Case study: sc-adente” note to each of the 3 course weeks.
- Add optional challenge blocks rather than replacing beginner material, with the `.tidal` files as the primary teaching surface.
- Add Week 3 capstone option: single-sample performance study.

### Examples

Create simplified, stock-sample-compatible examples based on the extracted themes:

- `studies/ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal`
- `studies/ndr-brt/tidal/ndr-brt-02-one-sample-many-bodies.tidal`
- `studies/ndr-brt/tidal/ndr-brt-03-probability-and-rhythm-logic.tidal`
- `studies/ndr-brt/tidal/ndr-brt-04-melodic-machines.tidal`
- `studies/ndr-brt/tidal/ndr-brt-05-live-set-architecture.tidal`

Keep examples short, comment-rich, and runnable without the original sample library or custom synthdefs.

### Assignments

Add optional extension assignments:

- Week 2: transform a stable pattern with `chunk`, `iter`, `jux`, and `degradeBy`.
- Week 3: build a one-sample miniature with three derived layers.
- Week 3: generate rhythm with boolean/sieve-style thinking or a Markov-inspired melodic pattern.
- Week 3: perform a single-sample or limited-material piece with a planned ending.

### Resources

Add a new reference sheet:

- `resources/ndr-brt-study-notes.md`

Suggested sections:

- Personal shortcut vocabulary
- Transformation chains
- Probability boundaries
- Single-sample recipes
- Boolean rhythm logic
- Performance safety checklist

## Scope boundaries

### Include in beginner-safe course additions

- Transformations using stock Tidal functions.
- Sample slicing/chopping with stock samples.
- Probability, variation, and performance architecture.
- Simplified Markov/scale mapping as optional material.

### Keep optional or advanced

- Custom SuperCollider synthdefs and Olbos/Mutable-style effects.
- MIDI-to-OSC setup.
- Original sample pack assumptions.
- Full custom `BootTidal` integration.

## Expected outcome

After integration, the curriculum will still function as a compact 3-week beginner course, but instructors will also have:

- A real artist-code case study.
- Optional advanced pathways.
- A clearer bridge from classroom exercises to authentic livecoding practice.
- Capstone prompts grounded in actual performance code.
