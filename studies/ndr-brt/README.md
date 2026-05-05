# ndr-brt / sc-adente

Course notes and teaching files inspired by [`ndr-brt/sc-adente`](https://github.com/ndr-brt/sc-adente).

The material does not copy the artist's set files into beginner lessons. It
extracts reusable techniques from the `tidal/` codebase and turns them into
stock-compatible studies that keep more of the sc-adente code feel: compact
aliases, local constants, dense transformation chains, `layer`-first
derivation, stock-safe control translation, and rehearsed live-state blocks.

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
| [`tidal/`](tidal/) | Stock-dense `.tidal` files derived from the study plans; start with `ndr-brt-01-dialect-and-transformations.tidal`. |

## Proposed curriculum role

Use these studies as an **artist-code track**:

1. Add short ndr-brt sidebars to the relevant course modules.
2. Use [`tidal/`](tidal/) as the primary teaching surface for intermediate extensions.
3. Teach from companion `.tidal` sketches that translate the original idioms into runnable stock examples.
4. Add one capstone option: “single-sample live set inspired by sc-adente.”

## Tidal Pack

| File | Focus |
| --- | --- |
| [`ndr-brt-01-dialect-and-transformations.tidal`](tidal/ndr-brt-01-dialect-and-transformations.tidal) | Alias vocabulary, transformation chains, and `sh`/`so` gesture helpers. |
| [`ndr-brt-02-one-sample-many-bodies.tidal`](tidal/ndr-brt-02-one-sample-many-bodies.tidal) | One stock sample split into anchor, slow, grain, and shard bodies. |
| [`ndr-brt-03-probability-and-rhythm-logic.tidal`](tidal/ndr-brt-03-probability-and-rhythm-logic.tidal) | Bounded probability, Euclidean gates, masks, and boolean-style rhythm. |
| [`ndr-brt-04-melodic-machines.tidal`](tidal/ndr-brt-04-melodic-machines.tidal) | Generated pitch streams, register roles, and weighted choice. |
| [`ndr-brt-05-live-set-architecture.tidal`](tidal/ndr-brt-05-live-set-architecture.tidal) | Live states, recovery, global color, and planned endings. |
| [`ndr-brt-06-control-sieves-and-timbre.tidal`](tidal/ndr-brt-06-control-sieves-and-timbre.tidal) | `rinse`, sieve-style masks, custom parameter translation, and optional control input. |

## Source repository

- GitHub repo: <https://github.com/ndr-brt/sc-adente>
- Tidal folder: <https://github.com/ndr-brt/sc-adente/tree/master/tidal>
- Key helper files:
  - `tidal/Functions.hs`
  - `tidal/Shortcuts.hs`
  - `tidal/Parameters.hs`
  - `tidal/midi.scd`
