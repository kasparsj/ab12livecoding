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
| [`ndr-brt/`](ndr-brt/) | [`ndr-brt/sc-adente`](https://github.com/ndr-brt/sc-adente) | Personal dialect, transformation chains, one-sample composition, probability, melodic machines, live-set architecture. | [`ndr-brt/tidal/00-open-this-first.tidal`](ndr-brt/tidal/00-open-this-first.tidal) |
| [`kindohm/`](kindohm/) | [`kindohm/365tidalpatterns`](https://github.com/kindohm/365tidalpatterns) | Daily sketch practice, transformation menus, sample-index machines, glitch gestures, modulation, section logic, hardware translation. | [`kindohm/tidal/00-open-this-first.tidal`](kindohm/tidal/00-open-this-first.tidal) |

## Study Matrix

| Track | Level | Time | Prerequisites | Main functions | Primary files | Capstone fit |
| --- | --- | --- | --- | --- | --- | --- |
| [`kindohm/`](kindohm/) | Intermediate | 20-60 min per lab | `sound`, `n`, `gain`, `every`, `slow`, `stack` | `whenmod`, `slowspread`, `foldEvery`, `samples`, `run`, `striate`, `stut`, `trunc`, `scale` | [`kindohm/tidal/00-open-this-first.tidal`](kindohm/tidal/00-open-this-first.tidal), [`kindohm/source-map.md`](kindohm/source-map.md) | Daily-pattern performance or five-sketch portfolio. |
| [`ndr-brt/`](ndr-brt/) | Intermediate to advanced | 25-75 min per lab | `sound`, `n`, `gain`, `slow`, `fast`, `every`, basic layering | `chunk`, `iter`, `ply`, `layer`, `superimpose`, `degradeBy`, `euclid`, `mask`, `slice`, `chop`, `scale` | [`ndr-brt/tidal/00-open-this-first.tidal`](ndr-brt/tidal/00-open-this-first.tidal), [`ndr-brt/source-map.md`](ndr-brt/source-map.md) | Single-sample live set or limited-material performance. |

## Teaching Use

1. Read the track `README.md` and `research-summary.md`.
2. Open the track's `tidal/00-open-this-first.tidal`.
3. Evaluate one block at a time.
4. Replace missing custom samples with stock SuperDirt names such as `bd`, `sn`,
   `hh`, `cp`, `arpy`, `bass`, `drum`, or `feel`.
5. Treat the `.tidal` files as teaching scripts, not fixed compositions.

## Shared Teaching Aids

- [`shared/artist-code-reading-guide.md`](shared/artist-code-reading-guide.md) - How to move from source code to classroom-safe technique.
- [`shared/sample-fallbacks.md`](shared/sample-fallbacks.md) - Stock sample substitutions and roles.
- [`shared/tidal-version-compatibility.md`](shared/tidal-version-compatibility.md) - Functions that need local version checks.
- [`shared/performance-safety-checklist.md`](shared/performance-safety-checklist.md) - Gain, recovery, endings, and rehearsal checks.
- [`comparison-prompts.md`](comparison-prompts.md) - Cross-study prompts that compare Kindohm and ndr-brt approaches.
- [`verification.md`](verification.md) - Manual verification table for Tidal/SuperDirt testing.
- [`quality-audit.md`](quality-audit.md) - Current full-study audit, quality bar, and future ideas.
