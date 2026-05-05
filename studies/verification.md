# Study Verification

Manual verification should happen in the same TidalCycles/SuperDirt setup used
for class.

## Environment

| Field | Value |
| --- | --- |
| TidalCycles version | Not yet verified |
| SuperDirt version | Not yet verified |
| BootTidal file | Not yet verified |
| Sample library | Not yet verified |
| Audio output | Not yet verified |
| Verification date | Not yet verified |

## Manual Test Table

| File | Status | Notes |
| --- | --- | --- |
| `studies/kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal` | Not tested live | Confirm `resetCycles` and stock samples. |
| `studies/kindohm/tidal/kindohm-02-transformer-chains.tidal` | Not tested live | Confirm `foldEvery` and `slowspread`. |
| `studies/kindohm/tidal/kindohm-03-sample-index-machines.tidal` | Not tested live | Confirm `samples` fallback. |
| `studies/kindohm/tidal/kindohm-04-time-effects-and-sections.tidal` | Not tested live | Confirm `within`, `stut`, `trunc`, delay controls. |
| `studies/kindohm/tidal/kindohm-05-melody-and-hardware-translation.tidal` | Not tested live | Confirm `superpiano` fallback. |
| `studies/ndr-brt/tidal/ndr-brt-01-dialect-and-transformations.tidal` | Not tested live | Confirm aliases, `chunk`, `iter`, `gap`, `chew`, `juxBy`, and conservative gain. |
| `studies/ndr-brt/tidal/ndr-brt-02-one-sample-many-bodies.tidal` | Not tested live | Confirm `layer`, `chop`, `slice`, `striate`, and global `all` gestures. |
| `studies/ndr-brt/tidal/ndr-brt-03-probability-and-rhythm-logic.tidal` | Not tested live | Confirm `mask`, `irand`, `degradeBy`, `sometimesBy`, and Euclidean gates. |
| `studies/ndr-brt/tidal/ndr-brt-04-melodic-machines.tidal` | Not tested live | Confirm `scale`, `segment`, `round`, `choose`, and register layering. |
| `studies/ndr-brt/tidal/ndr-brt-05-live-set-architecture.tidal` | Not tested live | Confirm all live states, stock damage gestures, and endings. |
| `studies/remix-performance/tidal/remix-performance-skeleton.tidal` | Not tested live | Confirm sound check, named `p` stems, stock samples, conservative gains, full/breakdown/return states, and cleanup via `silence`/`hush`. |
| `studies/midi-hardware-performance/tidal/midi-controller-performance.tidal` | Not tested live | Confirm stock fallback blocks run without hardware, controller defaults work, optional MIDI comments stay optional, and cleanup via `silence`/`hush`. |
| `studies/drum-structures/tidal/drum-structure-atlas.tidal` | Not tested live | Confirm `struct` sections evaluate independently, stock samples and conservative gains hold, comparison section works, and cleanup via `silence`/`hush`. |
| `studies/album-project-organization/project-template/tracks/00-boot.tidal` | Not tested live | Confirm boot sound check, course `setcps`, recovery block, stock-safe helpers, and cleanup via `silence`/`hush`. |
| `studies/album-project-organization/project-template/tracks/01-title.tidal` | Not tested live | Confirm section-by-section arrangement, stock samples, conservative gains, breakdown/return states, and cleanup via `silence`/`hush`. |
