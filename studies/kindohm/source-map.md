# Kindohm Source Map

This map links upstream `kindohm/365tidalpatterns` material to the local
classroom-hybrid teaching pack. The local files preserve source-shaped density
and technique while avoiding Kindohm's custom sample library and MIDI devices.

| Upstream source | Extracted technique | Local teaching file | Local section |
| --- | --- | --- | --- |
| [`readme.md`](https://github.com/kindohm/365tidalpatterns/blob/master/readme.md) | Daily practice archive and custom-sample caveat. | [`README.md`](README.md), [`tidal/kindohm-01-daily-sketch-and-reuse.tidal`](tidal/kindohm-01-daily-sketch-and-reuse.tidal) | Track overview and startup prompts. |
| [`patterns-001-100/pattern001.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern001.tidal), [`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal) | Dense single-pattern sketching, `jux`/`iter`, modulation, and reusable daily seeds. | [`tidal/kindohm-01-daily-sketch-and-reuse.tidal`](tidal/kindohm-01-daily-sketch-and-reuse.tidal) | Daily seed and performance sketch. |
| [`patterns-001-100/pattern093.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern093.tidal), [`patterns-101-200/pattern150.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-101-200/pattern150.tidal), [`patterns-401-500/pattern402.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern402.tidal) | `slowspread` menus, `foldEvery`, `iter`, and stacked transformation engines. | [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal) | Menu states and dense performance line. |
| [`patterns-001-100/pattern050.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern050.tidal), [`patterns-001-100/pattern084.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern084.tidal), [`patterns-201-300/pattern250.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern250.tidal) | Sample family plus sample-index separation using `samples`, `run`, speed, and stacked scanner roles. | [`tidal/kindohm-03-sample-index-machines.tidal`](tidal/kindohm-03-sample-index-machines.tidal) | Scanner, curated index, and source-style stack. |
| [`patterns-001-100/pattern025.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern025.tidal), [`patterns-001-100/pattern040.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern040.tidal), [`functions.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/functions.tidal), [`patterns-301-400/pattern325.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern325.tidal), [`patterns-401-500/pattern432.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern432.tidal) | Bounded glitch, helper-style `within`/`stut`, filter/delay motion, and cycle-count section logic. | [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal) | Effects helper, dense stack, and arranged return. |
| [`scales.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/scales.tidal), [`patterns-401-500/pattern441.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern441.tidal), [`patterns-401-500/pattern443.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern443.tidal) | Scale helpers and MIDI/hardware-stream translation into stock `d` slots. | [`tidal/kindohm-05-melody-and-hardware-translation.tidal`](tidal/kindohm-05-melody-and-hardware-translation.tidal) | Stream translation and capstone stack. |

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
- Source code is paraphrased and translated; these files are classroom hybrids,
  not reproductions of the original patterns.
