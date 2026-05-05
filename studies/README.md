# Artist-Code Studies

Optional artist-code study tracks for the TidalCycles curriculum. Each study
pulls reusable techniques from an existing livecoding codebase or archive and
turns them into notes, assignments, and stock-sample `.tidal` files.

These studies do not copy artist set files into beginner lessons. Use them as
intermediate extensions, case-study sidebars, or capstone prompts after the core
course examples are comfortable.

## Study Tracks

| Track | Source | Teaching focus | Start here |
| --- | --- | --- | --- |
| [`ndr-brt/`](ndr-brt/) | [`ndr-brt/sc-adente`](https://github.com/ndr-brt/sc-adente) | Stock-dense personal dialect, transformation chains, one-sample composition, probability, melodic machines, control translation, live-state architecture. | [`ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal`](ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal) |
| [`kindohm/`](kindohm/) | [`kindohm/365tidalpatterns`](https://github.com/kindohm/365tidalpatterns) | Classroom-hybrid daily sketches, transformation menus, sample-index machines, glitch gestures, modulation, section logic, hardware translation. | [`kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal`](kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal) |
| [`remix-performance/`](remix-performance/) | [`lil-data/vroomvroom`](https://github.com/lil-data/vroomvroom) | Remix-performance architecture, named stems, orbit/gain grouping, arrangement states. | [`remix-performance/tidal/remix-performance-skeleton.tidal`](remix-performance/tidal/remix-performance-skeleton.tidal) |
| [`midi-hardware-performance/`](midi-hardware-performance/) | [`kindohm/tidal-meetup-2021-05-08`](https://github.com/kindohm/tidal-meetup-2021-05-08) | Hardware-style rhythm roles, MIDI channels, controller defaults, stock fallbacks. | [`midi-hardware-performance/tidal/midi-controller-performance.tidal`](midi-hardware-performance/tidal/midi-controller-performance.tidal) |
| [`drum-structures/`](drum-structures/) | [`lvm/tidal-drum-patterns`](https://github.com/lvm/tidal-drum-patterns) | `Pattern Bool` drum thinking, `struct` gates, groove-family translation. | [`drum-structures/tidal/drum-structure-atlas.tidal`](drum-structures/tidal/drum-structure-atlas.tidal) |
| [`album-project-organization/`](album-project-organization/) | [`kindohm/expedition`](https://github.com/kindohm/expedition), [`kindohm/risc-chip`](https://github.com/kindohm/risc-chip) | Final-project folders, boot workflow, sample manifesting, production notes, archival hardware constraints. | [`album-project-organization/project-template/README.md`](album-project-organization/project-template/README.md) |

## Study Matrix

| Track | Level | Time | Prerequisites | Main functions | Primary files | Capstone fit |
| --- | --- | --- | --- | --- | --- | --- |
| [`kindohm/`](kindohm/) | Intermediate to advanced | 25-75 min per lab | `sound`, `n`, `gain`, `every`, `slow`, `stack` | `whenmod`, `slowspread`, `foldEvery`, `samples`, `run`, `striate`, `stut`, `trunc`, `scale`, `\|+\|`, `stut'`, `irand` | [`kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal`](kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal), [`kindohm/source-map.md`](kindohm/source-map.md) | Source-style daily performance or archival-helper capstone. |
| [`ndr-brt/`](ndr-brt/) | Intermediate to advanced | 35-80 min per lab | `sound`, `n`, `gain`, `slow`, `fast`, `every`, basic layering | aliases, `sh`, `so`, `rinse`, `chunk`, `iter`, `hurry`, `gap`, `chew`, `layer`, `juxBy`, `degradeBy`, `euclid`, `mask`, `slice`, `chop`, `scale`, `cF` | [`ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal`](ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal), [`ndr-brt/tidal/ndr-brt-06-control-sieves-and-timbre.tidal`](ndr-brt/tidal/ndr-brt-06-control-sieves-and-timbre.tidal), [`ndr-brt/source-map.md`](ndr-brt/source-map.md) | Single-sample live set or limited-material performance. |
| [`remix-performance/`](remix-performance/) | Advanced | 35-55 min | `stack`, `struct`, `orbit`, `gain`, manual arrangement | `p`, `loopAt`, `jux`, `accelerate`, `silence`, `hush` | [`remix-performance/tidal/remix-performance-skeleton.tidal`](remix-performance/tidal/remix-performance-skeleton.tidal), [`remix-performance/source-map.md`](remix-performance/source-map.md) | Remix skeleton with student-owned stems or stock placeholders. |
| [`midi-hardware-performance/`](midi-hardware-performance/) | Intermediate to advanced | 40-60 min | `struct`, `stack`, role naming, conservative gain | `midichan`, `cF`, `cI`, `degradeBy`, `sometimesBy`, `ccn`, `ccv` | [`midi-hardware-performance/tidal/midi-controller-performance.tidal`](midi-hardware-performance/tidal/midi-controller-performance.tidal), [`midi-hardware-performance/superdirt-midi-appendix.md`](midi-hardware-performance/superdirt-midi-appendix.md) | Controller-aware performance with stock fallback first. |
| [`drum-structures/`](drum-structures/) | Intermediate | 35-50 min | Mini-notation, boolean patterns, `struct`, `stack` | `struct`, `stack`, `every`, `inv`, `slow`, `fast`, `silence`, `hush` | [`drum-structures/tidal/drum-structure-atlas.tidal`](drum-structures/tidal/drum-structure-atlas.tidal), [`drum-structures/source-map.md`](drum-structures/source-map.md) | Groove-family atlas or rhythm-translation study. |
| [`album-project-organization/`](album-project-organization/) | Capstone | 45-90 min setup, then ongoing | Track files, sample ownership, cue sheets, project notes | `setcps`, `hush`, `silence`, stock-sample arrangement, documentation workflow | [`album-project-organization/project-template/README.md`](album-project-organization/project-template/README.md), [`album-project-organization/hardware-album-notes.md`](album-project-organization/hardware-album-notes.md) | Final-project scaffold, album notes, or release-readiness packet. |

## Teaching Use

1. Read the track `README.md` and `research-summary.md`.
2. Open the table's "Start here" file. Some tracks start with a `.tidal` file;
   others start with a project-template README.
3. Evaluate one block at a time.
4. Replace missing custom samples with stock SuperDirt names such as `bd`, `sn`,
   `hh`, `cp`, `arpy`, `bass`, `drum`, or `feel`.
5. Treat the `.tidal` files as teaching scripts, not fixed compositions.

## Shared Teaching Aids

- [`shared/artist-code-reading-guide.md`](shared/artist-code-reading-guide.md) - How to move from source code to classroom-safe technique.
- [`shared/sample-fallbacks.md`](shared/sample-fallbacks.md) - Stock sample substitutions and roles.
- [`shared/tidal-version-compatibility.md`](shared/tidal-version-compatibility.md) - Functions that need local version checks.
- [`shared/performance-safety-checklist.md`](shared/performance-safety-checklist.md) - Gain, recovery, endings, and rehearsal checks.
- [`shared/livecoding-library-design.md`](shared/livecoding-library-design.md) - Personal helper-library design principles.
- [`shared/jarmlib-full-integration.md`](shared/jarmlib-full-integration.md) - Optional vendored Jarmlib integration notes.
- [`comparison-prompts.md`](comparison-prompts.md) - Cross-study prompts that compare Kindohm and ndr-brt approaches.
- [`verification.md`](verification.md) - Manual verification table for Tidal/SuperDirt testing.
- [`quality-audit.md`](quality-audit.md) - Current full-study audit, quality bar, and future ideas.
