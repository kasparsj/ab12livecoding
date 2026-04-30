# ndr-brt / sc-adente

Course notes and teaching files inspired by [`ndr-brt/sc-adente`](https://github.com/ndr-brt/sc-adente).

The material does not copy the artist's set files into beginner lessons. It
extracts reusable techniques from the `tidal/` codebase and turns them into
stock-sample studies, examples, assignments, and optional advanced labs.

## Documents

| File | Purpose |
| --- | --- |
| [`research-summary.md`](research-summary.md) | Source notes, extracted topics, and representative files. |
| [`source-map.md`](source-map.md) | Upstream source files mapped to local teaching files and techniques. |
| [`curriculum-integration-plan.md`](curriculum-integration-plan.md) | Plan for fitting ndr-brt themes into the curriculum. |
| [`study-module-plans.md`](study-module-plans.md) | Nine themed study modules with outcomes, references, exercises, and deliverables. |
| [`implementation-plan.md`](implementation-plan.md) | Concrete task plan for producing lesson patches, examples, assignments, and references. |
| [`status.md`](status.md) | Current completion, verification, and open-risk status. |
| [`roadmap.md`](roadmap.md) | Future additions separated from implementation status. |
| [`tidal/`](tidal/) | Ready-to-teach `.tidal` files derived from the study plans; start with `00-open-this-first.tidal`. |

## Proposed curriculum role

Use these studies as an **artist-code track**:

1. Add short ndr-brt sidebars to the relevant course modules.
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
