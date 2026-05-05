# Study Quality Audit

This audit covers every file under `studies/`, with both artist-code study
tracks cross-checked against their upstream GitHub repositories.

Source repos checked:

- <https://github.com/kindohm/365tidalpatterns>
- <https://github.com/ndr-brt/sc-adente/tree/master/tidal>

## Cross-Reference Results

- Reviewed the study files then current under `studies/`, including this audit file.
- Verified the Kindohm source shape: 461 `.tidal` files, five pattern folders,
  `functions.tidal`, and `scales.tidal`.
- Verified the ndr-brt source shape: 165 files under `tidal/`, including
  `compilations/`, `live/`, `practices/`, `published/`, `records/`, `video/`,
  `Functions.hs`, `Shortcuts.hs`, `Parameters.hs`, and `midi.scd`.
- Source maps now make the upstream-to-local teaching translation explicit for
  both tracks.

## Fixed In This Organization Pass

- Added a study matrix to `studies/README.md`.
- Added `source-map.md`, `status.md`, and `roadmap.md` for both artist tracks.
- Added shared teaching aids under `studies/shared/`.
- Added `comparison-prompts.md` for cross-artist study.
- Added `verification.md` for manual Tidal/SuperDirt testing.
- Added metadata headers to every `.tidal` teaching file.
- Corrected the ndr-brt implementation plan so completion status no longer
  refers to missing course-index or assignment files.
- Corrected the Kindohm quantitative scan and included `foldEvery` and
  `sometimesBy`.
- Included the upstream ndr-brt `tidal/compilations/` directory in the research
  summary.

## Per-File Status

| File group | Status |
| --- | --- |
| `studies/README.md` | Navigation, matrix, and shared aids are in place. |
| `studies/shared/` | Reading guide, sample fallbacks, compatibility, and performance safety are in place. |
| `studies/comparison-prompts.md` | Cross-study prompts and capstone variants are in place. |
| `studies/verification.md` | Manual verification table is in place. |
| `studies/kindohm/*.md` | Source summary, source map, plans, status, and roadmap are organized. |
| `studies/kindohm/tidal/*.tidal` | Metadata headers added; live verification still required. |
| `studies/ndr-brt/*.md` | Source summary, source map, plans, status, and roadmap are organized. |
| `studies/ndr-brt/tidal/*.tidal` | Stock-dense revision added; live verification still required. |

## Remaining Verification

- Manually evaluate the `.tidal` files in a standard TidalCycles/SuperDirt setup
  before assigning them.
- Confirm `slowspread`, `foldEvery`, `mask`, `slice`, `gap`, `chew`, and
  `hcutoff` against the exact Tidal version used in class.
- Confirm sample fallbacks for `superpiano`, `feel`, `drum`, `arpy`, and `bass`.

## Quality Bar

Each study file should satisfy these checks before classroom use:

- One musical idea per section.
- Clear anchor, clear transformation, clear recovery path.
- Stock samples by default; custom samples only in cited source discussion.
- No private synthdefs, MIDI devices, or BootTidal assumptions in beginner
  examples.
- Gains remain conservative when using delay, distortion, slicing, stutter, or
  density changes.
- Comments explain what to listen for, not only which function is being used.
- Source references stay as links and short paraphrases, not long copied code.
- Each file ends with a safe cleanup or ending gesture.
