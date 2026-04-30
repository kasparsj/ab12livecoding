# ndr-brt / sc-adente

This folder contains planning documents for adding material inspired by [`ndr-brt/sc-adente`](https://github.com/ndr-brt/sc-adente) to the TidalCycles curriculum.

The goal is not to copy the artist's set files directly into beginner lessons. Instead, these plans extract reusable teaching themes from the `tidal/` codebase and turn them into curriculum-ready studies, examples, assignments, and optional advanced labs.

## Documents

| File | Purpose |
| --- | --- |
| [`research-summary.md`](research-summary.md) | Source-map of the repo material, extracted topics, and representative files. |
| [`curriculum-integration-plan.md`](curriculum-integration-plan.md) | Plan for fitting ndr-brt themes into the existing 3-week course. |
| [`study-module-plans.md`](study-module-plans.md) | Nine themed study modules with outcomes, references, exercises, and deliverables. |
| [`implementation-plan.md`](implementation-plan.md) | Concrete task plan for producing lesson patches, examples, assignments, and references. |
| [`tidal/`](tidal/) | Ready-to-teach `.tidal` files derived from the study plans; start with `00-open-this-first.tidal`. |

## Proposed curriculum role

Use these studies as an **artist-code case study track**:

1. Add short ndr-brt sidebars to each week of the existing 3-week course.
2. Use [`tidal/`](tidal/) as the primary teaching surface for intermediate extensions.
3. Teach from companion `.tidal` sketches that simplify the original idioms into runnable examples.
4. Add one capstone option: “single-sample live set inspired by sc-adente.”

## Source repository

- GitHub repo: <https://github.com/ndr-brt/sc-adente>
- Tidal folder: <https://github.com/ndr-brt/sc-adente/tree/master/tidal>
- Key helper files:
  - `tidal/Functions.hs`
  - `tidal/Shortcuts.hs`
  - `tidal/Parameters.hs`
  - `tidal/midi.scd`
