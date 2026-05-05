# Implementation Plan: Add ndr-brt Studies to the Curriculum

## Guiding principle

Use the original `sc-adente` code as an artist-code research source, then create
stock-dense curriculum examples that run in a standard TidalCycles/SuperDirt
classroom environment.

Do **not** assume students have the original sample library, custom synthdefs, Olbos effects, Mutable UGens, or MIDI devices.

Current completion and live-test status now live in [`status.md`](status.md).
Future additions now live in [`roadmap.md`](roadmap.md).

## Phase 1 - Add study index and references

**Goal:** Make the case study visible without changing the core course sequence.

Tasks:

- [x] Add the ndr-brt track to `studies/README.md`; the root README links to `studies/`.
- [ ] Add a short "Artist-code studies" section to a course index if one is added to this repo.
- [ ] Add `resources/ndr-brt-study-notes.md` with:
  - shortcut vocabulary overview
  - transformation chains
  - probability boundaries
  - single-sample recipe
  - performance checklist
- [ ] Keep all source links in references rather than embedding large excerpts.

Acceptance criteria:

- Required course material remains unchanged for students who ignore the optional study.
- Instructors can find the ndr-brt study plans from the root README and `studies/` index.

## Phase 2 - Create course example files

**Goal:** Convert extracted idioms into runnable, stock-dense examples using stock samples/effects.

Created canonical Tidal-first files in `studies/ndr-brt/tidal/`:

- [x] `studies/ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-02-one-sample-many-bodies.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-03-probability-and-rhythm-logic.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-04-melodic-machines.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-05-live-set-architecture.tidal`
- [x] `studies/ndr-brt/tidal/ndr-brt-06-control-sieves-and-timbre.tidal`

Example constraints:

- Use stock sample names where possible: `bd`, `sn`, `hh`, `cp`, `arpy`, `bass`, `feel`, `breaks125`, `gtr`, etc.
- Avoid custom-only parameters in beginner examples.
- Prefer comments that name the musical role of each line.
- Preserve sc-adente code feel through aliases, local constants, `layer`, and
  dense transformation chains when the result remains stock-compatible.
- Cover advanced gaps with stock-safe `sh`/`so`/`rinse`, sieve-style masks,
  parameter translation, and optional `cF` controller placeholders.
- Include `hush` / cleanup blocks where useful.

Acceptance criteria:

- Each example file can be used as a focused lab.
- Each file contains progressive sections: basic, variation, challenge.
- No example requires the original `sc-adente` private sample pack.

## Phase 3 - Patch lessons with optional case-study blocks

**Goal:** Integrate the study track as optional Tidal-first case-study blocks.

Future tasks:

- [ ] Add a small note about personal shorthand/dialect.
- [ ] Add optional "transformation chain inspired by sc-adente" block.
- [ ] Add "one sample, many bodies" lab reference.
- [ ] Add algorithmic extension for boolean rhythm and Markov-style melody.
- [ ] Add live-set architecture checklist and single-sample capstone option.

Acceptance criteria:

- Optional blocks are labelled as extensions.
- Beginner learning goals remain primary.
- Each block links to one relevant ndr-brt example file.

## Phase 4 - Add assignments and capstone variants

**Goal:** Give students structured ways to use the study materials.

Future tasks:

- [ ] Add optional extension prompts if an assignments folder is added.
- [ ] Add capstone variant if `assignments/final-project.md` is added: "single-sample live set."
- [ ] Add rubric notes for evaluating limited-material pieces:
  - transformation variety
  - structural clarity
  - restraint and control
  - live performance safety

Acceptance criteria:

- Students can choose ndr-brt-inspired work without changing required core outcomes.
- Rubric supports both standard final projects and case-study capstones.

## Phase 5 - Advanced appendices

**Goal:** Preserve advanced material without blocking classroom use.

Potential files:

- [ ] `resources/advanced-custom-synth-parameters.md`
- [ ] `resources/advanced-midi-control.md`

Content boundaries:

- Custom synth parameters from `Parameters.hs` should be explained as environment-specific.
- MIDI setup should be optional and labelled as hardware-dependent.
- Include warnings about gain, distortion, and feedback-heavy effects.

Acceptance criteria:

- Advanced users have a path forward.
- Beginner students are not required to debug custom SuperCollider environments.

## Suggested implementation order

1. Link `studies/ndr-brt/` from `README.md`.
2. Create `resources/ndr-brt-study-notes.md`.
3. Create the stock-dense `.tidal` files. (Done: canonical files live only in `studies/ndr-brt/tidal/` to avoid duplicate teaching copies.)
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
