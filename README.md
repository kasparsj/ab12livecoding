# TidalCycles Curriculum Notes

This repository is a teaching workspace for a beginner-to-intermediate
TidalCycles curriculum. It contains source notes, runnable `.tidal` sketches,
quick references, and optional artist-code study tracks.

## Directory Map

| Path | Purpose |
| --- | --- |
| [`lessons/`](lessons/) | Source-backed lesson notes and explanations. |
| [`examples/basics/`](examples/basics/) | Core runnable `.tidal` files for the beginner path. |
| [`examples/topics/`](examples/topics/) | Optional extension labs for rhythm logic, modulation, sampling, effects, and transitions. |
| [`resources/`](resources/) | Quick reference material and function coverage planning. |
| [`studies/`](studies/) | Artist-code study tracks with planning notes and runnable `.tidal` files. |

## Lesson Index

- [01 - CPS vs BPM](lessons/01-cps-vs-bpm.md)
- [02 - Orbits and Patterns](lessons/02-orbits-patterns.md)
- [03 - `$#`](lessons/03-$%23.md)
- [04 - Operators](lessons/04-operators.md)
- [05 - Euclid and Binary Rhythms](lessons/05-euclid-and-binary-rhythms.md)
- [06 - Conditionals](lessons/06-conditionals.md)
- [07 - Multi-User Tidal and Ableton Link](lessons/07-multi-user-ableton-link.md)
- [10 - Alternate Timelines Pattern Model](lessons/10-alternate-timelines-pattern-model.md)
- [20 - Alex McLean: Tidal 2.0 beatMode](lessons/20-tidal-2.0-beatmode.md)

## Example Index

Runnable `.tidal` files that use stock SuperDirt sample names.

### Basics

- [01 - Rhythm](examples/basics/01-rhythm.tidal) - rhythm construction, pattern slots, cycle reset, and clean stops.
- [02 - Chords](examples/basics/02-chords.tidal) - chord names, voicings, bass layers, and arpeggios.
- [03 - Improv](examples/basics/03-improv.tidal) - arrangement states for a short final performance.

### Topic Labs

- [Pattern Mechanics](examples/topics/pattern-mechanics.tidal) - deeper rhythm tools, mini-notation, structure, masks, Euclid, and conditionals.
- [Modulation and Generative Patterns](examples/topics/modulation-generative-patterns.tidal) - scales, chord vocabulary, oscillators, weighted choice, selection, and Markov-style pitch.
- [Sampling and Effects Lab](examples/topics/sampling-and-effects-lab.tidal) - sample slicing, granular tools, envelopes, effects, filters, and gain-safe distortion.
- [Performance Transitions](examples/topics/performance-transitions.tidal) - layers, form, transformations, transitions, fades, and endings.

## Study Index

Artist-code and performance studies for intermediate extensions, sidebars, and
capstone prompts. Start with [the studies README](studies/README.md) for shared
teaching guidance and verification notes.

| Study | Focus | Start here |
| --- | --- | --- |
| [Kindohm / 365 Tidal Patterns](studies/kindohm/) | Classroom-hybrid daily sketches, transformation menus, sample-index machines, glitch gestures, modulation, section logic, and hardware translation. | [kindohm-01-daily-sketch-and-reuse.tidal](studies/kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal) |
| [ndr-brt / sc-adente](studies/ndr-brt/) | Stock-dense personal dialect, transformation chains, one-sample composition, probability, melodic machines, control translation, and live-state architecture. | [ndr-brt-01-dialect-and-transformations.tidal](studies/ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal) |
| [MIDI Hardware Performance](studies/midi-hardware-performance/) | Hardware-style performance architecture, `struct` gates, MIDI channels, controller input, part toggles, and scene changes. | [midi-controller-performance.tidal](studies/midi-hardware-performance/tidal/midi-controller-performance.tidal) |
| [Remix Performance](studies/remix-performance/) | Named parts, stem roles, per-layer routing, and compact remix-performance states. | [remix-performance-skeleton.tidal](studies/remix-performance/tidal/remix-performance-skeleton.tidal) |

## Links

- https://adamrenklint.com/tidalbits/
