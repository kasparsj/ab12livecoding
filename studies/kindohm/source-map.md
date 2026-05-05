# Kindohm Source Map

This map links upstream `kindohm/365tidalpatterns` material to local teaching
translations. The local files preserve technique and avoid requiring Kindohm's
custom sample library.

| Upstream source | Extracted technique | Local teaching file | Local section |
| --- | --- | --- | --- |
| [`readme.md`](https://github.com/kindohm/365tidalpatterns/blob/master/readme.md) | Daily practice archive and custom-sample caveat. | [`README.md`](README.md) |
| [`patterns-001-100/pattern001.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern001.tidal) | Dense single-pattern sketching and transformation reuse. | [`tidal/kindohm-01-daily-sketch-and-reuse.tidal`](tidal/kindohm-01-daily-sketch-and-reuse.tidal) | Sections 1-6. |
| [`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal) | Chained `whenmod`, transformation menu, stacked arrangement. | [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal), [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) | Transformation chain and conditional arrangement. |
| [`patterns-001-100/pattern093.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern093.tidal), [`patterns-101-200/pattern150.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-101-200/pattern150.tidal), [`patterns-401-500/pattern402.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern402.tidal) | `slowspread` transformation menus. | [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal) | Sections 7-8. |
| [`patterns-001-100/pattern050.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern050.tidal), [`patterns-001-100/pattern084.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern084.tidal), [`patterns-201-300/pattern250.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern250.tidal) | Sample family plus sample-index separation using `samples` and `run`. | [`tidal/kindohm-03-sample-index-machines.tidal`](tidal/kindohm-03-sample-index-machines.tidal) | Sections 1-11. |
| [`patterns-001-100/pattern025.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern025.tidal), [`patterns-001-100/pattern040.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern040.tidal), [`functions.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/functions.tidal) | Bounded glitch using `within`, `striate`, `stut`, and `trunc`. | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) | Sections 1-6. |
| [`patterns-001-100/pattern034.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern034.tidal), [`patterns-301-400/pattern325.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern325.tidal), [`patterns-401-500/pattern432.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern432.tidal) | Slow modulation of filter, delay, pan, and timbre controls. | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) | Sections 7-9. |
| [`patterns-201-300/pattern225.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern225.tidal), [`patterns-401-500/pattern453.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern453.tidal) | Periodic replacement, dropouts, and returns. | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) | Sections 9-10. |
| [`scales.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/scales.tidal), [`patterns-401-500/pattern441.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern441.tidal), [`patterns-401-500/pattern443.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern443.tidal) | Scale helpers and MIDI/hardware-stream translation. | [`tidal/kindohm-05-melody-and-hardware-translation.tidal`](tidal/kindohm-05-melody-and-hardware-translation.tidal) | Sections 1-10. |

## Vocabulary Atlas

[`vocabulary-atlas.md`](vocabulary-atlas.md) is the instructor-facing index for
the recurring Kindohm vocabulary. It maps source observations to short
stock-sample teaching translations and points back to the canonical `.tidal`
practice files.

| Atlas card | Upstream source references | Local practice file |
| --- | --- | --- |
| Daily sketch practice | `readme.md`, `patterns-001-100/pattern001.tidal`, `patterns-301-400/pattern365.tidal` | [`tidal/kindohm-01-daily-sketch-and-reuse.tidal`](tidal/kindohm-01-daily-sketch-and-reuse.tidal) |
| Transformation chains | `patterns-001-100/pattern001.tidal`, `patterns-101-200/pattern125.tidal`, `patterns-301-400/pattern365.tidal` | [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal) |
| `slowspread` transformation menus | `patterns-001-100/pattern093.tidal`, `patterns-101-200/pattern150.tidal`, `patterns-401-500/pattern402.tidal` | [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal) |
| Sample-index machines | `patterns-001-100/pattern050.tidal`, `patterns-001-100/pattern084.tidal`, `patterns-201-300/pattern250.tidal` | [`tidal/kindohm-03-sample-index-machines.tidal`](tidal/kindohm-03-sample-index-machines.tidal) |
| Bounded glitch gestures | `patterns-001-100/pattern025.tidal`, `patterns-001-100/pattern040.tidal`, `functions.tidal` | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) |
| Modulation as motion | `patterns-001-100/pattern034.tidal`, `patterns-301-400/pattern325.tidal`, `patterns-401-500/pattern432.tidal` | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) |
| `whenmod` section logic | `patterns-201-300/pattern225.tidal`, `patterns-301-400/pattern365.tidal`, `patterns-401-500/pattern453.tidal` | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) |

## Cross-Reference Notes

- All upstream paths in this file were verified against a fresh clone during the
  current audit.
- Source code is paraphrased and translated; these files are not reproductions
  of the original patterns.
