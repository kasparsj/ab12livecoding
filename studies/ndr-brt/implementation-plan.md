# Implementation Plan: Add ndr-brt Studies to the Curriculum

## Guiding principle

Use the original `sc-adente` code as an artist-code research source, then create simplified curriculum examples that run in a standard TidalCycles/SuperDirt classroom environment.

Do **not** assume students have the original sample library, custom synthdefs, Olbos effects, Mutable UGens, or MIDI devices.

## Phase 1 — Add study index and references

**Goal:** Make the case study visible without changing the core course flow.

Tasks:

- [x] Add a short link from `README.md` to `studies/ndr-brt/`.
- [x] Add a short “Artist-code studies” section to `course-index.md`.
- [x] Add `resources/ndr-brt-study-notes.md` with:
  - shortcut vocabulary overview
  - transformation chains
  - probability boundaries
  - single-sample recipe
  - performance checklist
- [ ] Keep all source links in references rather than embedding large excerpts.

Acceptance criteria:

- Existing 3-week course remains unchanged for students who ignore the optional study.
- Instructors can find the ndr-brt study plans from the course index.

## Phase 2 — Create beginner-safe example files

**Goal:** Convert extracted idioms into runnable examples using stock samples/effects.

Created canonical Tidal-first files in `studies/ndr-brt/tidal/`:

- [x] `studies/ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-02-one-sample-many-bodies.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-03-probability-and-rhythm-logic.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-04-melodic-machines.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-05-live-set-architecture.tidal`

Example constraints:

- Use stock sample names where possible: `bd`, `sn`, `hh`, `cp`, `arpy`, `bass`, `feel`, `breaks125`, `gtr`, etc.
- Avoid custom-only parameters in beginner examples.
- Prefer comments that name the musical role of each line.
- Include `hush` / cleanup blocks where useful.

Acceptance criteria:

- Each example file can be used as a 15–45 minute lab.
- Each file contains progressive sections: basic, variation, challenge.
- No example requires the original `sc-adente` private sample pack.

## Phase 3 — Patch lessons with optional case-study blocks

**Goal:** Integrate the study track into the 3-week course as optional Tidal-first case-study blocks.

Tasks:

- [x] Week 1: add a small note about personal shorthand/dialect.
- [x] Week 2: add optional “transformation chain inspired by sc-adente” block.
- [x] Week 3: add “one sample, many bodies” lab reference.
- [x] Week 3: add algorithmic extension for boolean rhythm and Markov-style melody.
- [x] Week 3: add live-set architecture checklist and single-sample capstone option.

Acceptance criteria:

- Optional blocks are clearly labelled as extensions.
- Beginner learning goals remain primary.
- Each block links to one relevant ndr-brt example file.

## Phase 4 — Add assignments and capstone variants

**Goal:** Give students structured ways to use the study materials.

Tasks:

- [x] Add optional weekly extension prompts to `assignments/weekly-assignments.md`.
- [x] Add capstone variant to `assignments/final-project.md`: “single-sample live set.”
- [x] Add rubric notes for evaluating limited-material pieces:
  - transformation variety
  - structural clarity
  - restraint and control
  - live performance safety

Acceptance criteria:

- Students can choose ndr-brt-inspired work without changing required core outcomes.
- Rubric supports both standard final projects and case-study capstones.

## Phase 5 — Advanced appendices

**Goal:** Preserve advanced material without blocking classroom use.

Potential files:

- [ ] `resources/advanced-custom-synth-parameters.md`
- [ ] `resources/advanced-midi-control.md`

Content boundaries:

- Custom synth parameters from `Parameters.hs` should be explained as environment-specific.
- MIDI setup should be optional and clearly labelled as hardware-dependent.
- Include warnings about gain, distortion, and feedback-heavy effects.

Acceptance criteria:

- Advanced users have a path forward.
- Beginner students are not required to debug custom SuperCollider environments.

## Suggested implementation order

1. Link `studies/ndr-brt/` from `README.md` and `course-index.md`.
2. Create `resources/ndr-brt-study-notes.md`.
3. Create the simplified `.tidal` files. (Done: canonical files live only in `studies/ndr-brt/tidal/` to avoid duplicate teaching copies.)
4. Add optional extension blocks to lesson markdown files.
5. Add optional assignment/capstone prompts.
6. Add advanced appendices only if needed.

## Risk checklist

- [ ] Do not copy long original code blocks into course files.
- [ ] Do not require private samples.
- [ ] Do not require custom synthdefs for beginner examples.
- [ ] Keep artist attribution and GitHub links.
- [ ] Keep code examples short enough to explain in class.
- [ ] Verify example files manually in a standard Tidal environment before assigning them.
