# TidalCycles Curriculum Notes

This repository is a teaching workspace for a beginner-to-intermediate
TidalCycles curriculum. It contains source notes, runnable `.tidal` sketches,
quick references, and an optional artist-code study track based on recurring
ideas from `ndr-brt/sc-adente`.

It is not an application repo: there is no package manifest, build step, or
automated test suite. The main deliverables are Markdown lesson notes and live
coding files meant to be opened in a TidalCycles editor and evaluated one block
at a time.

## Project Status

- The course material is organized and mostly self-contained under `lessons/`,
  `examples/`, `resources/`, and `studies/ndr-brt/`.
- The runnable examples use stock Tidal/SuperDirt names where possible, but some
  optional examples may depend on functions available only in newer Tidal
  versions.
- No local build or validation command exists. Verification is manual: open the
  `.tidal` files in a working TidalCycles environment and evaluate the examples.
- `.omx/` contains local assistant/runtime state and is not part of the course
  material.

## Prerequisites

To run the examples, use a working TidalCycles setup:

- TidalCycles
- SuperCollider
- SuperDirt
- A Tidal-compatible editor workflow, such as VS Code, Pulsar, Emacs, or Vim

Start SuperDirt before evaluating the `.tidal` examples. Keep volume low when
trying effects, distortion, dense layers, or unfamiliar samples.

## Suggested Path

### 1. Timing, Cycles, and Rhythm

Read:

- [`lessons/01-cps-vs-bpm.md`](lessons/01-cps-vs-bpm.md)
- [`lessons/02-orbits-patterns.md`](lessons/02-orbits-patterns.md)

Run:

- [`examples/basics/01-rhythm.tidal`](examples/basics/01-rhythm.tidal)
- [`examples/topics/pattern-mechanics.tidal`](examples/topics/pattern-mechanics.tidal)

Focus on `setcps`, cycles, basic mini-notation, pattern starts, safety commands,
orbits, rests, grouping, sample numbers, and rhythm transformations.

### 2. Pattern Controls, Chords, and Modulation

Read:

- [`lessons/03-$#.md`](lessons/03-$%23.md)
- [`resources/tidal-quick-reference.md`](resources/tidal-quick-reference.md)

Run:

- [`examples/basics/02-chords.tidal`](examples/basics/02-chords.tidal)
- [`examples/topics/modulation-generative-patterns.tidal`](examples/topics/modulation-generative-patterns.tidal)
- [`examples/topics/sampling-and-effects-lab.tidal`](examples/topics/sampling-and-effects-lab.tidal)

Focus on the difference between Haskell function application with `$` and Tidal
control-pattern combination with `#`, then apply that model to notes, chords,
arpeggios, sampling controls, filters, effects, and modulation.

### 3. Operators, Arrangement, and Performance

Read:

- [`lessons/04-operators.md`](lessons/04-operators.md)
- [`resources/function-coverage-map.md`](resources/function-coverage-map.md)

Run:

- [`examples/basics/03-improv.tidal`](examples/basics/03-improv.tidal)
- [`examples/topics/performance-transitions.tidal`](examples/topics/performance-transitions.tidal)

Focus on structure operators such as `#`, `|>`, `|+|`, `|+`, and `+|`, then use
them in arrangement states, transitions, breakdowns, rebuilds, and final
performance templates.

### 4. Optional Artist-Code Study Track

Use the `ndr-brt / sc-adente` study track after students are comfortable with the
core examples:

- [`studies/ndr-brt/README.md`](studies/ndr-brt/README.md)
- [`studies/ndr-brt/tidal/00-open-this-first.tidal`](studies/ndr-brt/tidal/00-open-this-first.tidal)

The track covers personal livecoding dialects, transformation chains,
single-sample composition, probability boundaries, boolean rhythm thinking,
melodic machines, and live-set architecture.

## Directory Map

| Path | Purpose |
| --- | --- |
| [`lessons/`](lessons/) | Source-backed lesson notes and explanations. |
| [`examples/basics/`](examples/basics/) | Core runnable `.tidal` files for the 3-week beginner path. |
| [`examples/topics/`](examples/topics/) | Optional extension labs for rhythm logic, modulation, sampling, effects, and transitions. |
| [`resources/`](resources/) | Quick reference material and function coverage planning. |
| [`studies/ndr-brt/`](studies/ndr-brt/) | Planning notes and runnable `.tidal` files for the optional artist-code study track. |

## Working With the `.tidal` Files

Open one `.tidal` file at a time and evaluate one block at a time. Most files
begin with `hush` so a teaching session can start from silence.

Useful safety commands:

```haskell
hush           -- stop everything
d1 $ silence   -- stop only slot d1
resetCycles    -- reset the shared cycle count
qtrigger       -- start a pattern on the next cycle boundary
```

If a sample name is missing in your local SuperDirt setup, replace it with a
stock sample such as `bd`, `sn`, `hh`, `cp`, `arpy`, `bass`, or `feel`.

## Maintenance Notes

- Keep examples in `examples/basics/` for the core course and
  `examples/topics/` for optional labs.
- Keep the ndr-brt study examples canonical in `studies/ndr-brt/tidal/` to avoid
  duplicate teaching copies.
- When adding lesson material, link to the relevant runnable `.tidal` file so
  teachers can move directly from explanation to practice.
- When adding functions to examples, update
  [`resources/function-coverage-map.md`](resources/function-coverage-map.md).
