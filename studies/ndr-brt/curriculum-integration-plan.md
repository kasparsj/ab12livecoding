# Curriculum Integration Plan: ndr-brt / sc-adente Studies

## Integration Strategy

Add ndr-brt material in two layers:

1. **Core-course enrichments** - short case-study boxes, mini-exercises, and optional demonstrations for relevant course modules.
2. **Optional study track** - a separate artist-code sequence for intermediate students working from real livecoding repertoire.

The core path stays focused, and instructors get a clear route into deeper
artist-code study.

## Module Fit

| Course area | Current focus | ndr-brt addition | Source study modules | Tidal teaching files |
| --- | --- | --- | --- | --- |
| Starting patterns and rhythm | Pattern start/stop, rhythm syntax, transformations, alignment | Artist-dialect sidebar; stable anchor plus transformation-chain lab. | Studies 1, 3, 4 | `ndr-brt-01-dialect-and-transformations.tidal` |
| Musical layers and control | Bass, chords, arpeggios, layers, parameters | One-sample layering lab; melodic-machine extension; custom-parameter and controller translation. | Studies 2, 6, 7, 9 | `ndr-brt-02-one-sample-many-bodies.tidal`, `ndr-brt-04-melodic-machines.tidal`, `ndr-brt-06-control-sieves-and-timbre.tidal` |
| Arrangement and performance | Sections, performance safety, final recording/performance | Boolean/probability rhythm lab; live-set architecture checklist; single-sample capstone option. | Studies 5, 8, 9 | `ndr-brt-03-probability-and-rhythm-logic.tidal`, `ndr-brt-05-live-set-architecture.tidal`, `ndr-brt-06-control-sieves-and-timbre.tidal` |

## Proposed Additions By Repository Area

### Lessons

- Add a short "Case study: sc-adente" note to relevant course modules.
- Add optional challenge blocks rather than replacing beginner material, with the `.tidal` files as the primary teaching surface.
- Add a capstone option: single-sample performance study.

### Examples

Create stock-dense, stock-sample-compatible examples based on the extracted themes:

- `studies/ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal`
- `studies/ndr-brt/tidal/ndr-brt-02-one-sample-many-bodies.tidal`
- `studies/ndr-brt/tidal/ndr-brt-03-probability-and-rhythm-logic.tidal`
- `studies/ndr-brt/tidal/ndr-brt-04-melodic-machines.tidal`
- `studies/ndr-brt/tidal/ndr-brt-05-live-set-architecture.tidal`
- `studies/ndr-brt/tidal/ndr-brt-06-control-sieves-and-timbre.tidal`

Keep examples short, annotated, and runnable without the original sample library
or custom synthdefs.

### Assignments

Add optional extension assignments:

- Transform a stable pattern with `chunk`, `iter`, `jux`, and `degradeBy`.
- Build a one-sample miniature with three derived layers.
- Generate rhythm with boolean/sieve-style thinking or a Markov-inspired melodic pattern.
- Perform a single-sample or limited-material piece with a planned ending.

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

## Scope Boundaries

### Include in course additions

- Transformations using stock Tidal functions.
- Sample slicing/chopping with stock samples.
- Probability, variation, control translation, and performance architecture.
- Simplified Markov/scale mapping as optional material.

### Keep optional or advanced

- Custom SuperCollider synthdefs and Olbos/Mutable-style effects.
- MIDI-to-OSC setup beyond optional stock-control placeholders.
- Original sample pack assumptions.
- Full custom `BootTidal` integration.

## Expected Outcome

After integration, the curriculum includes:

- A real artist-code case study.
- Optional advanced pathways.
- A clearer bridge from classroom exercises to authentic livecoding practice.
- Capstone prompts grounded in actual performance code.
